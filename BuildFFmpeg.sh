#!/bin/bash

printf "\033[33m"
echo "Warning: It is deprecated, but you're welcome to use it anyway."
printf "\033[39m"
PREFIX="$(pwd)/buildffmpeg/prefix"
echo "Note: Your prefix folder with full directory will be built: $PREFIX"
case "$(uname -s)" in
    Linux*)
        OS="Linux"
        DISTRO=$(cat /etc/*release | grep ^ID= | cut -d= -f2 | tr -d '"')
        echo "Building FFmpeg VVCEasy $OS version..."
        echo "Updating and upgrading system packages..."

        case $DISTRO in
            debian|ubuntu)
                echo "Detected Debian/Ubuntu"
                sudo apt update && sudo apt upgrade -y
                echo "Installing dependencies for Debian/Ubuntu..."
                sudo apt install build-essential cmake nasm autoconf pkg-config \
                python3-setuptools ninja-build python3-pip libtool git wget xxd -y
                sudo pip3 install meson
                ;;
            arch)
                echo "Detected Arch Linux"
                sudo pacman -Syu --noconfirm
                echo "Installing dependencies for Arch..."
                sudo pacman -S --noconfirm base-devel cmake nasm autoconf pkg-config \
                python-setuptools ninja python-pip libtool git wget xxd
                sudo pip install meson
                ;;
            fedora)
                echo "Detected Fedora"
                sudo dnf update -y
                echo "Installing dependencies for Fedora..."
                sudo dnf install -y gcc gcc-c++ cmake nasm autoconf pkgconfig \
                python3-setuptools ninja-build python3-pip libtool git wget xxd
                sudo pip3 install meson
                ;;
            gentoo)
                echo "Detected Gentoo"
                sudo emerge --sync
                echo "Installing dependencies for Gentoo..."
                sudo emerge -av dev-util/cmake media-libs/nasm sys-devel/autoconf \
                dev-python/setuptools dev-util/ninja dev-python/pip sys-libs/libtool \
                dev-vcs/git net-misc/wget app-editors/vim
                sudo pip3 install meson
                ;;
            *)
                echo "Unsupported Linux distribution: $DISTRO"
                exit 1
                ;;
        esac
        ;;
    MSYS*|MINGW*)
        OS="Windows"
        extra="--disable-w32threads --enable-libcodec2"
        echo "Building FFmpeg VVCEasy Windows version..."
        echo "Updating and upgrading MSYS2 packages..."
        pacman -Syu
        echo "Installing MSYS2 packages..."
        pacman -S python git nasm vim wget xxd $MINGW_PACKAGE_PREFIX-{toolchain,cmake,autotools,meson,ninja}
        ;;
    *)
        echo "Only for Windows & Linux are only supported"
        exit 1
        ;;
esac

clonepull() {
  if [ ! -d "$1" ]; then
    git clone --depth=1 "$2" "$1"
  else
    git -C "$1" pull
  fi
}

[ ! -d buildffmpeg ] && mkdir buildffmpeg
cd buildffmpeg

[ ! -d prefix ] && mkdir prefix

clonepull FFmpeg-VVC https://github.com/MartinEesmaa/FFmpeg-VVC
clonepull vvenc https://github.com/fraunhoferhhi/vvenc
clonepull vvdec https://github.com/fraunhoferhhi/vvdec
clonepull fdk-aac https://github.com/mstorsjo/fdk-aac
clonepull SDL https://github.com/libsdl-org/SDL -b SDL2
clonepull libxml2 https://github.com/gnome/libxml2
clonepull opus https://github.com/xiph/opus
clonepull libjxl https://github.com/libjxl/libjxl
clonepull zimg https://github.com/sekrit-twc/zimg
clonepull soxr https://github.com/chirlu/soxr
clonepull dav1d https://code.videolan.org/videolan/dav1d
clonepull vmaf https://github.com/netflix/vmaf

if [ $OS = "Windows" ]; then
clonepull codec2 https://github.com/drowe67/codec2
fi

if [ ! -d libjxl ]; then
sed -i 's/-lm/-lm -lstdc++/g' libjxl/lib/jxl/libjxl.pc.in libjxl/lib/threads/libjxl_threads.pc.in
git -C libjxl submodule update --init --recursive --depth 1 --recommend-shallow
fi

if [ ! -d zimg ]; then
git -C zimg submodule update --init --recursive --depth 1
wget https://raw.githubusercontent.com/m-ab-s/mabs-patches/master/zimg/0001-libm_wrapper-define-__CRT__NO_INLINE-before-math.h.patch
git -C zimg apply 0001-libm_wrapper-define-__CRT__NO_INLINE-before-math.h.patch
rm 0001-libm_wrapper-define-__CRT__NO_INLINE-before-math.h.patch
fi

make="make install-r install-prefix=$PREFIX"
autogen="./autogen.sh && ./configure --prefix=$PREFIX --enable-static --disable-shared && make install -j $(nproc)"

cd vvenc && $make && cd ..
cd vvdec && $make && cd ..
cd fdk-aac && $autogen && cd ..
cd libxml2 && $autogen && cd ..
cd opus && ./autogen.sh && CFLAGS="-O2 -D_FORTIFY_SOURCE=0" LDFLAGS="-flto -s" ./configure --prefix=$PREFIX --enable-static --disable-shared && make install -j $(nproc) && cd ..
mkdir -p libjxl/build && cd libjxl/build && cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_{TESTING,SHARED_LIBS}=OFF -DJPEGXL_ENABLE_{BENCHMARK,MANPAGES}=OFF -DJPEGXL_{ENABLE_PLUGINS,FORCE_SYSTEM_BROTLI}=ON -DCMAKE_INSTALL_PREFIX=$PREFIX .. -G Ninja && ninja install && cd ../../
mkdir -p vmaf/libvmaf/build && cd vmaf/libvmaf/build && CFLAGS="-msse2 -mfpmath=sse -mstackrealign" meson -Denable_docs=false -Ddefault_library=static -Denable_float=true -Dbuilt_in_models=true -Dprefix=$PREFIX .. && ninja install && cd ../../../
mkdir -p SDL/build && cd SDL/build && cmake -DCMAKE_EXE_LINKER_FLAGS="-static" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX .. && make install -j $(nproc) && cd ../../
cd zimg && $autogen && cd ..
mkdir -p soxr/build && cd soxr/build && cmake -D{WITH_LSR_BINDINGS,BUILD_TESTS,WITH_OPENMP}=off -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF .. && cmake --build . -j $(nproc) --target install && cd ../../
mkdir -p dav1d/build && cd dav1d/build && meson -Denable_docs=false -Ddefault_library=static -Dprefix=$PREFIX .. && ninja install && cd ../../

sed -i 's/-lm/-lm -lstdc++/g' $PREFIX/lib/pkgconfig/libvmaf.pc

if [ "$OS" = "Windows" ]; then
    cd codec2
    sed -i 's|if(WIN32)|if(FALSE)|g' CMakeLists.txt
    grep -ERl "\b(lsp|lpc)_to_(lpc|lsp)" --include="*.[ch]" | \
                xargs -r sed -ri "s;((lsp|lpc)_to_(lpc|lsp));c2_\1;g"
    mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX -D{UNITTEST,INSTALL_EXAMPLES}=off -DBUILD_SHARED_LIBS=OFF -DCMAKE_EXE_LINKER_FLAGS="-static" .. -G "MinGW Makefiles"
    cmake --build . -j $nproc --target install
    cd ../../
fi

cd FFmpeg-VVC
chmod +x configure
./configure --prefix=$PREFIX --enable-static --pkg-config-flags="--static" --extra-ldexeflags="-static" \
--enable-libfdk-aac --enable-libvvenc --enable-libvvdec --enable-pic \
--enable-libxml2 --enable-libopus --enable-libdav1d --enable-libjxl --enable-libzimg \
--enable-libvmaf --enable-libsoxr --enable-sdl2 $extra --extra-version=VVCEasy && \
make -j
cd ..
echo It is ready to go for prebuilt binaries of FFmpeg-VVC, you need to go directory called FFmpeg-VVC.
echo "- 2024 Martin Eesmaa (VVCEasy, MIT License)"
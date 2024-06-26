![VVCEasy](VVCEasy.png)
![GitHub all releases](https://img.shields.io/github/downloads/MartinEesmaa/VVCEasy/total)
![GitHub](https://img.shields.io/github/license/MartinEesmaa/VVCEasy)
[![Build](https://github.com/MartinEesmaa/VVCEasy/actions/workflows/dotnet.yml/badge.svg)](
https://github.com/MartinEesmaa/VVCEasy/actions/workflows/dotnet.yml)
![GitHub repo size](https://img.shields.io/github/repo-size/MartinEesmaa/VVCEasy)
![GitHub release (release name instead of tag name)](https://img.shields.io/github/v/release/MartinEesmaa/VVCEasy?include_prereleases)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/MartinEesmaa/VVCEasy)
![Matrix](https://img.shields.io/matrix/vvceasy:matrix.org?label=VVCEasy%20Matrix)
![Discord](https://img.shields.io/discord/974611343237869619?label=VVCEasy%20Discord%20Chat)

# VVCEasy (Windows, macOS, Linux, BSD & Android) (by Martin Eesmaa)
VVCEasy is that you don't have to compile or/and coding to encode VVC (known as Versatile Video Codec). Simple, Easy, Encode and Decode.

VVCEasy comes to one-easy command of FFmpeg, VVC Tools, VLC o266player, VVDEC Web Player, Bitmovin VVDec Player, libvvdec and more.

Installation: Go to the releases and download latest version.

Windows source run (Batch-file): VVCEasy.bat

Windows/Mac/Linux source run (Csharp): Bin/Release or Debug/netX.x/VVCEasy.exe (after build of C#), this requires VVCEasy.dll to run console application.

Matrix chat: https://matrix.to/#/#vvceasy:matrix.org

Revolt: https://app.revolt.chat/invite/0Y10qHzP

Discord: https://discord.gg/t54cADTbWW

Reddit's community: https://reddit.com/r/VVCEasy

Lemmy's community of VVC (lemmy.world & lemmy.ml): https://lemmy.world/c/vvc

https://lemmy.ml/c/vvc

Lemmy's community of VVCEasy (lemmy.world & lemmy.ml): https://lemmy.world/c/vvceasy

https://lemmy.ml/c/vvceasy

*Note: Please note for my first language is Estonian and not native with English language. Some my English words might be errors with incomprehensible.*

# All lists

- [Donate to Martin Eesmaa using cryptocurrency](#donate-to-martin-eesmaa-for-an-cryptocurrencies)

- [Tests of VVC videos](#tests-of-vvc-videos)

- [VLC InterDigital VTM VVC Plugin](#vlc-interdigital-vtm-vvc-plugin)

- [FFmpeg VVC En/Decoder & xHE-AAC support](#ffmpeg-vvencdec--xhe-aac-support)

- [MPV libvvdec + xHE-AAC support (Windows x64/Linux/Android only)](#mpv-libvvdec--xhe-aac-support-windows-x64linuxandroid-only)

- [LAVFilters VVC version x64](#lavfilters-vvc-version-x64)

- [Deprecated builds](#deprecated-builds)

- [Compile for VVCEasy](#compile-for-vvceasy)

  - [VVCEasy Batchfile Compile](#vvceasy-batchfile-version-optional-windows-only)

  - [VVCEasy .NET Compile](#vvceasy-net-console-version-optional)

- [Encode/Decode easy](#encodedecode-easy)

- [GUI applications easy](#gui-applications-easy)

- [Hard option](#without-vvceasy-experimental-option-for-professional-coders-other-developers-and-everyone-hard)

- [VVEnc & VVDec compatibility test](#compatibility-results-vvenc-and-vvdec-tested-by-martin-eesmaa)

- [FAQ](#faq-known-as-frequently-asked-questions)

- [Credits & Licenses](#credits--licenses)

# Donate to Martin Eesmaa for a cryptocurrencies

- **BTC (BITCOIN):** 
```
bc1qhf4zu5uythr7vyt2dru73qp0k2rzrx355fsx47yjxc2ueunz8frqxmwap3
```
- **XMR (MONERO):** 
```
46Fk6k3qzhwXpLsDRWo4Uh63DDmwRX7gbL6P3zodAnvnRDr9Psi9uau19nCRQFHbmp3nLR3d5Ve8WRid71nuLZxAGygZ258
```
- **BAT (BASIC ATTENTION TOKEN):** For Brave Browser users only, you can also contribute by supporting me, I'm a verified Brave user on Brave Rewards.

- **Estonian bank account (Luminor Eesti IBAN):** You can donate to me. You have to pay a little network send fees before donate.
```
EE511700017003558571
```

# Tests of VVC videos

You can test Martin Eesmaa's encoded movies of VVC video codec and follow README.txt instructions.

[Tears of Steel VVC](https://mega.nz/folder/64swUYxI#WE5njn2aX6-6fxypNC3gtA)

[Martin Eesmaa's VVC sample videos](https://mega.nz/folder/C5lFhALL#5fRQfHN4ulzdaq-B33WQ7w)

# VLC InterDigital VTM VVC Plugin

I have great news. VLC latest version worked out well of Inter Digital VTM plugins. On o266player, there were some problems on my computer for one reason...

One reason that my Windows 11 operating system won't view video of VVC file on o266player version. On VTM plugins of VLC, now it shows me VVC video good.

Here is a comparison of o266player version and VTM VVC plugins:

Top left and right is o266player by Tencent Cloud.

Bottom left and right is VLC VTM plugins by Inter Digital Inc.

![windows8testbetweno266playerandvtmplugins](https://user-images.githubusercontent.com/88035011/160266040-863aa216-4694-4b2f-9957-4aa5b5a07ec3.png)

***UPDATE of 19/04/2022 00:20 AEST:***

Bug of Inter Digital VTM VLC Plugin:

When you try to play your MPEG-TS or TS file, it will crash with your InterDigital VLC VTM Plugin installed on your VLC Media Player.

Without InterDigital VLC VTM Plugin, playing MPEG-TS or TS file will play fine in your all original plugins (except VLC VTM Plugin) on your VLC Media Player.

# FFmpeg VVENC/DEC & xHE-AAC support

FFmpeg VVC En/Decoder & xHE-AAC supports of Windows, Mac and Linux.

See [FFMPEGVVC.md](FFMPEGVVC.md).

# MPV libvvdec + xHE-AAC support (Windows x64/Linux/Android only)

MPV libvvdec & xHE-AAC supports only of Windows x64, Linux & Android.

The VVC and MP4 mux with VVC codec can be played on MPV libvvdec + xHE-AAC version. Only MP4 mixed with VVC supports seek.

MPV.NET is also only available for Windows.

See [MPV.md](MPV.md).

# LAVFilters VVC version x64

For more information about LAVFilters Windows VVC version.

See [LAVFilters folder](LAVFilters/README.md)

# Deprecated builds

Those deprecated builds were no new commits/codes after one year.

For Bitmovin VVDec Player, see [Bitmovin.md](Bitmovin.md).

For VLC o266player build, see [o266player.md](o266player.md).

# Compile for VVCEasy

### VVCEasy Batchfile Version (optional) (Windows only)

First, before you compile to VVCEasy Batchfile Version, you need Inno Setup to compile VVCEasy.
Inno Setup link: https://jrsoftware.org/isdl.php

Step 1: Clone VVCEasy git and open VVCEasy_compiler.iss
```
cd %userprofile%\Downloads
git clone --depth=1 https://github.com/MartinEesmaa/VVCEasy && cd VVCEasy
VVCEasy_compiler.iss
```

Step 2: Before you compile, please replace example username by your username of LicenseFile, OutputDir and Source. See the image:
![Instructionsofcompilevvceasy](https://user-images.githubusercontent.com/88035011/153736145-a24a1997-1133-4933-8797-de7c62295d1d.png)

Step 3: Once you're replaced of your username, press F9 to compile on your keyboard. After compiling, VVCEasy.exe (Installer) will be on your Downloads folder.
![VVCEasyclickblueplaybutton](https://user-images.githubusercontent.com/88035011/153736303-b0949f5a-5ac5-4123-92c5-305211a8aadc.png)

---

### VVCEasy .NET Console Version (optional)

First, before you compile to VVCEasy .NET Console Version, you need .NET SDK x64 from Microsoft.
Link: https://dotnet.microsoft.com/en-us/download

Step 1: Clone git and cd VVCEasy
```
git clone --depth=1 https://github.com/MartinEesmaa/VVCEasy && cd VVCEasy
```

Step 2: Before you build, make sure to build it. Don't worry, when you build with .NET, it will restore project and build.
```
dotnet build -c Release
```

Step 3: Once building is done, the build folder directory is bin/Release
```
cd bin/Release
```

*Tip: You can run VVCEasy without building.*
```
dotnet run
```

# Encode/Decode (easy)

Before you run VVCEasy.bat or VVCEasy.exe, you need to change from your input video file name into input.mp4 (for example)
Follow the instructions, the commands will give you options. From 21 October 2021 to 23 June 2022, VVCEasy was pre-release, but it's construction mode and you can have look with .BAT source code.

Since 23 June 2022, VVCEasy was initial released on v1.0.0.

To encode/decode, please see the GUI applications.

-   Martin Eesmaa

# GUI applications (easy)

If you're not familiar for using CLI, you can use GUI with application window for ease use and without typing commands on your terminal.

These VVC programs of encode/decode are listed:

* [FastFlix](https://github.com/cdgriffith/FastFlix) (Note: You might need to download my custom FFmpeg builds for encoding/decoding VVC using external libraries, rename to ffmpeg.exe and ffprobe.exe from my custom names only, no ffplay executable file required) (created by Chris Griffith)

* [VVC-GUI-Encoder](https://github.com/Disa-Kizonda/VVC-GUI-Encoder) (only encoder) (created by Disa Kizonda)

* [aVVCator](https://github.com/gianni-rosato/aVVCator) (only encoder & Linux only) (created by Gianni Rosato)

* [VVenCguiEx](https://github.com/rigaya/VVenCguiEx) (original Japanese language only for instructions and application (you can still translate), only encoder & Windows only, requires Aviutl) (this may be medium or hard) (created by rigaya)

* [VVConvert](https://vvconvert.app/) (only encoder, encodes to VVC raw bitstream from any FFmpeg compatible video codecs, requires FFmpeg to open input video files) (created by Alec Carter) ([source code](https://github.com/alectr0/VVConvert))

# Without VVCEasy, experimental option for professional coders, other developers, and everyone (hard)

You need 7-Zip (requires ffmpeg and ffplay), ffmpeg, ffplay, vvenc/vvdec(app).

Here are the links:
FFMPEG/FFPLAY: https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-full.7z (go to bin folder and extract two files of ffmpeg and ffplay)
VVENC/VVDEC (Windows, Mac and Linux):
Windows: https://github.com/MartinEesmaa/VVCEasy/blob/master/WindowsVVC/WindowsVVC.7z
Mac: https://github.com/MartinEesmaa/VVCEasy/tree/master/MacOSVVC/MacOSVVC.7z
Linux: https://github.com/MartinEesmaa/VVCEasy/blob/master/LinuxVVC/LinuxVVC.7z

Before we start, you need to make path environments for ffmpeg, ffplay and vvenc/vvdec to make easily.
In Command Prompt (Windows):

```
set PATH=%PATH%;C:\Users\blah\Downloads\VVCEasy\Executables
```
Verify path using Windows Command Prompt/Windows Terminal (CMD):
```
path
```

First:
Transcode any video formats to YUV/Y4M

**We recommend that you use from video to yuv/y4m for pixel format YUV420P, because YUV420P is smaller size than YUV420P10.**

**VVENC only supports pixel formats of YUV420 (8-bit) and YUV420_10 (10-bit), otherwise it will corrupt after vvc encoding.**

For YUV transcode (lossy from web quality, YouTube videos and others):
```
ffmpeg -i input.mp4 -pix_fmt yuv420p inputtranscode.yuv
```

For Y4M transcode (lossless from uncompressed video files, only 8 bit):
```
ffmpeg -i input.mp4 -pix_fmt yuv420p inputtranscode.y4m
```

Verify uncompressed video using FFplay before encode to VVENC (important add video size after the input file, else it will not correctly show video like scrambled eggs video):
```
ffplay inputtranscode.yuv -video_size 1280x720
``` 

Default pixel format of ffplay for yuv and y4m is yuv420p without `-pix_fmt` command.

For y4m, replace `-i inputtranscode.yuv` with `-i inputtranscode.y4m`. In `-c:v wrapped_avframe` for y4m only, so you can verify to play Y4M (wrapped_avframe) for VLC, FFplay or MPV player. For yuv420p10 on your input video 10 bits, add `-pix_fmt yuv420p10`.

Playing FFplay for y4m video with wrapped_avframe, you don't need to put anything commands, just simple play this:

```
ffplay transcoded.y4m
```

For easy to verify YUV/Y4M, use YUView, open your YUV or Y4M encoded, make sure video size, YUV/Y4M format and frame rate same like from input video file (e.g., MP4, AVI, MKV and others).

After verifying correctly of your YUV/Y4M video
Encode with VVENC (Simple settings, example)
```
vvencapp -i out.yuv -s 854x480 -r 30 -o vvc.266
```
`-s` means video size, `-r` means frame per second and `-o` means output. Note: (Simple) as Default settings is YUV420P (8-bit)

TIP: You could do the alternative without taking much disk space for uncompressed video (Y4M, recommended):

```
ffmpeg -i example.mp4 -pix_fmt yuv420p -f yuv4mpegpipe - | vvencapp --y4m -i - --preset medium --qp 35 -o converted.266
```

**PRO TIP: VVENC can detect your fps and video size for y4m file format, so you don't need to insert video size and frame per second of vvenc.**

**WARNING of vvenc pipe: VVENC does not support two-pass mode only when using pipe call/read from FFmpeg to vvenc.**

Or you could do legacy of YUV pipe video:

```
ffmpeg -i example.mp4 -pix_fmt yuv420p -f rawvideo - | vvencapp -i - -s 1920x1080 -r 25 --preset medium --qp 35 -o converted.266
```

**WARNING: If you encode from yuv/y4m of your frame rate is 11.988, 14.985, 23.976, 29.970 or 59.940 FPS, replace this command -r by --fps.**

11.988 fps = `--fps 12000/1001`

14.985 fps = `--fps 15000/1001`

23.976 fps = `--fps 24000/1001`

29.970 fps = `--fps 30000/1001`

59.940 fps = `--fps 60000/1001`

The default of VVENC: Quantization Parameter is 32 and preset is medium.

If you want to get smaller video size and lossy video, add `--qp 38`. (For web video or anything)

If you want to get lossless video without losing quality (visually lossless, minimum loss quality), use QP 16-19 and preset slow (optional slower). (Recommended for movies, camera footage or anything)

Lossy video/Smallest video size:
```
vvencapp --qp 38 -i out.yuv -s 854x480 -r 30 -o vvc.266
```

**NOTE 1: If you want to have true lossless on your video, please use H.264 Lossless video codec or VVC with vvencffapp command of CostMode Lossless**

**NOTE 1.1: In vvencffapp application, you can add command `--CostMode lossless`. Y4M accepts chroma subsampling 420 only, but YUV accepts 400, 420, 422 and 444.**

True lossless video of 8-bit and 10-bit 4:2:0:
```
vvencffapp -i test.y4m --CostMode lossless -qpa 1 -b test.266
```

Visually lossless video (or compress smaller than preset slow, use --preset slower):
```
vvencapp --qp 18 -i out.yuv -s 854x480 -r 30 --preset slow -o vvc.266
```

For Apple macOS and Linux terminal users: Command with `./vvencapp`

For Windows Users using Windows PowerShell: Command with `.\vvencapp`

Encode with VVENC (Best settings (visually lossless), replace video size (`-s`), frame rate (`-r`) and maximize threads of your cores (`--threads`), example) (Minimum loss quality) If you want true lossless video, use H.264 Lossless video codec or VVC with vvencffapp command of CostMode Lossless. (Necessary make smaller file (slower) than preset slow, use `--preset slower`)
```
vvencapp --qp 18 -i out.yuv -s 854x480 -r 30 --preset slow --threads 16 --tier high -o EXTREME.266
```

NOTE: It is acceptable only for encoding to .h266, .266 and .vvc file container.

Note to 10-bit YUV users: If you encode YUV 10 bit to VVC file, add `-c yuv420_10` before you type the ending word of -o EXTREME.266.

Note to 8-bit Y4M users: It's only from input video (8-bit) to Y4M (8 bit)

After encoding VVC, you can play using my custom VVCEasy build of [FFmpeg](https://github.com/MartinEesmaa/VVCEasy/blob/master/FFMPEGVVC.md), [VLC](https://github.com/MartinEesmaa/VVCEasy/tree/master/INSTALLVLCPLUGIN) or [MPV](https://github.com/MartinEesmaa/VVCEasy/blob/master/MPV.md).
Drag your video file of .h266, .266 or .vvc to play.

If you are still not happy about VVC (known as Versatile Video Coding), that you think is too hard to encode and decode, use AOMEDIA ONE (AV1) that is recommended for most users to easily play VLC Media Player and others. VVC should need played on VLC Media Player in future.

# Compatibility results (VVENC AND VVDEC) TESTED BY MARTIN EESMAA

Windows (vvencapp):
![WindowsVVENCDEC](https://user-images.githubusercontent.com/88035011/145812753-eddf04c5-1a10-4892-9118-7478735b1475.png)

Mac (./vvencapp):
![MacOSterminal12](https://user-images.githubusercontent.com/88035011/146367066-1fbfcf2a-8e1f-470c-8701-c3ec8c2b9701.png)

Linux (./vvencapp):
![UbuntuVVENCDEC](https://user-images.githubusercontent.com/88035011/145812781-9a270e03-0dc0-47e6-95ad-4316757d3435.png)

# FAQ (known as Frequently Asked Questions)

Before you ask any question, please see the questions below.

Are you the real creator of VVCEasy?

Yes... but I'm not a real creator of VVC, I didn't built VVC, it was Fraunhofer HHI that he built VVC.

Are you trying to work build of VVCEasy?

Well, yes... it takes longer time to make VVCEasy easier, but VVCEasy is not yet finished until further/update announcement. I don't have employees, so I'm the only one worker.

Is it okay to bring my proof screenshots of errors?

Yes, you can bring error screenshots for your proof. More proof, easy to solve it.

My question is not listed on FAQ. Can I ask any question to you?

Sure, just go to Issues tab, ask questions or/and give your issue to me, I'd be happy to solve :).

Do you know what you have skills in your programming?

I know about batch file and HTML programming. Some hard programming languages might be difficult for me :/.
Update of 19th February 2022: Maybe I should make C# Console program, that will be easy for Windows, Mac and Linux multi support.

If you have any questions or/and any issues, please go to Issues tab and create your issue.

Or you can chat us: https://matrix.to/#/#vvceasy:matrix.org
-   Martin Eesmaa

# Credits & Licenses

[VVCEasy](https://github.com/MartinEesmaa/VVCEasy) - VVCEasy is easy VVC, that no need to compile. 

License: MIT

© 2021-2024 [Martin Eesmaa](https://github.com/MartinEesmaa) (All rights reserved)

---

[Versatile Video Encoder](https://github.com/fraunhoferhhi/vvenc) - Fraunhofer Versatile Video Encoder (VVenC)

[Versatile Video Decoder](https://github.com/fraunhoferhhi/vvdec) - Fraunhofer Versatile Video Encoder (VVdeC)

[Versatile Video Decoder Web Player](https://github.com/fraunhoferhhi/vvdecWebPlayer) - A minimal proof-of-concept VVC player for the web using WebAssembly

License: BSD 3-Clause Clear License (all of three repositories)

© 2018-2024, Fraunhofer-Gesellschaft zur Förderung der angewandten Forschung e.V. & The VVC Authors. (All rights reserved)

GitHub: [Fraunhoferhhi](https://github.com/fraunhoferhhi)

---

[VLC VTM Decoder Plugin](https://github.com/InterDigitalInc/VTMDecoder_VLCPlugin) - VVC decoder plugin for VLC based on a multithreaded VTM

[VLC Original Version](https://code.videolan.org/videolan/vlc) - VLC Media Player

License: GPL Version 2 (VLC Original version) & LGPL-2.1 (VLC VTM Decoder Plugin)

© 2000-2024 [VLC Media Player](https://code.videolan.org/) Developers (All rights reserved)

© 2021-2023 [Inter Digital Inc](https://github.com/InterDigitalInc) (All rights reserved)

---

[uvg266](https://github.com/ultravideo/uvg266) - An open-source VVC encoder based on Kvazaar

License: BSD 3-Clause License

© 2021-2023, Tampere University, ITU/ISO/IEC, project contributors (All rights reserved)

---

[BitMovin Versatile Video Decoder Player](https://github.com/bitmovin/vvDecPlayer) - BitMovin VVDecPlayer

License: MIT

© 2021-2022 [Christian Feldmann](https://github.com/ChristianFeldmann) (All rights reserved)

---

[FFmpeg](https://github.com/FFmpeg/FFmpeg) - Mirror of https://git.ffmpeg.org/ffmpeg.git

VVC developers & forkers: [Christian Lehmann](https://github.com/lehmann-c), [tbiat](https://github.com/tbiat), [Isabelle Santin](https://github.com/IsaMorphic) & [Martin Eesmaa](https://github.com/MartinEesmaa)

License: LGPL-2.1+ & GPL-2.0+

For my custom build configuration license is LGPL-2.1.

© 2000-2024 [FFmpeg developers](https://github.com/FFmpeg) (All rights reserved)

---

[fdk-aac](https://github.com/mstorsjo/fdk-aac) - A standalone library of the Fraunhofer FDK AAC code from Android.

License: None

© 2012-2023 [Martin Storsjö](https://github.com/mstorsjo) (All rights reserved)

---

[mpv](https://github.com/mpv-player/mpv) - 🎥 Command line video player

License: LGPL-2.1+ & GPL-2.0+

For my custom build license: GPL-3.0+ with nonfree (fdk-aac) for FFmpeg

© 2013-2024 [Vincent Lang, MPlayer, mplayer2 & MPV developers](https://github.com/mpv-player) (All rights reserved)

---

[mpv-android](https://github.com/mpv-android/mpv-android) - #mpv-android @ libera.chat

VVC developer & forker: [tbiat](https://github.com/tbiat) & [Martin Eesmaa](https://github.com/MartinEesmaa/mpv-android-vvc)

License: MIT

© 2016-2024 Ilya Zhuravlev, sfan5 & mpv developers (All rights reserved)

---

[GPAC/MP4BOX](https://github.com/gpac/gpac) - Modular Multimedia framework for packaging, streaming and playing your favorite content.

License: LGPL-2.1

© 2003-2024 [Jean Le Feuvre](https://github.com/jeanlf) & [GPAC developers/contributors](https://github.com/gpac/gpac/graphs/contributors) (All rights reserved)

---

[LAVFilters](https://github.com/Nevcairiel/LAVFilters) - LAV Filters - Open-Source DirectShow Media Splitter and Decoders

License: None

© 2010-2023 [Hendrik Leppkes](https://github.com/Nevcairiel) (All rights reserved)

---

[MPC-HC](https://github.com/clsid2/mpc-hc/) - Media Player Classic (forked by clsid2)

License: GPL-3.0

© 2007-2018 [MPC-HC Community Forum & contributors](https://github.com/mpc-hc) (Original) (All rights reserved)

© 2018-2024 [clsid2](https://github.com/clsid2) (forked) (All rights reserved)

---

[7-Zip](https://sourceforge.net/projects/sevenzip/files/7-Zip/) - 7-Zip is a file archiver with a high compression ratio.

Official website: https://7-zip.org

License: LGPL-2.1-or-later with unRAR restriction & LZMA SDK in the public domain

© 1999-2023 Igor Pavlov (All rights reserved)

---

[wget](https://git.savannah.gnu.org/cgit/wget.git) - GNU Wget is a free software package for retrieving files using HTTP, HTTPS, FTP and FTPS, the most widely used Internet protocols.

License: GPL-3.0-or-later

Original written by Hrvoje Nikšić

© 2015 Free Software Foundation, Inc. (All rights reserved)
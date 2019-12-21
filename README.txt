Vulkan translation for Path of Exile
Use at your own risk.

Please also read README.TXT in the specific patches as they have slightly different usage

Versions of DXVK:
ASYNC - 1.4.5 - older version with async patch taken from gloriuseggroll proton build
Source: https://github.com/GloriousEggroll/proton-ge-custom

Latest - 1.5  - latest available version with some improvements, but without ASYNC patch
Source: https://github.com/doitsujin/dxvk


I am providing both as some people are reporting better perfomance with one than with the other

Installation instructions:

Choose version, and copy all files from  within async/32bit/* or async/64bit/* (according to your windows version) to your game directory , and run config.bat
Default locations:
Stand alone:  C:\Program Files (x86)\Grinding Gear Games\Path of Exile
Steam:  C:\Program Files (x86)\Steam\steamapps\common\Path of Exile

Please note, it is not possible (or at least I did not find a way), how to force 64 bit windows to use 32bit libraries. 
Therefore if you copy 32bit files on 64bit windows, the game will still run in DX11 mode.

If correctly installed, you would see DXVK line in top left corner in game.

What is shader sache:

Each time you see a new effect like skill, mtx, location and so, vulkan needs to compile it. The result is saved on disk and next time you see the same effect, it would not to be compiled again and read from disk instead. The compiling of these is what causes game to stutter. Therefore having a cache is beneficial for performance. However cache can be invalidated by driver (either due to driver update or resource constraints) between game sessions and all shaders have to be compiled again.  The shader cache state saving allows to save information about already performed compilation from the past, so even if the cache is invalidated, it will automatically compile it again during start of the application on background, hence the game will stutter for little while on launch in such case. However the effectivity depends from game to game, and I did not arrived to conclusion if this is worth for PoE or not, hence I include possibility to disable it.

Uninstalling:
Remove d3d11.dll and dxgi.dll from the game folder.

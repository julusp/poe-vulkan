Vulkan translation for Path of Exile
Use at your own risk.

Please also read README.TXT in the specific patches as they have slightly different usage

Versions of DXVK:
1.2.1 - older version with poe specific patches which should improve performance
Source: https://github.com/jomihaka/dxvk-poe-hack

1.5  - latest available version with lot of imporevements
Source: https://github.com/doitsujin/dxvk


I am providing both as some people are reporting better perfomance with one than with the other

Installation instructions:

Choose version, and copy all files from  within <version>/32bit/* or <version>/64bit/* (according to your windows version) to your game directory.
Default locations:
Stand alone:  C:\Program Files (x86)\Grinding Gear Games\Path of Exile
Steam:  C:\Program Files (x86)\Steam\steamapps\common\Path of Exile

Please note, it is not possible (or at least I did not find a way), how to force 64 bit windows to use 32bit libraries. 
Therefore if you copy 32bit files on 64bit windows, the game will still run in DX11 mode.

What is Cache:

Each time you see a new effect, vulkan needs to compile it. With cache enabled, the result is saved on disk and next time you see the same effect, it would not to be compiled again and read from disk instead. However as these are saved, it can create stutter (FPS drop) each time you see something new. Upside is,  these effects are saved therefore once you see almost every effect/mtx/boss/location... , you should have mostly smooth ride.

With disabled cache, the effects are saved only in the memory, and they will not be saved on disk. This means the stuttering will not be so bad, but the real experience with disabled cache depends on your HW. Some users are reporting much better experience with cache disabled, so I am including both ways to run each DXVK version (more in the respective README file in the dxvk version folder). Note, it is not possible to disable  cache for steam without setting global, systemwide variable (which requires restart of computer, so not including)

Note: Driver update will break the cache

Uninstalling:
Remove d3d11.dll and dxgi.dll from the game folder.

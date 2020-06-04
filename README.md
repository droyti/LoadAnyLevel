# LoadAnyLevel
A mod for The Walking Dead: The Telltale Definitive Series that lets you load any level in the game on boot. 

This mod currently only works with The Walking Dead: The Telltale Definitive Series. It's also highly recommended that you back up your `WDC_pc_Boot_data.ttarch2` file! If you don't, you'll need to delete & verify or reinstall the game in order to return it to its original state!

## Installation

1. Download the mod from https://github.com/droyti/LoadAnyLevel/releases.

2. Extract the zip into your game's root folder (where `WDC.exe` is located)

3. Run the `.bat` file and the rest happens automagically!

For the visual learners, here's a tutorial on how to install the mod in video form :)

[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/l8BuY8M916I/0.jpg)](https://www.youtube.com/watch?v=l8BuY8M916I)

## Manual Installation

1. Unpack `WDC_pc_Boot_data.ttarch2` using ttarchext. DO NOT use the `-m` or `-k` arguments!

2. Replace the original `Boot.lua` with the modified `Boot.lua`

3. Repack `WDC_pc_Boot_data.ttarch2` using ttarchext. Replace the original `WDC_pc_Boot_data.ttarch2` with this modified version.

4. Drag `LoadLevelScript.lcfg` into your game's root folder and you're ready to go!

## Usage

The first two lines of `LoadLevelScript.lcfg` dictate the behaviour of the modification. The default configuration is as follows:

```
Menu
Menu_Main
```

The first line represents the data pack (or episode), and the second line represents the scene script to load. For example, this is how to load the "Take Us Back" finale scene from 404.

```
WalkingDead404
BoardingSchoolExteriorGate
```

`LoadLevelScript.lcfg` contains a list of the valid levels for Seasons 1 - 4, excluding Michonne. You can also load scenes from outside of these archives, although none are listed in the file.

## Support

If you like this project and want to support it, subscribe to my YouTube channel! It's free & every new subscriber counts. I post updates about my mods there, too!

https://www.youtube.com/channel/UCkUagfXeOtYZk735Plb7S0A

Made with 🖤 by Violet. (C) 2020

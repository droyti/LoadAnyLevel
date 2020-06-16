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

1. Unpack `WDC_pc_Boot_data.ttarch2` & `WDC_pc_Menu_data.ttarch2` using ttarchext. DO NOT use the `-m` or `-k` arguments!

2. Replace the original lua files with the modded lua files in their respective archives.

3. Repack `WDC_pc_Boot_data.ttarch2` & `WDC_pc_Menu_data.ttarch2` using ttarchext. Replace the original files with these modified versions.

4. Drag `LoadAnyLevel.ini` into your game's root folder and you're ready to go!

## Usage

By defualt, the game will open as usual, simply skipping the title screen. A new menu will be present that allows you to pick & choose levels to load from a list.

If you would like to emulate the functionality of v1, open `LoadAnyLevel.ini`. It contains settings that allow this functionality to be emulated - for example, the following configuration would load directly into the end of 404.

```
[boot]
overrideBootSequence=true
archiveToLoad=WalkingDead404
scriptToLoad=BoardingSchoolExteriorGate
```

## Support

If you like this project and want to support it, subscribe to my YouTube channel! It's free & every new subscriber counts. I post updates about my mods there, too!

https://www.youtube.com/channel/UCkUagfXeOtYZk735Plb7S0A

Made with 🖤 by Violet. (C) 2020

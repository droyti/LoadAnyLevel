# Load Any Level
A mod for The Walking Dead: The Telltale Definitive Series that lets you load any level in the game.

This mod currently only works with The Walking Dead: The Telltale Definitive Series.

## Installation

### Version 4 and above

1. Download the mod from https://github.com/droyti/LoadAnyLevel/releases.

2. Extract the zip into your game's root folder (where `WDC.exe` is located)

### Version 3 and below

> #### Warning: Before installing, it's hihgly recommended that you back up your `WDC_pc_Boot_data.ttarch2` and `WDC_pc_Menu_data.ttarch2` files! If not, and you wish to uninstall the mod, you'll have to delete these archives & verify your installation!

1. Download the mod from https://github.com/droyti/LoadAnyLevel/releases.

2. Extract the zip into your game's root folder (where `WDC.exe` is located)

3. Run the `.bat` file and the rest happens automagically!

#### Manual Installation - Version 3 and below

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

## Known Issues

This style of Telltale mod is quite new and was created without documentation! As such, there are a few known issues that are currently being worked out - none quite game breaking, but worth noting nonetheless.

Sometimes there are display issues with the Load Any Level menu - this can (usually) be fixed by simply scrolling up or down, or using the arrow keys / D-pad. If that doesn't solve it, a simple restart of the game will.

![Example of display issue](https://i.imgur.com/xxI7gsL.png)

## Support

If you like this project and want to support it, subscribe to my YouTube channel! It's free & every new subscriber counts. I post updates about my mods there, too!

https://www.youtube.com/channel/UCkUagfXeOtYZk735Plb7S0A

Made with 🖤 by Violet. (C) 2020

# GeneralHealthBots.ahk v.2.2.0.4
This is not a finished script, and reworks may occur everywhere until this sentence disappears.
This is a small script for setting independent reminders to drink and switch from a sitting to a standing working position and back. Originally, this was only intended to be a locally run analogue of the [Stay_Hydrated_Bot](https://www.twitch.tv/stay_hydrated_bot/about) on twitch. 
However, as I am myself suffering from a bad posture as a result of way too much time hunched over in front of a pc, this script will double as a reminder to regularly stand up and sit down again as well. Both bots can be used completely independent of each other.

## Overview 1
![alt text](https://github.com/Gewerd-Strauss/GeneralHealthBots.ahk/blob/main/Github%20Help%20Pictures/SHB_Submenu_Overview2.jpeg?raw=true)

## Open Script Folder

Pretty self-explanatory, this opens the folder containing all files related to this script. The files within and names of the folders "FileVersions","GeneralHealthBots", as well as the scripts "GeneralHealthBot" and "Updater" should not be changed personally, or stuff is guaranteed to break.


## Help
Go to this documentation, report a bug directly on GitHub or check for updates. 

Note that for the upates to be installed properly, one cannot change any of the files and filestructure within the folder this script resides in, neither the subfolders _FileVersions_ and _GeneralHealthBots_. As a rule of thumb, don't edit, move, remove any include- or _FileVersions_-file, and you should be good to go. Pre-update backups are not implemented yet, and that will depend on wether or not I find the time to implement it. In addition, the file _updater.ahk_ shouldn't be changed/moved/etc either.


## Reload
Restarts all bots and reloads settings from file. 

## Start at boot
Create or remove a shortcut in the Autostart-folder. Note that this is currently only working in Windows 10, as the startup folder is at different locations in other versions, and the respective code is not (yet) implemented. I am not sure it will ever be.


## Overview 2
![alt text](https://github.com/Gewerd-Strauss/GeneralHealthBots.ahk/blob/main/Github%20Help%20Pictures/SHB_Submenu_Overview1.jpeg?raw=true)

## Settings
![alt text](https://github.com/Gewerd-Strauss/GeneralHealthBots.ahk/blob/main/Github%20Help%20Pictures/SHB_Submenu_Settings_ActiveBackup.jpeg?raw=true)
![alt text](https://github.com/Gewerd-Strauss/GeneralHealthBots.ahk/blob/main/Github%20Help%20Pictures/SUB_Submenu_Settings_Othr_StandUpBot.jpeg)

The sections "Active" and "Backup" can be edited, the section "Original" can not be edited and only serves as a simple way of retrieving the factory-default settings. 
Only the "Active" settings are used. 
Pressing _Swp_ will interchange all settings between the active and backup set for that respective bot, and restarts said timer. 
Pressing _Res_ will reset all settings to factory default. Note that factory-default is not the same as the "Original"-settings in the third set. Those are reserved for restoring by hand. 
___
1. Insert (full) File Path of Audiofile
   
   Mp3- and WAV-files are possible, although wav-files may not work depending on path length. If the full path to the .wav-file is greater than 127 characters, the bot's cannot use that file. However, that is checked for the path, so the user is notified if that is the case. In that case, either move the audiofile and possibly script to a different location to ensure a shorter pathlength or choose a different file. 

2. Set default reminder time in minutes
   
   This is the time between each reminder, given in minutes.

3. Set default notification time in milliseconds
   
   This is the time each notification remains visible on screen, given in milliseconds. 1 second equals 1000 milliseconds.
___
4. Set Def. HUD/Sound Status

   Setting this to 1 ("on") or 0 ("off") will result in said feature to (not) be active when starting up. 
Note that pressing enter in any edit field saves the current edits into Settings.

5. Set a new Path (Notify-Image)
   
   Set the path of the image used in the notify-picture when issuing alerts. Paths can be relative to script dir (as seen on picture) or not.
   
6. Set Notify-Title

   Set the title of the notification
   
7. Set Starting Position U/D: 1/0

   This is exclusive to the StandUpBot, and decides which setting the bot assumes at start. After that, on each alert-cycle, the notification-messages alternates between "standing up" and "sitting down".
   
   
   
## Set Timer

Set the respective time inbetween reminders, in minutes. This time will not be reused after restarting the bot again. For that, look at [Settings](#settings).

![alt text](https://github.com/Gewerd-Strauss/GeneralHealthBots.ahk/blob/main/Github%20Help%20Pictures/SHB_Submenu_Set_Timer.jpeg?raw=true)

## Pause
Deactivate the notification and sound played whenever the timer goes off. Note that the timer itself continues running, however it will not execute any code when it triggers.




## HUD & Sound
Toggle wether or not a HUD or Sound is used to notify the user when the timer goes off.
Note that pausing the bot has the same effect as unchecking both "HUD" and "Sound" for the respective bot. 
Functionally this also just prohibits the respective aspect from triggering, the timer itself doesn't stop.
Not available if the respective timer is officially [paused](#pause). 



___
# Credits
All code except where noted otherwhise is mine, as bad as it is.
Autohotkey-code used within this script:
* maestrith's [Notify.ahk](https://github.com/maestrith/Notify)
* wolf_II's [INI-file object maker functions](https://www.autohotkey.com/boards/viewtopic.php?p=256940#p256940)

Other mentions:
* anonymous1184's [help for solving the .wav-file bug in soundplay for me](https://www.reddit.com/r/AutoHotkey/comments/myti1k/ihatesoundplay_how_do_i_get_the_string_converted/gvwtwlb?utm_source=share&utm_medium=web2x&context=3)


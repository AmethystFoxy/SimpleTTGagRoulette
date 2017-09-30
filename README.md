# SimpleTTGagRoulette
Just a simple Toontown Gag Roulette Wheel I threw together in a few hours based on the one I saw in Coach Z Evil Twin's "Roulette Wheel" Video

Known Bugs: Sometimes The Roulette returns no Gag, which will register color-wise as 255 255 255, this allows the roulette to finish clicking on the last gag it landed on, which may or may not have any inventory left, Just run it again, and it should turn out fine.
Toon-up Gags are currently not implemented(They can be randomly selected, but they will not automatically target other toons unless they are group Toon-up Gags, I will add this functionality later).

This was made on a Windows 10 Machine, unknown if it works on Linux or Mac. Most likely not. I won't be creating a Linux or Mac Version regardless.

The Three Files in this repository are: 
The Source File (Gag_Roulette_Wheel(Release 1.0.0).ahk), which was written in AHK or AutoHotKey which is a great open source library for making code for working with games.
The Executable (Gag_Roulette_Wheel(Release 1.0.0).exe), which was Compiled using AHK.
the Screen Location Configuration File (Gag_Location_Index_Battle.txt).
And Finally the Content pack (phase_3.5.mf) used to darken the gag panel backgrounds, and lighten the gag panels.

Some important things

1.In order for the program to run, Gag_Location_Index_Battle.txt must be in the same directory as the program's executable (Because it imports from it).

2.You also should put the content pack (phase_3.5.mf) in your resources folder in your toontown directory.

3.When First Starting up the Exectutable be sure to run it ingame and Calibrate it for your screen resolution. To do this simply press F5 and follow the tag instructions on the top right of the screen.
Make sure when you're calibrating you don't click directly on the gag, just hover within it's box in the blue area and hit F6.
It may take you a few battles to do this, that's alright, at any time if you want to stop and start again, just save a copy of Gag_Location_Index_Battle.txt and reopen the program. The Program Deletes the old Calibration file every time you restart it.
You can directly modify Gag_Location_Index_Battle.txt in any text editor as well for fine tuning.

You are also free to modify the source file as you see fit. It's written in Autohotkey, so you'll have to download that to compile it.

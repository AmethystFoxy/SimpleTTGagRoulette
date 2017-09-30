#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, ToolTip, Screen

;;Create Starting Menu Tooltip at top right of screen
ToolTip, F9-Exit/F1-Roll with 1 cog/F2-Roll With 2 cogs/F3-Roll with 3 cogs/F4-Roll with 4 cogs/F5-Calibrate Gag and Cog Loc, 1858, -927

;;DEFINITIONS//;;

#Include Gag_Location_Index_Battle.txt ; Imports calibration file
CoordMode, mouse, screen
CoordMode, Pixel, Relative
NumCogs =1

;;Create An object Containing all of the Kinds of Gags Comment a Gag out if you don't want it picked. Currently all lvl 7s are commented out.
Gags := Object()
	;;Toonup
	Gags.Insert("Feather")
	Gags.Insert("Megaphone")
	Gags.Insert("Lipstick")
	Gags.Insert("Bamboo_Cane")
	Gags.Insert("Pixie_Dust")
	Gags.Insert("Juggling_Balls")
	;;Gags.Insert("High_Dive")
	
	;;Trap
	Gags.Insert("Bannana_Peel")
	Gags.Insert("Rake")
	Gags.Insert("Marbles")
	Gags.Insert("Quicksand")
	Gags.Insert("Trapdoor")
	Gags.Insert("Tnt")
	;;Gags.Insert("Train_Tracks")
	
	;;Lure
	Gags.Insert("1_Dollar_Bill")
	Gags.Insert("Little_Magnet")
	Gags.Insert("5_Dollar_Bill")
	Gags.Insert("Big_Magnet")
	Gags.Insert("10_Dollar_Bill")
	Gags.Insert("Hypno_Googles")
	;;Gags.Insert("Presentation")
	
	;;Sound
	Gags.Insert("Bike_Horn")
	Gags.Insert("Whistle")
	Gags.Insert("Bugle")
	Gags.Insert("Aoogah")
	Gags.Insert("Trunk")
	Gags.Insert("Foghorn")
	;;Gags.Insert("Opera_Singer")
	
	;;Throw
	Gags.Insert("Cupcake")
	Gags.Insert("Fruit_Pie_Slice")
	Gags.Insert("Cream_Pie_Sclice")
	Gags.Insert("Fruit_Pie")
	Gags.Insert("Cream_Pie")
	Gags.Insert("Birthday_Cake")
	;;Gags.Insert("Wedding_Cake")
	
	;;Squirt
	Gags.Insert("Squirting_Flower")
	Gags.Insert("Glass_Of_Water")
	Gags.Insert("Squirt_Gun")
	Gags.Insert("Seltzer_Bottle")
	Gags.Insert("Firehose")
	Gags.Insert("Storm_Cloud")
	;;Gags.Insert("Gyser")
	
	;;Drop
	Gags.Insert("Flower_Pot")
	Gags.Insert("SandBag")
	Gags.Insert("Anvil")
	Gags.Insert("10_Ton_Weight")
	Gags.Insert("Safe")
	Gags.Insert("Piano")
	;;Gags.Insert("Toontanic")

;;Create An object Containing all possible cog locations

Cogs := Object()
	Cogs.Insert("1Cog1")
	Cogs.Insert("2Cog1")
	Cogs.Insert("2Cog2")
	Cogs.Insert("3Cog1")
	Cogs.Insert("3Cog2")
	Cogs.Insert("3Cog3")
	Cogs.Insert("4Cog1")
	Cogs.Insert("4Cog2")
	Cogs.Insert("4Cog3")
	Cogs.Insert("4Cog4")

;;//////////;;
;;APPSTART//;;
;;//////////;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Routlette;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;1 Cog;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

F1::
;;Run the Roulette with 1 cog
;;Move through all gags in a row
ToolTip, Oh~ What gag are you gonna get!, 1858, -927
count =1
while count < Gags.MaxIndex()+1 {
	GagRou := Gags[count]
	MouseMove, %GagRou%x, %GagRou%y, 2
	count := count+1
}

;;Move randomly around
count =1
rgag =1
while count < 10{
	Random, rgag, 1, Gags.MaxIndex()+1
	GagRan := Gags[rgag]
	MouseMove, %GagRan%x, %GagRan%y, 2
	ToolTip, Testing Part 2! %count%, 1858, -927
	count := count+1
}

;;Pick a Random Gag
Blue := 0
while Blue < 80{
	Random, rgag, 1, Gags.MaxIndex()+1
	GagRantwo := Gags[rgag]
	Sleep 10
	PixelGetColor, color, %GagRantwo%x, %GagRantwo%y ;; color at that point
	Blue:="0x" SubStr(color,3,2) ;substr is to get the piece
	Blue:=Blue+0 ;add 0 is to convert it to the current number format
}
Sleep 50
ToolTip, You Got %GagRantwo%!, 1858, -927
MouseClick, Left, %GagRantwo%x, %GagRantwo%y
Sleep 3000
ToolTip, F9-Exit/F1-Roll with 1 cog/F2-Roll With 2 cogs/F3-Roll with 3 cogs/F4-Roll with 4 cogs/F5-Calibrate Gag and Cog Loc, 1858, -927
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;2 Cogs;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

F2::

;;Run the Roulette with 2 cogs

;;Move through all gags in a row
ToolTip, Oh~ What gag are you gonna get!, 1858, -927
count =1
while count < Gags.MaxIndex()+1 {
	GagRou := Gags[count]
	MouseMove, %GagRou%x, %GagRou%y, 2
	ToolTip, Testing %count%, 1858, -927
	count := count+1
}

;;Move randomly around
count =1
rgag =1
while count < 10{
	Random, rgag, 1, Gags.MaxIndex()+1
	GagRan := Gags[rgag]
	MouseMove, %GagRan%x, %GagRan%y, 2
	ToolTip, Testing Part 2! %count%, 1858, -927
	count := count+1
}

;;Pick a Random Gag
Blue := 0
while Blue < 80{
	Random, rgag, 1, Gags.MaxIndex()+1
	GagRantwo := Gags[rgag]
	MouseMove, %GagRantwo%x, %GagRantwo%y, 2
	Sleep 50
	MouseGetPos, MouseX, MouseY ;; Gets Mouse Position
	PixelGetColor, color, %MouseX%,  %MouseY% ;; color under the mouse
	Blue:="0x" SubStr(color,3,2) ;substr is to get the piece
	Blue:=Blue+0 ;add 0 is to convert it to the current number format
}
Sleep 50
ToolTip, You Got %GagRantwo%!, 1858, -927
MouseClick, Left, %GagRantwo%x, %GagRantwo%y

Random, rcog, 2, 3
CogRand := Cogs[rcog]

Sleep 1000
MouseClick, Left, %CogRand%x, %CogRand%y
Sleep 2000
ToolTip, F9-Exit/F1-Roll with 1 cog/F2-Roll With 2 cogs/F3-Roll with 3 cogs/F4-Roll with 4 cogs/F5-Calibrate Gag and Cog Loc, 1858, -927
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;3 Cogs;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


F3::

;;Run the Roulette with 3 cogs

;;Move through all gags in a row
ToolTip, Oh~ What gag are you gonna get!, 1858, -927
count =1
while count < Gags.MaxIndex()+1 {
	GagRou := Gags[count]
	MouseMove, %GagRou%x, %GagRou%y, 2
	count := count+1
}
;;Move randomly around
count =1
rgag =1
while count < 10{
	Random, rgag, 1, Gags.MaxIndex()+1
	GagRan := Gags[rgag]
	MouseMove, %GagRan%x, %GagRan%y, 2
	count := count+1
}
;;Pick a Random Gag
Blue := 0
while Blue < 80{
	Random, rgag, 1, Gags.MaxIndex()+1
	GagRantwo := Gags[rgag]
	MouseMove, %GagRantwo%x, %GagRantwo%y, 4
	Sleep 50
	MouseGetPos, MouseX, MouseY ;; Gets Mouse Position
	PixelGetColor, color, %MouseX%,  %MouseY% ;; color under the mouse
	Blue:="0x" SubStr(color,3,2) ;substr is to get the piece
	Blue:=Blue+0 ;add 0 is to convert it to the current number format
}
Sleep 50
ToolTip, You Got %GagRantwo%!, 1858, -927
MouseClick, Left, %GagRantwo%x, %GagRantwo%y

Random, rcog, 4, 6
CogRand := Cogs[rcog]

Sleep 1000
MouseClick, Left, %CogRand%x, %CogRand%y
Sleep 2000
ToolTip, F9-Exit/F1-Roll with 1 cog/F2-Roll With 2 cogs/F3-Roll with 3 cogs/F4-Roll with 4 cogs/F5-Calibrate Gag and Cog Loc, 1858, -927
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;4 Cogs;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

F4::

;;Run the Roulette with 4 cogs

;;Move through all gags in a row
ToolTip, Oh~ What gag are you gonna get!, 1858, -927
count =1
while count < Gags.MaxIndex()+1 {
	GagRou := Gags[count]
	MouseMove, %GagRou%x, %GagRou%y, 2
	count := count+1
}
;;Move randomly around
count =1
rgag =1
while count < 10{
	Random, rgag, 1, Gags.MaxIndex()+1
	GagRan := Gags[rgag]
	MouseMove, %GagRan%x, %GagRan%y, 2
	count := count+1
}
;;Pick a Random Gag
Blue := 0
while Blue < 80{
	Random, rgag, 1, Gags.MaxIndex()+1
	GagRantwo := Gags[rgag]
	MouseMove, %GagRantwo%x, %GagRantwo%y, 4
	Sleep 50
	MouseGetPos, MouseX, MouseY ;; Gets Mouse Position
	PixelGetColor, color, %MouseX%,  %MouseY% ;; color under the mouse
	Blue:="0x" SubStr(color,3,2) ;substr is to get the piece
	Blue:=Blue+0 ;add 0 is to convert it to the current number format
}
Sleep 50
ToolTip, You Got %GagRantwo%!, 1858, -927
MouseClick, Left, %GagRantwo%x, %GagRantwo%y

Random, rcog, 7, 10
CogRand := Cogs[rcog]

Sleep 1000
MouseClick, Left, %CogRand%x, %CogRand%y
Sleep 2000
ToolTip, F9-Exit/F1-Roll with 1 cog/F2-Roll With 2 cogs/F3-Roll with 3 cogs/F4-Roll with 4 cogs/F5-Calibrate Gag and Cog Loc, 1858, -927
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Calibrate Gag and Cog Loc;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

F5::
;;Calibration
;;Creates Calibration File
IfExist, Gag_Location_Index_Battle.txt
FileDelete, Gag_Location_Index_Battle.txt

IfNotExist, Gag_Location_Index_Battle.txt
FileAppend, , Gag_Location_Index_Battle.txt

;;Calibrate Gag and Cog Locs Every Gag Using user input

x =1
ToolTip, %x%, 1858, -927
while x < Gags.MaxIndex()+1 {
	GagCali := Gags[x]
	ToolTip, Please hover over the %GagCali% and press F6, 1858, -927
	KeyWait, F6, D ;;Waits for f6 Key to be Pressed
	KeyWait, F6, L ;;Waits for f6 Key to be Released
	ToolTip, Key Pressed, 1858, -927
	MouseGetPos, MouseX, MouseY ;; Gets Mouse Position
	FileAppend, `n%GagCali%x=%MouseX%, Gag_Location_Index_Battle.txt ;;Appends Location of Mouse to File
	FileAppend, `n%GagCali%y=%MouseY%, Gag_Location_Index_Battle.txt
	x := x+1
	Sleep 100
}

x =1
;;Calibrate Cogs Using User Input
while x < Cogs.MaxIndex()+1 {
	CogsCali := Cogs[x]
	ToolTip, Please hover over the button to attack the cogs and press F6. The Number of cogs-> %CogsCali% <- The position of that cog(Left to right), 1858, -927
	KeyWait, F6, D ;;Waits for f6 Key to be Pressed
	KeyWait, F6, L ;;Waits for f6 Key to be Released
	ToolTip, Key Pressed, 1858, -927
	MouseGetPos, MouseX, MouseY ;; Gets Mouse Position
	FileAppend, `n%CogsCali%x=%MouseX%, Gag_Location_Index_Battle.txt ;;Appends Location of Mouse to File
	FileAppend, `n%CogsCali%y=%MouseY%, Gag_Location_Index_Battle.txt
	x := x+1
	Sleep 100
}

#IncludeAgain Gag_Location_Index_Battle.txt
ToolTip, F9-Exit/F1-Roll with 1 cog/F2-Roll With 2 cogs/F3-Roll with 3 cogs/F4-Roll with 4 cogs/F5-Calibrate Gag and Cog Loc, 1858, -927
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Press F9 to close Application;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

F9::
SoundPlay, *16
ExitApp
Return

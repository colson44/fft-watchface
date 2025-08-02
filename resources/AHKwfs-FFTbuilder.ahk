;;;;;;; Uses macros to navigate Watch Face Studio to create project files and builds.  
;;;;;;; Uses a collection of sprites in the SpriteIndexFile to create project files based 
;;;;;;; on a template WFS project, and then creates builds of said projects using the BuildFileIndex.
;;;;;;; Heavily dependent on macroing using mouse coordinate clicks relatiave to the WFS window,
;;;;;;; this is unlikely to work on other devices - requires resoltuon 2560x1440 w/ 100% scaling


#SingleInstance Force
#NoEnv
#Persistent
#UseHook
CoordMode Mouse, Relative
ListLines Off

SpriteIndexFile := A_ScriptDir . "\AHKindex-sprites.txt"
BuildIndexFile := A_ScriptDir . "\AHKindex-buildfiles.txt"
sGroup := []
sNumber := []
sFile := []
sStyleFiles := []
sGroupName := []

Return

!1:: ;; create a WFS file based on a template file and collection of sprite image files
	GoSub ReadSpriteIndex
	Sleep 1000
	CoordMode Mouse, Screen
	Click 100 16
	CoordMode Mouse, Relative
	
	Loop, 23 ;; set to number of build files to process from BuildIndexFile
	{
	;;;;;;;;;;;;;;;; Update each layer in WFS with character sprite files
		GroupID := A_index
		Loop, 6
		{
			AnimID := A_index
			LineNumber := (GroupID-1)*6+AnimID
			Clipboard := sFile[LineNumber]

			layerx := 90
			layery := 242 + (AnimID-1)*30
			swapx := layerx + 10
			swapy := layery + 420

			Click %layerx% %layery% Right
			Sleep 250
			Click %swapx% %swapy%
			Sleep 250
			Send ^{v}
			Send {Enter}
			Sleep 500
			
			Clipboard := sStyleFiles[LineNumber]
			Click 2500 150
			Sleep 250
			Click 2535 240
			Sleep 250
			Send ^{v}
			Send {Enter}
			Sleep 500
			
		}
		Sleep 500
		
	;;;;;;;;;;;;;;;; Update character selection option for customization screen
		Click 2400 180
		Sleep 250
		Click 1000 600
		Sleep 250
		Send {WheelDown 10}
		Sleep 250
		Click 1000 600 
		Sleep 250
		Send {Shift Down}
		Click 1000 915
		Sleep 250
		Send {Shift Up}
		Click 1000 915 Right
		Sleep 250
		Click 1040 940
		Sleep 250
		Click 1090 680
		Sleep 250
		Click 1160 890
		Sleep 250
		Click 1100 1000
		Click 1100 1000
		Click 1100 1000
		Click 1100 1000
		Sleep 250
		Click 1400 980
		Sleep 250
		Click 1650 980
		Sleep 250
		
	;;;;;;;;;;;;;;;;;;;;;; update package name and app label
		PackageName := "com.watchfacestudio.fft_" . GroupID
		AppLabel := "FFT - " . sGroupName[GroupID*6]
		Click 30 70
		Sleep 250
		Click 80 170
		Sleep 250
		Click 180 170 0
		Sleep 250
		Click 230 260
		Sleep 250
		Click 1300 660 ; into package name box
		Sleep 250
		Send %PackageName%
		Send {Enter}	
		Sleep 250
		Click 1450 700
		Sleep 250
		Click 1780 930
		Sleep 250
		Click 1250 630 ; App Label Name
		Sleep 250
		Send %AppLabel%
		Send {Enter}
		Sleep 250	
		Click 1440 850
		Click 1440 850
		
	;;;;;;;;;;;;;;;;;;;;;; Save project file
		Clipboard := "FFT_watchface_group" . GroupID
		Send ^+{s}
		Sleep 1000
		Send ^{v}
		Send {enter}
		Sleep 1000
		
	;;;;;;;;;;;;;;;;;;;;;; open next file
		Send ^{o}
		Sleep 1000
		Clipboard := "FFT_template1_unrun.wfs" ;; set to template file name
		Send ^{v}
		Send {enter}
		Sleep 1000
	}
	
Return

	
!2:: ;; create an android package for each file in the BuildIndexFile by opening the project file in WFS and macroing through the export menus
	BuildPass := "Password" ;; set to android key password
	Loop, read, %BuildIndexFile%
	{
		Send ^{o}
		Sleep 1000
		CoordMode Mouse, Screen
		Click 1300 750 5
		CoordMode Mouse, Relative
		Sleep 250
		Click 850 650 
		Sleep 250
		Send %A_LoopReadLine%
		Sleep 250
		Send {Enter}
		Sleep 1000
		Send {F10}
		Sleep 20000 ;; wait for analysis
		Click 1200 575
		Sleep 250
		Click 1200 660 
		Sleep 250
		Click 1200 715
		Sleep 250
		Send %BuildPass%
		Sleep 250
		Click 1200 820 
		Sleep 250
		Send %BuildPass%
		Sleep 250
		Click 1200 1000
		Sleep 250
		Click 1200 1060
		Sleep 250
		Click 1440 1200
		Sleep 30000 ;; wait for build
	}
Return

ReadSpriteIndex: ;; populate sprite variables with sprite details
	Loop, read, %SpriteIndexFile%
	{
		LineNumber := A_index
		Loop, parse, A_LoopReadLine, `,
		{
			if (A_index = 1) 
				sGroup[LineNumber] := A_LoopField
			if (A_index = 2) 
				sNumber[LineNumber] := A_LoopField
			if (A_index = 3) 
				sFile[LineNumber] := A_LoopField
			if (A_index = 4) 
				sStyleFiles[LineNumber] := A_LoopField
			if (A_index = 5) 
				sGroupName[LineNumber] := A_LoopField
		}
	}
Return

!x::
    ExitApp
Return

!r::
    Reload
Return

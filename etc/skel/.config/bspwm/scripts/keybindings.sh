#!/bin/bash

	less 	<<-EOF
	List of some useful keybindings. 
	More can be found from the file ~/.config/sxhkd/sxhkdrc.
	You can also edit keybindings there.
	
	Mod4 is super key, on many keyboards marked with windows logo.	
	As a rule of thumb, super+<direction> moves focus, 
	super+shift+<direction> moves focused window,
	and super+ctrl+<direction> resizes windows.
	
	Arrow keys, wasd and hjkl represent directions and numbers represent
	different workspaces. 

	Pseudo-tiled windows can have any size but are centered in their place. 
	Tiled windows have size and  place determined by their node. 
	Full screen windows just cover everything. 
		 
	Sticky windows are visible on all workspaces. 
	Private windows are not splitted when bspwm is in automatic mode (this is not default in bspwm-manjaro). 
	Locked windows do not close with regular super+shift+q keybinding.
	 
	### Window manipulation ################################################################

		Alt + Tab                     |- Cycle windows
		Super + Tab                   |- Open window switcher
		Super + <direction>/{h,j,k,l} |- Move focus to the direction
		Super + Shift + <direction>   |- Move focused window to direction
		Super + Shift + x             |- xKill window
		Super + Ctrl + <direction>    |- Resize focused window to direction
		Super + 1-9                   |- Focus the desktop with that number
		Super + Shift + 1-9           |- Move focused window to desktop with that number	
		Super + Space                 |- Move window to the biggest available space 
                              |  or preselection if there is one
Super + Escape		      |- Lock a window from closing
		Ctrl + Space                  |- Preselect where the next window will be opened
		Alt + Enter                   |- Preselect/split the rootwindow
		Super + a  		      |- Toggle Polybar
		Super + b                     |- Balance windows
		Alt + b                       |- Toggle automatic window balancing
		Super + i                     |- Make window sticky
		Super + t                     |- Toggle tiling/floating
		
		Super + f                     |- Toggle monocle
		Super + m 		      |- Select previous desktop
		Super + n 		      |- Select next desktop
		Super + o                     |- Make window private 
                              |  (Avoids splitting it automatically)
                              
		Super + Shift + t             |- Toggle pseudotiling	
		Super + Shift + f             |- Toggle fullscreen
		Super + Shift + e             |- Cleanly quit bspwm
		Super + Shift + r             |- Reload bspwms configuration file
		Super + Ctrl + r              |- Open bspwms configuration file

		Super + Shift + q             |- Close Window
		Super + Shift + x             |- Kill Window 
		Super + Ctrl + x              |- Xkill
		Super + Shift + t             |- Toggle tiling mode of window 

		Super + {comma,period}	      |- Mirror and flip leaves of tree

		Alt + Space 		      |- Rotate desktop

		Super + Ctrl + Shift + t      |- Force all windows of the desktop to float and arrange them

		Super + Shift + Escape        |- Make sxhkd reload its configuration files:
		
	### Mousecommands ######################################################################
		
		Leftclick menus	              |- Close menu 
		Super + scroll                |- Adjust window gap
		Super + drag                  |- Moves window
		
		
	### Applications #######################################################################

		F7			      |- Rofi -show run
		Super + e                     |- Explore files with Thunar
		Super + d                     |- Dmenu (Run applications) 
		Super + p                     |- Launch fzf Pacsearch
		Super + r                     |- Explore files with Ranger
		Super + x                     |- File Search (rofi-finder.sh)
		Super + y                     |- Launch fzf Yaysearch
		Super + z                     |- Morc_Menu
		
		Super + Return                |- Terminal
		Super + F1                    |- Keybinding.sh
		Super + F2                    |- Firefox
		Super + F3                    |- Thunar
		Super + F4 		      |- VSCodium
		Super + F5 		      |- VirtualBox
		Super + F6 		      |- Bmenu
		Super + F9 		      |- Lockscreen
		Super + F12    		      |- Xfce4-Terminal dropdown

		Super + Ctrl + r              |- Edit Bspwmrc
		Alt + Ctrl + Space            |- View sxhkdrc
		
		Super + Shift + a             |- Browser
		Super + Shift + b 	      |- Bmenu
		Super + Shift + Return        |- Thunar

		Super + Ctrl + Space 	      |- Toggle Compositing
		



	EOF

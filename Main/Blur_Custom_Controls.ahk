#InstallKeybdHook
#UseHook
#MaxThreadsPerHotkey 20 
#MaxThreadsBuffer on

SendMode Input
SetWorkingDir %A_ScriptDir%

; -------------------------------------------------------------------------------------------
; ------------------ Author: github.com/aditya-jagdev ---------------------------------------
; -------------------------------------------------------------------------------------------
; ------------- Tested with AutoHotKey v1.1.33.10 on 6th Feb 2022 ---------------------------
; -------------------------------------------------------------------------------------------
; MAP YOUR KEYS IN THIS CODE BLOCK
; PRESS F5 to toggle the script
; -------------------------------------------------------------------------------------------

accelerate = Up
brake = Down
steerleft = Left
steerright = Right
ebrake = Space
camera = c
lookback = z
usepower = x
switchpower = a
firefront = w
fireback = s
droppower = f

; -------------------------------------------------------------------------------------------
; ------------------  DO NOT CHANGE ANYTHING PAST THIS LINE ---------------------------------
; -------------------------------------------------------------------------------------------

Hotkey, *%accelerate%, accelerate_press_handler
Hotkey, *%accelerate% up, accelerate_release_handler
Hotkey, *%brake%, brake_press_handler
Hotkey, *%brake% up, brake_release_handler
Hotkey, *%steerleft%, steerleft_press_handler
Hotkey, *%steerleft% up, steerleft_release_handler
Hotkey, *%steerright%, steerright_press_handler
Hotkey, *%steerright% up, steerright_release_handler
Hotkey, *%ebrake%, ebrake_press_handler
Hotkey, *%ebrake% up, ebrake_release_handler
Hotkey, *%camera%, camera_press_handler
Hotkey, *%camera% up, camera_release_handler
Hotkey, *%lookback%, lookback_press_handler
Hotkey, *%lookback% up, lookback_release_handler
Hotkey, *%usepower%, usepower_press_handler
Hotkey, *%usepower% up, usepower_release_handler
Hotkey, *%switchpower%, switchpower_press_handler
Hotkey, *%switchpower% up, switchpower_release_handler
Hotkey, *%firefront%, firefront_press_handler
Hotkey, *%firefront% up, firefront_release_handler
Hotkey, *%fireback%, fireback_press_handler
Hotkey, *%fireback% up, fireback_release_handler
Hotkey, *%droppower%, droppower_press_handler
Hotkey, *%droppower% up, droppower_release_handler
return

accelerate_press_handler:
    SetKeyDelay -1
    Send {Blind}{w DownTemp}
return

accelerate_release_handler:
    SetKeyDelay -1
    Send {Blind}{w up}
return

brake_press_handler:
    SetKeyDelay -1
    Send {Blind}{s DownTemp}
return

brake_release_handler:
    SetKeyDelay -1
    Send {Blind}{s up}
return

steerleft_press_handler:
    SetKeyDelay -1
    Send {Blind}{a DownTemp}
return

steerleft_release_handler:
    SetKeyDelay -1
    Send {Blind}{a up}
return

steerright_press_handler:
    SetKeyDelay -1
    Send {Blind}{d DownTemp}
return

steerright_release_handler:
    SetKeyDelay -1
    Send {Blind}{d up}
return

ebrake_press_handler:
    SetKeyDelay -1
    Send {Blind}{Space DownTemp}
return

ebrake_release_handler:
    SetKeyDelay -1
    Send {Blind}{Space up}
return

camera_press_handler:
    SetKeyDelay -1
    Send {Blind}{z DownTemp}
return

camera_release_handler:
    SetKeyDelay -1
    Send {Blind}{z up}
return

lookback_press_handler:
    SetKeyDelay -1
    Send {Blind}{PgDn DownTemp}
return

lookback_release_handler:
    SetKeyDelay -1
    Send {Blind}{PgDn up}
return

usepower_press_handler:
    SetKeyDelay -1
    Send {Blind}{RControl DownTemp}
return

usepower_release_handler:
    SetKeyDelay -1
    Send {Blind}{RControl up}
return

switchpower_press_handler:
    SetKeyDelay -1
    Send {Blind}{Left DownTemp}
return

switchpower_release_handler:
    SetKeyDelay -1
    Send {Blind}{Left up}
return

firefront_press_handler:
    SetKeyDelay -1
    Send {Blind}{Up DownTemp}
return

firefront_release_handler:
    SetKeyDelay -1
    Send {Blind}{Up up}
return

fireback_press_handler:
    SetKeyDelay -1
    Send {Blind}{Down DownTemp}
return

fireback_release_handler:
    SetKeyDelay -1
    Send {Blind}{Down up}
return

droppower_press_handler:
    SetKeyDelay -1
    Send {Blind}{Right DownTemp}
return

droppower_release_handler:
    SetKeyDelay -1
    Send {Blind}{Right up}
return

State = 1
F5::
    Suspend, permit
    if (State == 0)
    {
        State = 1
        SoundPlay, %A_ScriptDir%\On.wav
    }
    Else
    {
        State = 0
        SoundPlay, %A_ScriptDir%\Off.wav
    }
    Suspend, Toggle
Return

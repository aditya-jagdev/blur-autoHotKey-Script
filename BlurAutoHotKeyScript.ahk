#NoEnv  ; 						Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; 						Enable warnings to assist with detecting common errors.
SendMode Input  ; 				Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; 	Ensures a consistent starting directory.

; -------------------------------------------------------------------------------------------
; ------------------ Author: github.com/aditya-jagdev ---------------------------------------
; -------------------------------------------------------------------------------------------

; NOTE: Use with Blur Keyboard Layout 2
; NOTE: Run as Administrator, else it may not work
; Change The Controls in the following block

; -------------------------------------------------------------------------------------------
; MAP YOUR KEYS IN THIS BLOCK
; EBrake commented by default, Uncomment if you use something other than Space for Ebrake
; PRESS Control+K TO DE/ACTIVATE MAPPING
; -------------------------------------------------------------------------------------------

Mapping_Active = 0

#UseHook On
Toggle = ^K
Accelerate = Up
Brake = Down
SteerLeft = Left
SteerRight = Right
;EBrake = Space
Camera = V
LookBack = Z
UsePower = A
SwitchPower = D
FireFront = W
FireBack = S
DropPower = F

; -------------------------------------------------------------------------------------------
; BLOCK FOR MAPPING KEYS TO EXPRESSIONS
; EBrake commented by default, Uncomment if you use something other than Space for Ebrake
; -------------------------------------------------------------------------------------------

Hotkey, %Toggle%, ToggleExpression
Hotkey, %Accelerate%, AccelerateExpression
Hotkey, %Brake%, BrakeExpression
Hotkey, %SteerLeft%, LeftExpression
Hotkey, %SteerRight%, RightExpression
;Hotkey, %EBrake%, EbrakeExpression
Hotkey, %Camera%, CameraExpression
Hotkey, %LookBack%, LookbackExpression
Hotkey, %UsePower%, UsepowerExpression
Hotkey, %SwitchPower%, SwitchpowerExpression
Hotkey, %FireFront%, FireFrontExpression
Hotkey, %FireBack%, FireBackExpression
Hotkey, %DropPower%, DropPowerExpression
return

; -------------------------------------------------------------------------------------------
; BLOCK FOR KEY EXPRESSIONS
; Configured for Blur Keyboard Layout 2 by default
; -------------------------------------------------------------------------------------------

ToggleExpression:
if(Mapping_Active == 1)
	{
	Mapping_Active = 0
	SoundPlay, C:\Sounds\Off.wav
	}
else
	{
	Mapping_Active = 1
	SoundPlay, C:\Sounds\On.wav
	}
return

AccelerateExpression:
if(Mapping_Active == 1)
	Send {W}
else
	Send {%Accelerate%}
return

BrakeExpression:
if(Mapping_Active == 1)
	Send {S}
else
	Send {%Brake%}
return

LeftExpression:
if(Mapping_Active == 1)
	Send {A}
else
	Send {%SteerLeft%}
return

RightExpression:
if(Mapping_Active == 1)
	Send {D}
else
	Send {%SteerRight%}
return

EbrakeExpression:
if(Mapping_Active == 1)
	Send {Space}
else
	Send {%EBrake%}
return

CameraExpression:
if(Mapping_Active == 1)
	Send {Z}
else
	Send {%Camera%}
return

LookbackExpression:
if(Mapping_Active == 1)
	Send {PgDn}
else
	Send {%LookBack%}
return

UsepowerExpression:
if(Mapping_Active == 1)
	Send {RControl}
else
	Send {%UsePower%}
return

SwitchpowerExpression:
if(Mapping_Active == 1)
	Send {Left}
else
	Send {%SwitchPower%}
return

FireFrontExpression:
if(Mapping_Active == 1)
	Send {Up}
else
	Send {%FireFront%}
return

FireBackExpression:
if(Mapping_Active == 1)
	Send {Down}
else
	Send {%FireBack%}
return

DropPowerExpression:
if(Mapping_Active == 1)
	Send {Right}
else
	Send {%DropPower%}
return

#UseHook Off

; -------------------------------------------------------------------------------------------
; -------------------------------------------------------------------------------------------
; -------------------------------------------------------------------------------------------
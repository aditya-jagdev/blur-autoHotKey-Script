# blur-autoHotKey-Script
A small script I made for players to use their desired controls with the game

## How to use
1. Install the latest version of AutoHotKey (https://www.autohotkey.com/)
  * Version used 1.1.31.00 used, others should work fine as well
2. Copy the audio clips (Used for audio feedback) to the root of your C: drive.
  * The file paths should look like
    * C:\Sounds\Off.wav
    * C:\Sounds\On.wav
3. Start the given script as administrator
  * Not starting it as the administrator may render AHK unable to detect keypress when playing in fullscreen.
4. Press Control+K to activate/deactivate the script.
5. Make sure you have the ingame Blur keyboard layout 2 selected.

## Changing the keymapping
* If you do not like the given keymapping, you can change it by opening the AHK script file and editing lines 23 through 35 in the script.

## Default Mapping
```
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
```

# AP Alarm & Don't Sleep
> The loudest alarm you'll ever hear that's so effective, that you'll wake up 5 mins before alarm! (Paired with a script that won't let your computer sleep)

## Usage
```PowerShell
Wake-Up.ps1 [[-Hour] <Int>] [[-minutes] <Int>] [[-VideoScanString] <Path>]
Dont-Sleep.ps1 [-NoAwayMode]
```
- *__Note__: If you've never run PowerShell Scripts before refer to __Setup PowerShell Section__ Below*

#### Wake up
- 5 minutes before alarm it will make your computer whisper to you "5 minutes before alarm"
-  will ring an alarm at the specified time using one of 3 strategies:
  - Look for a local alarm script called [Popcornetune.ps1](Popcornetune.ps1)*, otherwise*
  - Look for videos in `-VideoScanString` which defaults to: `~\Downloads\Videos\*.mp4`*, otherwise*
  - Play a basic beep-boop tune sequence for a while

#### Don't Sleep
- Sends the scroll-lock key to itself over and over till break
- By default, it listens for the key event to know that your computer was focused on the script window
  - This allows auto-pausing of script when you start working on your computer
- If `-NoAwayMode` is passed, then the script will never pause on failed pings to itself


## Features
- Both scripts support a ton of keyboard shortcuts on them while they are running
- Uses windows SAPI voice API to warn you before alarm
- Jacks up the volume to 100% whichever way possible
- Make sure to toggle your output device to the laptop's speaker (only if you have the `nircmd` binary in your path)

## Keyboard Commands
Parameter         | Script | Parameter Set
----------------- | ---------- | -------------
`q / x / Escape`     | Both | Exit script
`Space / Enter / ScrollLock` | Wake-Up | Show status of sleep for alarm
`s / Enter ` | Dont-Sleep | Show stats on how many pings were recieved by this script to itself

## Set Up PowerShell [If you've never run a script in PowerShell]
- Open PowerShell with Admin Access
- Run `Set-ExecutionPolicy Bypass`
- This allows scripts to be run in PowerShell
- cd to the *Folder* where you downloaded/cloned [Configure-Component.ps1](Configure-Component.ps1)
- `./Configure-Component.ps1`*`<arguments>`*

---
By: [Apoorv Verma](https://github.com/avdaredevil)

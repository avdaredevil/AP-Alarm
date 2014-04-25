<#
|==============================================================================>|
   AP-Alarm System by APoorv Verma [AP] on 10/14/2013
|==============================================================================>|
      $) Hikes the Volume up to 100%
      $) Playes A Cool Tune Else Plays a random video [Docs/Videos]
      $) Works with Dont-Sleep To make sure computer doesn't fall asleep
      $) Key Press Handling
         @) 'Escape' = Quit
|==============================================================================>|
#>
param($Hour = 9, $minutes = 0)
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
function KeyPressed {
param([Parameter(Mandatory=$True)][String[]]$Key, $Store="^^^")

    if ($Store -eq "^^^" -and $Host.UI.RawUI.KeyAvailable) {$Store = $Host.UI.RawUI.ReadKey("IncludeKeyUp,NoEcho")} else {if ($Store -eq "^^^") {return $False}}
    $Ans = $False
    $Key | % {
        $SOURCE = $_
        try {
            $Ans = $Ans -or (KeyPressedCode $SOURCE $Store)
        } catch {
            Foreach ($K in $SOURCE) {
                [String]$K = $K
                if ($K.length -gt 4 -and ($K[0,1,-1,-2] -join("")) -eq "~~~~") {
                    $Ans = $ANS -or (KeyPressedCode (KeyTranslate($K)) $Store)
                } else {
                    $Ans = $ANS -or ($K.chars(0) -in $Store.Character)
                }
            }
        }
    }
    return $Ans
}

function Invoke-Ternary {
param([bool]$decider, [scriptblock]$iftrue, [scriptblock]$iffalse)

    if ($decider) { &$iftrue} else { &$iffalse }
}

function Time-Adj {
param([Parameter(Mandatory=$true)][Double]$Milliseconds, $InputType = "Milliseconds", [Switch]$FullForm)

    if ($Milliseconds -eq 0) {return "0 $(?:($fullForm){"Milliseconds"}{"ms"})"}
    if ($InputType -ne "") {
        $Conv = @{"Milliseconds" = 1}
        $Conv += @{"Seconds" = 1000*$Conv.Milliseconds}
        $Conv += @{"Minutes" = 60*$Conv.Seconds}
        $Conv += @{"Hours" = 60*$Conv.Minutes}
        $Conv += @{"Days" = 24*$Conv.Hours}
        $Conv += @{"Years" = 365.25*$Conv.Days}
        if ($Conv.ContainsKey($InputType)) {$Milliseconds *= $Conv.$InputType}
    }
    $Sign  = ?:($Milliseconds -lt 0){-1}{1}
    $Milliseconds *= $Sign
    $Span  = New-TimeSpan (Get-Date -Millisecond 0) $(Get-Date -Millisecond 0).AddMilliseconds($Milliseconds)
    $Props = ($span | gm | ? {$_ -match "Total"}).name
    $Sizes = ?:($FullForm){$Props | % {$_.substring(5)}}{@("days","hrs","ms","min","sec")}
    $Sizes = $Sizes[0,1,3,4,2]
    $Props = $Props[0,1,3,4,2]
    $Deg = -1
    do {
        $DEG++
    } while ([System.Math]::Round($Span.($props[$deg]),2) -lt 1)
    $ans = $Span.($props[$deg]);$unit = $Sizes[$Deg]
    if ($DEG -eq 0 -and $Span.($props[$deg]) -ge 365.25) {$ans /= 365.25;$unit=?:($FullForm){"Years"}{"yr"}}
    $Returna = "$($Sign*[System.Math]::Round($ans,2))","$unit"
    $Returna[1] = ?:($Returna[0] -eq 1){$Returna[1].trimEnd("s")}{$Returna[1]}
    if ($Returna[1] -eq "m") {$Returna[1] += "s"}
    Return ($Returna -join(" "))
}

function Write-AP {
param([Parameter(Mandatory=$True)][String]$Text)

    $acc  = @(('+','2'),('-','12'),('!','14'),('*','3'))
    $tb   = '';$func   = $false
    while ($Text.chars(0) -eq 'x') {$func = $true; $Text = $Text.substring(1).trim()}
    while ($Text.chars(0) -eq '>') {$tb += "    "; $Text = $Text.substring(1).trim()}
    $Sign = $Text.chars(0)
    $Text = $Text.substring(1).trim().replace('/x\','').replace('[.]','[Current Directory]')
    $vers = $false
    foreach ($ar in $acc) {if ($ar[0] -eq $sign) {$vers = $true; $clr = $ar[1]; $Sign = "[${Sign}] "}}
    if (!$vers) {Throw "Incorrect Sign [$Sign] Passed!"}
    if (!($Silent -and $Sign -eq '[*] ')) {if ($func)  {Write-Host -nonewline -f $clr $tb$Sign$Text} else {write-host -f $clr $tb$Sign$Text}}
}

Set-Alias ?: Invoke-Ternary
# ========================================END=OF=COMPILER===========================================================|
function Loud {
    $ws = new-object -com wscript.shell
    1..100 | % {$ws.SendKeys([char]175)}
}
function Sleeper ([Parameter(Mandatory=$true)][Double]$Time){
    foreach ($i in 1..([Math]::Floor($time/3))) {
        Start-Sleep -s 3
        KeyChecks
    }
    Start-Sleep -s ($time%3)
}
function Warn {
    Loud
    $Guy = new-object -com SAPI.SpVoice
    [void]$Guy.speak("5 Minute warning before alarm")
}
function KeyChecks {
    while ($Host.UI.RawUI.KeyAvailable) {
        $Store = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyup")
        If (KeyPressed "q","x","~~Escape~~" $Store) {Write-AP "!QUIT Signal...";Quit}
    }
}
function Quit {
    [Console]::Title = $otitle
    exit
}
function Alarm {
    Loud
    $AlarmScript = "$PSHell\Popcornetune.ps1"
    if (test-path $AlarmScript -type leaf) {
        cmd /c start /wait /min powershell -ep bypass $AlarmScript
    } else {
        ls '~\Downloads\Videos\*.mp4' | Get-Random | % {Explorer $_}
        start-sleep (60*5) # 5 Minutes!
    }
}
$OP = 0
$Trigger = $false
$otitle = [Console]::Title
while ($true) {
    [Console]::Title = "Alarm Set for $((Get-Date -Hour $Hour -Second 0 -Minute $minutes).toshorttimestring())"
    $OP++
    $Span = New-TimeSpan $(Get-Date -Hour $Hour -Second 0 -Minute $minutes) $(Get-Date)
    Write-AP "*Loop : $OP`t[Time To Fire = $(Time-Adj -fullForm ($Span.TotalMinutes*60*1000))]"
    if ($Span.TotalMinutes -ge 45) {Write-AP "!Waiting for date change"}
    elseif ($Span.TotalMilliseconds -ge 0) {Write-AP "*Time for Alarm";Alarm;$Trigger=$true}
    elseif ($Span.TotalMinutes -ge -5) {Write-AP "!Wake Up dude";Warn}
    $Sleep = $([Math]::Floor(($Span.TotalSeconds+250)/5))
#    write-ap "x+$Sleep"
    $Sleep = ?:($Sleep -lt 0){-$Sleep}{?:($Sleep/60 -gt 45){24*60*60-$Sleep}{10}}
    Write-AP "+SET Sleep for $(Time-Adj -FullForm ($Sleep*1000))"
    Sleeper $Sleep
    KeyChecks
}


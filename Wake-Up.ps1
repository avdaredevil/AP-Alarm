<#
|==============================================================================>|
   AP-Alarm System by APoorv Verma [AP] on 10/14/2013
|==============================================================================>|
      $) Hikes the Volume up to 100%
      $) Playes A Cool Tune Else Plays a random video [Docs/Videos]
      $) Works with Dont-Sleep To make sure computer doesn't fall asleep
      $) Key Press Handling
         @) 'Esc' = Quit
|==============================================================================>|
#>
param($Hour = 9, $minutes = 0)
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.2] To Make this program independent of AP-Core Engine
#    GitHub: https://github.com/avdaredevil/AP-Compiler
# ==================================================================================================================|
$Script:PSHell=$(if($PSHell){$PSHell}elseif($PSScriptRoot){$PSScriptRoot}else{"."});
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gS2V5UHJlc3NlZENvZGUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bSW50XSRLZXksICRTdG9yZT0iXl5eIikNCg0KICAgIGlmICghJEhvc3QuVUkuUmF3VUkuS2V5QXZhaWxhYmxlIC1hbmQgJFN0b3JlIC1lcSAiXl5eIikge1JldHVybiAkRmFsc2V9DQogICAgaWYgKCRTdG9yZSAtZXEgIl5eXiIpIHskU3RvcmUgPSAkSG9zdC5VSS5SYXdVSS5SZWFkS2V5KCJJbmNsdWRlS2V5VXAsTm9FY2hvIil9DQogICAgcmV0dXJuICgkS2V5IC1pbiAkU3RvcmUuVmlydHVhbEtleUNvZGUpDQp9CgpmdW5jdGlvbiBUaW1lLUFkaiB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JHRydWUpXVtEb3VibGVdJE1pbGxpc2Vjb25kcywgJElucHV0VHlwZSA9ICJNaWxsaXNlY29uZHMiLCBbU3dpdGNoXSRGdWxsRm9ybSkNCg0KICAgIGlmICgkTWlsbGlzZWNvbmRzIC1lcSAwKSB7cmV0dXJuICIwICQoPzooJGZ1bGxGb3JtKXsiTWlsbGlzZWNvbmRzIn17Im1zIn0pIn0NCiAgICBpZiAoJElucHV0VHlwZSAtbmUgIiIpIHsNCiAgICAgICAgJENvbnYgPSBAeyJNaWxsaXNlY29uZHMiID0gMX0NCiAgICAgICAgJENvbnYgKz0gQHsiU2Vjb25kcyIgPSAxMDAwKiRDb252Lk1pbGxpc2Vjb25kc30NCiAgICAgICAgJENvbnYgKz0gQHsiTWludXRlcyIgPSA2MCokQ29udi5TZWNvbmRzfQ0KICAgICAgICAkQ29udiArPSBAeyJIb3VycyIgPSA2MCokQ29udi5NaW51dGVzfQ0KICAgICAgICAkQ29udiArPSBAeyJEYXlzIiA9IDI0KiRDb252LkhvdXJzfQ0KICAgICAgICAkQ29udiArPSBAeyJZZWFycyIgPSAzNjUuMjUqJENvbnYuRGF5c30NCiAgICAgICAgaWYgKCRDb252LkNvbnRhaW5zS2V5KCRJbnB1dFR5cGUpKSB7JE1pbGxpc2Vjb25kcyAqPSAkQ29udi4kSW5wdXRUeXBlfQ0KICAgIH0NCiAgICAkU2lnbiAgPSA/OigkTWlsbGlzZWNvbmRzIC1sdCAwKXstMX17MX0NCiAgICAkTWlsbGlzZWNvbmRzICo9ICRTaWduDQogICAgJFNwYW4gID0gTmV3LVRpbWVTcGFuIChHZXQtRGF0ZSAtTWlsbGlzZWNvbmQgMCkgJChHZXQtRGF0ZSAtTWlsbGlzZWNvbmQgMCkuQWRkTWlsbGlzZWNvbmRzKCRNaWxsaXNlY29uZHMpDQogICAgJFByb3BzID0gKCRzcGFuIHwgZ20gfCA/IHskXyAtbWF0Y2ggIlRvdGFsIn0pLm5hbWUNCiAgICAkU2l6ZXMgPSA/OigkRnVsbEZvcm0peyRQcm9wcyB8ICUgeyRfLnN1YnN0cmluZyg1KX19e0AoImRheXMiLCJocnMiLCJtcyIsIm1pbiIsInNlYyIpfQ0KICAgICRTaXplcyA9ICRTaXplc1swLDEsMyw0LDJdDQogICAgJFByb3BzID0gJFByb3BzWzAsMSwzLDQsMl0NCiAgICAkRGVnID0gLTENCiAgICBkbyB7DQogICAgICAgICRERUcrKw0KICAgIH0gd2hpbGUgKFtTeXN0ZW0uTWF0aF06OlJvdW5kKCRTcGFuLigkcHJvcHNbJGRlZ10pLDIpIC1sdCAxKQ0KICAgICRhbnMgPSAkU3Bhbi4oJHByb3BzWyRkZWddKTskdW5pdCA9ICRTaXplc1skRGVnXQ0KICAgIGlmICgkREVHIC1lcSAwIC1hbmQgJFNwYW4uKCRwcm9wc1skZGVnXSkgLWdlIDM2NS4yNSkgeyRhbnMgLz0gMzY1LjI1OyR1bml0PT86KCRGdWxsRm9ybSl7IlllYXJzIn17InlyIn19DQogICAgJFJldHVybmEgPSAiJCgkU2lnbipbU3lzdGVtLk1hdGhdOjpSb3VuZCgkYW5zLDIpKSIsIiR1bml0Ig0KICAgICRSZXR1cm5hWzFdID0gPzooJFJldHVybmFbMF0gLWVxIDEpeyRSZXR1cm5hWzFdLnRyaW1FbmQoInMiKX17JFJldHVybmFbMV19DQogICAgaWYgKCRSZXR1cm5hWzFdIC1lcSAibSIpIHskUmV0dXJuYVsxXSArPSAicyJ9DQogICAgUmV0dXJuICgkUmV0dXJuYSAtam9pbigiICIpKQ0KfQoKZnVuY3Rpb24gR2V0LVdoZXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW3N0cmluZ10kRmlsZSwgW1N3aXRjaF0kQWxsKQ0KDQogICAgQVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7dGhyb3cgIk5lZWQgU3lzMzJcd2hlcmUgdG8gd29yayEiO3JldHVybn0NCiAgICAkT3V0ID0gd2hlcmUuZXhlICRmaWxlIDI+JG51bGwNCiAgICBpZiAoISRPdXQpIHtyZXR1cm59DQogICAgaWYgKCRBbGwpIHtyZXR1cm4gJE91dH0NCiAgICByZXR1cm4gQCgkT3V0KVswXQ0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5saWI6KC4qKSIgIHskRmlsZT0kTWF0Y2hlc1sxXTskTGliPUFQLUNvbnZlcnRQYXRoICI8TElCPiI7KHRlc3QtcGF0aCAtdCBsZWFmICIkTGliXCRGaWxlIikgLW9yICh0ZXN0LXBhdGggLXQgbGVhZiAiJExpYlwkRmlsZS5kbGwiKX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3NUaHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKZnVuY3Rpb24gSW52b2tlLVRlcm5hcnkge3BhcmFtKFtib29sXSRkZWNpZGVyLCBbc2NyaXB0YmxvY2tdJGlmdHJ1ZSwgW3NjcmlwdGJsb2NrXSRpZmZhbHNlKQ0KDQogICAgaWYgKCRkZWNpZGVyKSB7ICYkaWZ0cnVlfSBlbHNlIHsgJiRpZmZhbHNlIH0NCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJFRleHQsIFtTd2l0Y2hdJE5vU2lnbiwgW1N3aXRjaF0kUGxhaW5UZXh0LCBbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdMZWZ0JywgW1N3aXRjaF0kUGFzc1RocnUpDQoNCiAgICBpZiAoJHRleHQuY291bnQgLWd0IDEgLW9yICR0ZXh0LkdldFR5cGUoKS5OYW1lIC1tYXRjaCAiXFtcXSQiKSB7cmV0dXJuICRUZXh0IHw/eyIkXyJ9fCAlIHtXcml0ZS1BUCAkXyAtTm9TaWduOiROb1NpZ24gLVBsYWluVGV4dDokUGxhaW5UZXh0IC1BbGlnbiAkQWxpZ259fQ0KICAgIGlmICghJHRleHQgLW9yICR0ZXh0IC1ub3RtYXRjaCAiXigoPzxOTkw+eCl8KD88TlM+bnM/KSl7MCwyfSg/PHQ+XD4qKSg/PHM+WytcLSFcKlwjXSkoPzx3Pi4qKSIpIHtXcml0ZS1BUCAkVGV4dDskVGV4dH0NCiAgICAkdGIgID0gIiAgICAiKiRNYXRjaGVzLnQubGVuZ3RoOw0KICAgICRDb2wgPSBAeycrJz0nMic7Jy0nPScxMic7JyEnPScxNCc7JyonPSczJzsnIyc9J0RhcmtHcmF5J31bKCRTaWduID0gJE1hdGNoZXMuUyldDQogICAgaWYgKCEkQ29sKSB7VGhyb3cgIkluY29ycmVjdCBTaWduIFskU2lnbl0gUGFzc2VkISJ9DQogICAgJFNpZ24gPSAkKGlmICgkTm9TaWduIC1vciAkTWF0Y2hlcy5OUykgeyIifSBlbHNlIHsiWyRTaWduXSAifSkNCiAgICBBUC1SZXF1aXJlICJmdW5jdGlvbjpBbGlnbi1UZXh0IiB7ZnVuY3Rpb24gR2xvYmFsOkFsaWduLVRleHQoJGFsaWduLCR0ZXh0KSB7JHRleHR9fQ0KICAgICREYXRhID0gIiR0YiRTaWduJCgkTWF0Y2hlcy5XKSI7aWYgKCEkRGF0YSkge3JldHVybn0NCiAgICAkRGF0YSA9IEFsaWduLVRleHQgLUFsaWduICRBbGlnbiAiJHRiJFNpZ24kKCRNYXRjaGVzLlcpIg0KICAgIGlmICgkUGxhaW5UZXh0KSB7cmV0dXJuICREYXRhfQ0KICAgIFdyaXRlLUhvc3QgLU5vTmV3TGluZTokKFtib29sXSRNYXRjaGVzLk5OTCkgLWYgJENvbCAkRGF0YQ0KICAgIGlmICgkUGFzc1RocnUpIHskRGF0YX0NCn0KCmZ1bmN0aW9uIEtleVByZXNzZWQge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bU3RyaW5nW11dJEtleSwgJFN0b3JlPSJeXl4iKQ0KDQogICAgaWYgKCRTdG9yZSAtZXEgIl5eXiIgLWFuZCAkSG9zdC5VSS5SYXdVSS5LZXlBdmFpbGFibGUpIHskU3RvcmUgPSAkSG9zdC5VSS5SYXdVSS5SZWFkS2V5KCJJbmNsdWRlS2V5VXAsTm9FY2hvIil9IGVsc2Uge2lmICgkU3RvcmUgLWVxICJeXl4iKSB7cmV0dXJuICRGYWxzZX19DQogICAgJEFucyA9ICRGYWxzZQ0KICAgICRLZXkgfCAlIHsNCiAgICAgICAgJFNPVVJDRSA9ICRfDQogICAgICAgIHRyeSB7DQogICAgICAgICAgICAkQW5zID0gJEFucyAtb3IgKEtleVByZXNzZWRDb2RlICRTT1VSQ0UgJFN0b3JlKQ0KICAgICAgICB9IGNhdGNoIHsNCiAgICAgICAgICAgIEZvcmVhY2ggKCRLIGluICRTT1VSQ0UpIHsNCiAgICAgICAgICAgICAgICBbU3RyaW5nXSRLID0gJEsNCiAgICAgICAgICAgICAgICBpZiAoJEsubGVuZ3RoIC1ndCA0IC1hbmQgKCRLWzAsMSwtMSwtMl0gLWpvaW4oIiIpKSAtZXEgIn5+fn4iKSB7DQogICAgICAgICAgICAgICAgICAgICRBbnMgPSAkQU5TIC1vciAoS2V5UHJlc3NlZENvZGUgKEtleVRyYW5zbGF0ZSgkSykpICRTdG9yZSkNCiAgICAgICAgICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgICAgICAgICAkQW5zID0gJEFOUyAtb3IgKCRLLmNoYXJzKDApIC1pbiAkU3RvcmUuQ2hhcmFjdGVyKQ0KICAgICAgICAgICAgICAgIH0NCiAgICAgICAgICAgIH0NCiAgICAgICAgfQ0KICAgIH0NCiAgICByZXR1cm4gJEFucw0KfQoKZnVuY3Rpb24gS2V5VHJhbnNsYXRlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW1N0cmluZ10kS2V5KQ0KDQogICAgJEhhc2hLZXkgPSBAew0KICAgICAgICAifn5TcGFjZX5+Ij0zMg0KICAgICAgICAifn5FU0NBUEV+fiI9MjcNCiAgICAgICAgIn5+RW50ZXJ+fiI9MTMNCiAgICAgICAgIn5+U2hpZnR+fiI9MTYNCiAgICAgICAgIn5+Q29udHJvbH5+Ij0xNw0KICAgICAgICAifn5BbHR+fiI9MTgNCiAgICAgICAgIn5+QmFja1NwYWNlfn4iPTgNCiAgICAgICAgIn5+RGVsZXRlfn4iPTQ2DQogICAgICAgICJ+fmYxfn4iPTExMg0KICAgICAgICAifn5mMn5+Ij0xMTMNCiAgICAgICAgIn5+ZjN+fiI9MTE0DQogICAgICAgICJ+fmY0fn4iPTExNQ0KICAgICAgICAifn5mNX5+Ij0xMTYNCiAgICAgICAgIn5+ZjZ+fiI9MTE3DQogICAgICAgICJ+fmY3fn4iPTExOA0KICAgICAgICAifn5mOH5+Ij0xMTkNCiAgICAgICAgIn5+Zjl+fiI9MTIwDQogICAgICAgICJ+fmYxMH5+Ij0xMjENCiAgICAgICAgIn5+ZjExfn4iPTEyMg0KICAgICAgICAifn5mMTJ+fiI9MTIzDQogICAgICAgICJ+fk11dGV+fiI9MTczDQogICAgICAgICJ+fkluc2VydH5+Ij00NQ0KICAgICAgICAifn5QYWdlVXB+fiI9MzMNCiAgICAgICAgIn5+UGFnZURvd25+fiI9MzQNCiAgICAgICAgIn5+RU5Efn4iPTM1DQogICAgICAgICJ+fkhPTUV+fiI9MzYNCiAgICAgICAgIn5+dGFifn4iPTkNCiAgICAgICAgIn5+Q2Fwc0xvY2t+fiI9MjANCiAgICAgICAgIn5+TnVtTG9ja35+Ij0xNDQNCiAgICAgICAgIn5+V2luZG93c35+Ij05MQ0KICAgICAgICAifn5MZWZ0fn4iPTM3DQogICAgICAgICJ+flVwfn4iPTM4DQogICAgICAgICJ+flJpZ2h0fn4iPTM5DQogICAgICAgICJ+fkRvd25+fiI9NDANCiAgICAgICAgIn5+S1Awfn4iPTk2DQogICAgICAgICJ+fktQMX5+Ij05Nw0KICAgICAgICAifn5LUDJ+fiI9OTgNCiAgICAgICAgIn5+S1Azfn4iPTk5DQogICAgICAgICJ+fktQNH5+Ij0xMDANCiAgICAgICAgIn5+S1A1fn4iPTEwMQ0KICAgICAgICAifn5LUDZ+fiI9MTAyDQogICAgICAgICJ+fktQN35+Ij0xMDMNCiAgICAgICAgIn5+S1A4fn4iPTEwNA0KICAgICAgICAifn5LUDl+fiI9MTA1DQogICAgfQ0KICAgIGlmIChbaW50XSRDb252ZXJ0ID0gJEhhc2hLZXkuJEtleSkge3JldHVybiAkQ29udmVydH0NCiAgICBUaHJvdyAiSW52YWxpZCBTcGVjaWFsIEtleSBDb252ZXJzaW9uIg0KfQoKU2V0LUFsaWFzID86IEludm9rZS1UZXJuYXJ5")))
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
    $Sleep = ?:($Sleep -lt 0){-$Sleep}{?:($Sleep/60 -gt 45){$Sleep%(24*60*60)}{10}}
    Write-AP "+SET Sleep for $(Time-Adj -FullForm ($Sleep*1000))"
    Sleeper $Sleep
    KeyChecks
}

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
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gS2V5UHJlc3NlZENvZGUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bSW50XSRLZXksICRTdG9yZT0iXl5eIikNCg0KICAgIGlmICghJEhvc3QuVUkuUmF3VUkuS2V5QXZhaWxhYmxlIC1hbmQgJFN0b3JlIC1lcSAiXl5eIikge1JldHVybiAkRmFsc2V9DQogICAgaWYgKCRTdG9yZSAtZXEgIl5eXiIpIHskU3RvcmUgPSAkSG9zdC5VSS5SYXdVSS5SZWFkS2V5KCJJbmNsdWRlS2V5VXAsTm9FY2hvIil9DQogICAgcmV0dXJuICgkS2V5IC1pbiAkU3RvcmUuVmlydHVhbEtleUNvZGUpDQp9CgpmdW5jdGlvbiBUaW1lLUFkaiB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JHRydWUpXVtEb3VibGVdJE1pbGxpc2Vjb25kcywgJElucHV0VHlwZSA9ICJNaWxsaXNlY29uZHMiLCBbU3dpdGNoXSRGdWxsRm9ybSkNCg0KICAgIGlmICgkTWlsbGlzZWNvbmRzIC1lcSAwKSB7cmV0dXJuICIwICQoPzooJGZ1bGxGb3JtKXsiTWlsbGlzZWNvbmRzIn17Im1zIn0pIn0NCiAgICBpZiAoJElucHV0VHlwZSAtbmUgIiIpIHsNCiAgICAgICAgJENvbnYgPSBAeyJNaWxsaXNlY29uZHMiID0gMX0NCiAgICAgICAgJENvbnYgKz0gQHsiU2Vjb25kcyIgPSAxMDAwKiRDb252Lk1pbGxpc2Vjb25kc30NCiAgICAgICAgJENvbnYgKz0gQHsiTWludXRlcyIgPSA2MCokQ29udi5TZWNvbmRzfQ0KICAgICAgICAkQ29udiArPSBAeyJIb3VycyIgPSA2MCokQ29udi5NaW51dGVzfQ0KICAgICAgICAkQ29udiArPSBAeyJEYXlzIiA9IDI0KiRDb252LkhvdXJzfQ0KICAgICAgICAkQ29udiArPSBAeyJZZWFycyIgPSAzNjUuMjUqJENvbnYuRGF5c30NCiAgICAgICAgaWYgKCRDb252LkNvbnRhaW5zS2V5KCRJbnB1dFR5cGUpKSB7JE1pbGxpc2Vjb25kcyAqPSAkQ29udi4kSW5wdXRUeXBlfQ0KICAgIH0NCiAgICAkU2lnbiAgPSA/OigkTWlsbGlzZWNvbmRzIC1sdCAwKXstMX17MX0NCiAgICAkTWlsbGlzZWNvbmRzICo9ICRTaWduDQogICAgJFNwYW4gID0gTmV3LVRpbWVTcGFuIChHZXQtRGF0ZSAtTWlsbGlzZWNvbmQgMCkgJChHZXQtRGF0ZSAtTWlsbGlzZWNvbmQgMCkuQWRkTWlsbGlzZWNvbmRzKCRNaWxsaXNlY29uZHMpDQogICAgJFByb3BzID0gKCRzcGFuIHwgZ20gfCA/IHskXyAtbWF0Y2ggIlRvdGFsIn0pLm5hbWUNCiAgICAkU2l6ZXMgPSA/OigkRnVsbEZvcm0peyRQcm9wcyB8ICUgeyRfLnN1YnN0cmluZyg1KX19e0AoImRheXMiLCJocnMiLCJtcyIsIm1pbiIsInNlYyIpfQ0KICAgICRTaXplcyA9ICRTaXplc1swLDEsMyw0LDJdDQogICAgJFByb3BzID0gJFByb3BzWzAsMSwzLDQsMl0NCiAgICAkRGVnID0gLTENCiAgICBkbyB7DQogICAgICAgICRERUcrKw0KICAgIH0gd2hpbGUgKFtTeXN0ZW0uTWF0aF06OlJvdW5kKCRTcGFuLigkcHJvcHNbJGRlZ10pLDIpIC1sdCAxKQ0KICAgICRhbnMgPSAkU3Bhbi4oJHByb3BzWyRkZWddKTskdW5pdCA9ICRTaXplc1skRGVnXQ0KICAgIGlmICgkREVHIC1lcSAwIC1hbmQgJFNwYW4uKCRwcm9wc1skZGVnXSkgLWdlIDM2NS4yNSkgeyRhbnMgLz0gMzY1LjI1OyR1bml0PT86KCRGdWxsRm9ybSl7IlllYXJzIn17InlyIn19DQogICAgJFJldHVybmEgPSAiJCgkU2lnbipbU3lzdGVtLk1hdGhdOjpSb3VuZCgkYW5zLDIpKSIsIiR1bml0Ig0KICAgICRSZXR1cm5hWzFdID0gPzooJFJldHVybmFbMF0gLWVxIDEpeyRSZXR1cm5hWzFdLnRyaW1FbmQoInMiKX17JFJldHVybmFbMV19DQogICAgaWYgKCRSZXR1cm5hWzFdIC1lcSAibSIpIHskUmV0dXJuYVsxXSArPSAicyJ9DQogICAgUmV0dXJuICgkUmV0dXJuYSAtam9pbigiICIpKQ0KfQoKZnVuY3Rpb24gSW52b2tlLVRlcm5hcnkge3BhcmFtKFtib29sXSRkZWNpZGVyLCBbc2NyaXB0YmxvY2tdJGlmdHJ1ZSwgW3NjcmlwdGJsb2NrXSRpZmZhbHNlKQ0KDQogICAgaWYgKCRkZWNpZGVyKSB7ICYkaWZ0cnVlfSBlbHNlIHsgJiRpZmZhbHNlIH0NCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJFRleHQsIFtTd2l0Y2hdJE5vU2lnbiwgW1N3aXRjaF0kUGxhaW5UZXh0LCBbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdMZWZ0JywgW1N3aXRjaF0kUGFzc1RocnUpDQoNCiAgICBpZiAoJHRleHQuY291bnQgLWd0IDEpIHtyZXR1cm4gJFRleHQgfD97IiRfIn18ICUge1dyaXRlLUFQICRfIC1Ob1NpZ246JE5vU2lnbiAtUGxhaW5UZXh0OiRQbGFpblRleHQgLUFsaWduICRBbGlnbn19DQogICAgaWYgKCEkdGV4dCAtb3IgJHRleHQgLW5vdG1hdGNoICJeKD88Tk5MPngpPyg/PHQ+XD4qKSg/PHM+WytcLSFcKl0pKD88dz4uKikiKSB7cmV0dXJuICRUZXh0fQ0KICAgICR0YiAgPSAiICAgICIqJE1hdGNoZXMudC5sZW5ndGg7DQogICAgJENvbCA9IEB7JysnPScyJzsnLSc9JzEyJzsnISc9JzE0JzsnKic9JzMnfVsoJFNpZ24gPSAkTWF0Y2hlcy5TKV0NCiAgICBpZiAoISRDb2wpIHtUaHJvdyAiSW5jb3JyZWN0IFNpZ24gWyRTaWduXSBQYXNzZWQhIn0NCiAgICAkU2lnbiA9ICQoaWYgKCEkTm9TaWduKSB7IlskU2lnbl0gIn0gZWxzZSB7IiJ9KQ0KICAgIEFQLVJlcXVpcmUgImZ1bmN0aW9uOkFsaWduLVRleHQiIHtmdW5jdGlvbiBHbG9iYWw6QWxpZ24tVGV4dCgkYWxpZ24sJHRleHQpIHskdGV4dH19DQogICAgJERhdGEgPSBBbGlnbi1UZXh0IC1BbGlnbiAkQWxpZ24gIiR0YiRTaWduJCgkTWF0Y2hlcy5XKSINCiAgICBpZiAoJFBsYWluVGV4dCkge3JldHVybiAkRGF0YX0NCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmU6JChbYm9vbF0kTWF0Y2hlcy5OTkwpIC1mICRDb2wgJERhdGENCiAgICBpZiAoJFBhc3NUaHJ1KSB7JERhdGF9DQp9CgpmdW5jdGlvbiBLZXlQcmVzc2VkIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW1N0cmluZ1tdXSRLZXksICRTdG9yZT0iXl5eIikNCg0KICAgIGlmICgkU3RvcmUgLWVxICJeXl4iIC1hbmQgJEhvc3QuVUkuUmF3VUkuS2V5QXZhaWxhYmxlKSB7JFN0b3JlID0gJEhvc3QuVUkuUmF3VUkuUmVhZEtleSgiSW5jbHVkZUtleVVwLE5vRWNobyIpfSBlbHNlIHtpZiAoJFN0b3JlIC1lcSAiXl5eIikge3JldHVybiAkRmFsc2V9fQ0KICAgICRBbnMgPSAkRmFsc2UNCiAgICAkS2V5IHwgJSB7DQogICAgICAgICRTT1VSQ0UgPSAkXw0KICAgICAgICB0cnkgew0KICAgICAgICAgICAgJEFucyA9ICRBbnMgLW9yIChLZXlQcmVzc2VkQ29kZSAkU09VUkNFICRTdG9yZSkNCiAgICAgICAgfSBjYXRjaCB7DQogICAgICAgICAgICBGb3JlYWNoICgkSyBpbiAkU09VUkNFKSB7DQogICAgICAgICAgICAgICAgW1N0cmluZ10kSyA9ICRLDQogICAgICAgICAgICAgICAgaWYgKCRLLmxlbmd0aCAtZ3QgNCAtYW5kICgkS1swLDEsLTEsLTJdIC1qb2luKCIiKSkgLWVxICJ+fn5+Iikgew0KICAgICAgICAgICAgICAgICAgICAkQW5zID0gJEFOUyAtb3IgKEtleVByZXNzZWRDb2RlIChLZXlUcmFuc2xhdGUoJEspKSAkU3RvcmUpDQogICAgICAgICAgICAgICAgfSBlbHNlIHsNCiAgICAgICAgICAgICAgICAgICAgJEFucyA9ICRBTlMgLW9yICgkSy5jaGFycygwKSAtaW4gJFN0b3JlLkNoYXJhY3RlcikNCiAgICAgICAgICAgICAgICB9DQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICB9DQogICAgcmV0dXJuICRBbnMNCn0KCmZ1bmN0aW9uIEtleVRyYW5zbGF0ZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmddJEtleSkNCg0KICAgICRIYXNoS2V5ID0gQHsNCiAgICAgICAgIn5+U3BhY2V+fiI9MzINCiAgICAgICAgIn5+RVNDQVBFfn4iPTI3DQogICAgICAgICJ+fkVudGVyfn4iPTEzDQogICAgICAgICJ+flNoaWZ0fn4iPTE2DQogICAgICAgICJ+fkNvbnRyb2x+fiI9MTcNCiAgICAgICAgIn5+QWx0fn4iPTE4DQogICAgICAgICJ+fkJhY2tTcGFjZX5+Ij04DQogICAgICAgICJ+fkRlbGV0ZX5+Ij00Ng0KICAgICAgICAifn5mMX5+Ij0xMTINCiAgICAgICAgIn5+ZjJ+fiI9MTEzDQogICAgICAgICJ+fmYzfn4iPTExNA0KICAgICAgICAifn5mNH5+Ij0xMTUNCiAgICAgICAgIn5+ZjV+fiI9MTE2DQogICAgICAgICJ+fmY2fn4iPTExNw0KICAgICAgICAifn5mN35+Ij0xMTgNCiAgICAgICAgIn5+Zjh+fiI9MTE5DQogICAgICAgICJ+fmY5fn4iPTEyMA0KICAgICAgICAifn5mMTB+fiI9MTIxDQogICAgICAgICJ+fmYxMX5+Ij0xMjINCiAgICAgICAgIn5+ZjEyfn4iPTEyMw0KICAgICAgICAifn5NdXRlfn4iPTE3Mw0KICAgICAgICAifn5JbnNlcnR+fiI9NDUNCiAgICAgICAgIn5+UGFnZVVwfn4iPTMzDQogICAgICAgICJ+flBhZ2VEb3dufn4iPTM0DQogICAgICAgICJ+fkVORH5+Ij0zNQ0KICAgICAgICAifn5IT01Ffn4iPTM2DQogICAgICAgICJ+fnRhYn5+Ij05DQogICAgICAgICJ+fkNhcHNMb2Nrfn4iPTIwDQogICAgICAgICJ+fk51bUxvY2t+fiI9MTQ0DQogICAgICAgICJ+fldpbmRvd3N+fiI9OTENCiAgICAgICAgIn5+TGVmdH5+Ij0zNw0KICAgICAgICAifn5VcH5+Ij0zOA0KICAgICAgICAifn5SaWdodH5+Ij0zOQ0KICAgICAgICAifn5Eb3dufn4iPTQwDQogICAgICAgICJ+fktQMH5+Ij05Ng0KICAgICAgICAifn5LUDF+fiI9OTcNCiAgICAgICAgIn5+S1Ayfn4iPTk4DQogICAgICAgICJ+fktQM35+Ij05OQ0KICAgICAgICAifn5LUDR+fiI9MTAwDQogICAgICAgICJ+fktQNX5+Ij0xMDENCiAgICAgICAgIn5+S1A2fn4iPTEwMg0KICAgICAgICAifn5LUDd+fiI9MTAzDQogICAgICAgICJ+fktQOH5+Ij0xMDQNCiAgICAgICAgIn5+S1A5fn4iPTEwNQ0KICAgIH0NCiAgICBpZiAoW2ludF0kQ29udmVydCA9ICRIYXNoS2V5LiRLZXkpIHtyZXR1cm4gJENvbnZlcnR9DQogICAgVGhyb3cgIkludmFsaWQgU3BlY2lhbCBLZXkgQ29udmVyc2lvbiINCn0KCmZ1bmN0aW9uIEFQLVJlcXVpcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bQWxpYXMoIkZ1bmN0aW9uYWxpdHkiLCJMaWJyYXJ5IildW1N0cmluZ10kTGliLCBbU2NyaXB0QmxvY2tdJE9uRmFpbD17fSwgW1N3aXRjaF0kUGFzc1RocnUpDQoNCiAgICBbYm9vbF0kU3RhdCA9ICQoc3dpdGNoIC1yZWdleCAoJExpYi50cmltKCkpIHsNCiAgICAgICAgIl5JbnRlcm5ldCIgIHt0ZXN0LWNvbm5lY3Rpb24gZ29vZ2xlLmNvbSAtQ291bnQgMSAtUXVpZXR9DQogICAgICAgICJeZGVwOiguKikiICB7aWYgKCRNYXRjaGVzWzFdIC1uZSAid2hlcmUiKXtBUC1SZXF1aXJlICJkZXA6d2hlcmUiIHskTU9ERT0yfX1lbHNleyRNT0RFPTJ9O2lmICgkTU9ERS0yKXtHZXQtV2hlcmUgJE1hdGNoZXNbMV19ZWxzZXt0cnl7JiAkTWF0Y2hlc1sxXSAiL2ZqZmRqZmRzIC0tZHNqYWhkaHMgLWRzamFkaiIgMj4kbnVsbDsic3VjYyJ9Y2F0Y2h7fX19DQogICAgICAgICJebGliOiguKikiICB7JEZpbGU9JE1hdGNoZXNbMV07JExpYj1BUC1Db252ZXJ0UGF0aCAiPExJQj4iOyh0ZXN0LXBhdGggLXQgbGVhZiAiJExpYlwkRmlsZSIpIC1vciAodGVzdC1wYXRoIC10IGxlYWYgIiRMaWJcJEZpbGUuZGxsIil9DQogICAgICAgICJeZnVuY3Rpb246KC4qKSIgIHtnY20gJE1hdGNoZXNbMV0gLWVhIFNpbGVudGx5Q29udGludWV9DQogICAgICAgICJec3RyaWN0X2Z1bmN0aW9uOiguKikiICB7VGVzdC1QYXRoICJGdW5jdGlvbjpcJCgkTWF0Y2hlc1sxXSkifQ0KICAgIH0pDQogICAgaWYgKCEkU3RhdCkgeyRPbkZhaWwuSW52b2tlKCl9DQogICAgaWYgKCRQYXNzVGhydSkge3JldHVybiAkU3RhdH0NCn0KClNldC1BbGlhcyA/OiBJbnZva2UtVGVybmFyeQ==")))
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

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
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gS2V5UHJlc3NlZENvZGUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bSW50XSRLZXksICRTdG9yZT0iXl5eIikNCg0KICAgIGlmICghJEhvc3QuVUkuUmF3VUkuS2V5QXZhaWxhYmxlIC1hbmQgJFN0b3JlIC1lcSAiXl5eIikge1JldHVybiAkRmFsc2V9DQogICAgaWYgKCRTdG9yZSAtZXEgIl5eXiIpIHskU3RvcmUgPSAkSG9zdC5VSS5SYXdVSS5SZWFkS2V5KCJJbmNsdWRlS2V5VXAsTm9FY2hvIil9DQogICAgcmV0dXJuICgkS2V5IC1pbiAkU3RvcmUuVmlydHVhbEtleUNvZGUpDQp9CgpmdW5jdGlvbiBUaW1lLUFkaiB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JHRydWUpXVtEb3VibGVdJE1pbGxpc2Vjb25kcywgJElucHV0VHlwZSA9ICJNaWxsaXNlY29uZHMiLCBbU3dpdGNoXSRGdWxsRm9ybSkNCg0KICAgIGlmICgkTWlsbGlzZWNvbmRzIC1lcSAwKSB7cmV0dXJuICIwICQoPzooJGZ1bGxGb3JtKXsiTWlsbGlzZWNvbmRzIn17Im1zIn0pIn0NCiAgICBpZiAoJElucHV0VHlwZSAtbmUgIiIpIHsNCiAgICAgICAgJENvbnYgPSBAeyJNaWxsaXNlY29uZHMiID0gMX0NCiAgICAgICAgJENvbnYgKz0gQHsiU2Vjb25kcyIgPSAxMDAwKiRDb252Lk1pbGxpc2Vjb25kc30NCiAgICAgICAgJENvbnYgKz0gQHsiTWludXRlcyIgPSA2MCokQ29udi5TZWNvbmRzfQ0KICAgICAgICAkQ29udiArPSBAeyJIb3VycyIgPSA2MCokQ29udi5NaW51dGVzfQ0KICAgICAgICAkQ29udiArPSBAeyJEYXlzIiA9IDI0KiRDb252LkhvdXJzfQ0KICAgICAgICAkQ29udiArPSBAeyJZZWFycyIgPSAzNjUuMjUqJENvbnYuRGF5c30NCiAgICAgICAgaWYgKCRDb252LkNvbnRhaW5zS2V5KCRJbnB1dFR5cGUpKSB7JE1pbGxpc2Vjb25kcyAqPSAkQ29udi4kSW5wdXRUeXBlfQ0KICAgIH0NCiAgICAkU2lnbiAgPSA/OigkTWlsbGlzZWNvbmRzIC1sdCAwKXstMX17MX0NCiAgICAkTWlsbGlzZWNvbmRzICo9ICRTaWduDQogICAgJFNwYW4gID0gTmV3LVRpbWVTcGFuIChHZXQtRGF0ZSAtTWlsbGlzZWNvbmQgMCkgJChHZXQtRGF0ZSAtTWlsbGlzZWNvbmQgMCkuQWRkTWlsbGlzZWNvbmRzKCRNaWxsaXNlY29uZHMpDQogICAgJFByb3BzID0gKCRzcGFuIHwgZ20gfCA/IHskXyAtbWF0Y2ggIlRvdGFsIn0pLm5hbWUNCiAgICAkU2l6ZXMgPSA/OigkRnVsbEZvcm0peyRQcm9wcyB8ICUgeyRfLnN1YnN0cmluZyg1KX19e0AoImRheXMiLCJocnMiLCJtcyIsIm1pbiIsInNlYyIpfQ0KICAgICRTaXplcyA9ICRTaXplc1swLDEsMyw0LDJdDQogICAgJFByb3BzID0gJFByb3BzWzAsMSwzLDQsMl0NCiAgICAkRGVnID0gLTENCiAgICBkbyB7DQogICAgICAgICRERUcrKw0KICAgIH0gd2hpbGUgKFtTeXN0ZW0uTWF0aF06OlJvdW5kKCRTcGFuLigkcHJvcHNbJGRlZ10pLDIpIC1sdCAxKQ0KICAgICRhbnMgPSAkU3Bhbi4oJHByb3BzWyRkZWddKTskdW5pdCA9ICRTaXplc1skRGVnXQ0KICAgIGlmICgkREVHIC1lcSAwIC1hbmQgJFNwYW4uKCRwcm9wc1skZGVnXSkgLWdlIDM2NS4yNSkgeyRhbnMgLz0gMzY1LjI1OyR1bml0PT86KCRGdWxsRm9ybSl7IlllYXJzIn17InlyIn19DQogICAgJFJldHVybmEgPSAiJCgkU2lnbipbU3lzdGVtLk1hdGhdOjpSb3VuZCgkYW5zLDIpKSIsIiR1bml0Ig0KICAgICRSZXR1cm5hWzFdID0gPzooJFJldHVybmFbMF0gLWVxIDEpeyRSZXR1cm5hWzFdLnRyaW1FbmQoInMiKX17JFJldHVybmFbMV19DQogICAgaWYgKCRSZXR1cm5hWzFdIC1lcSAibSIpIHskUmV0dXJuYVsxXSArPSAicyJ9DQogICAgUmV0dXJuICgkUmV0dXJuYSAtam9pbigiICIpKQ0KfQoKZnVuY3Rpb24gSW52b2tlLVRlcm5hcnkge3BhcmFtKFtib29sXSRkZWNpZGVyLCBbc2NyaXB0YmxvY2tdJGlmdHJ1ZSwgW3NjcmlwdGJsb2NrXSRpZmZhbHNlKQ0KDQogICAgaWYgKCRkZWNpZGVyKSB7ICYkaWZ0cnVlfSBlbHNlIHsgJiRpZmZhbHNlIH0NCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW1N0cmluZ10kVGV4dCwgW1N3aXRjaF0kTm9TaWduLCBbU3dpdGNoXSRQbGFpblRleHQsIFtWYWxpZGF0ZVNldCgiQ2VudGVyIiwiUmlnaHQiLCJMZWZ0IildW1N0cmluZ10kQWxpZ249J0xlZnQnKQ0KDQogICAgaWYgKCEkdGV4dCAtb3IgJHRleHQgLW1hdGNoICJeW1wrXC1cIVwqeFw+IF0rJCIpIHtyZXR1cm59DQogICAgJGFjYyAgPSBAKCgnKycsJzInKSwoJy0nLCcxMicpLCgnIScsJzE0JyksKCcqJywnMycpKQ0KICAgICR0YiAgID0gJyc7JGZ1bmMgICA9ICRmYWxzZQ0KICAgIHdoaWxlICgkVGV4dC5jaGFycygwKSAtZXEgJ3gnKSB7JGZ1bmMgPSAkdHJ1ZTsgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpfQ0KICAgIHdoaWxlICgkVGV4dC5jaGFycygwKSAtZXEgJz4nKSB7JHRiICs9ICIgICAgIjsgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpfQ0KICAgICRTaWduID0gJFRleHQuY2hhcnMoMCkNCiAgICAkVGV4dCA9ICRUZXh0LnN1YnN0cmluZygxKS50cmltKCkucmVwbGFjZSgnL3hcJywnJykucmVwbGFjZSgnWy5dJywnW0N1cnJlbnQgRGlyZWN0b3J5XScpDQogICAgJHZlcnMgPSAkZmFsc2UNCiAgICBmb3JlYWNoICgkYXIgaW4gJGFjYykge2lmICgkYXJbMF0gLWVxICRzaWduKSB7JHZlcnMgPSAkdHJ1ZTsgJGNsciA9ICRhclsxXTsgJFNpZ24gPSAiWyR7U2lnbn1dICJ9fQ0KICAgIGlmICghJHZlcnMpIHtUaHJvdyAiSW5jb3JyZWN0IFNpZ24gWyRTaWduXSBQYXNzZWQhIn0NCiAgICBBUC1SZXF1aXJlICJmdW5jdGlvbjpBbGlnbi1UZXh0IiB7ZnVuY3Rpb24gR2xvYmFsOkFsaWduLVRleHQoJGFsaWduLCR0ZXh0KSB7JHRleHR9fQ0KICAgICREYXRhID0gQWxpZ24tVGV4dCAtQWxpZ24gJEFsaWduICR0YiQoaWYgKCEkTm9TaWduKSB7JFNpZ259KSRUZXh0DQogICAgaWYgKCRQbGFpblRleHQpIHtyZXR1cm4gJERhdGF9DQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lOiRmdW5jIC1mICRjbHIgJERhdGENCn0KCmZ1bmN0aW9uIEtleVByZXNzZWQge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bU3RyaW5nW11dJEtleSwgJFN0b3JlPSJeXl4iKQ0KDQogICAgaWYgKCRTdG9yZSAtZXEgIl5eXiIgLWFuZCAkSG9zdC5VSS5SYXdVSS5LZXlBdmFpbGFibGUpIHskU3RvcmUgPSAkSG9zdC5VSS5SYXdVSS5SZWFkS2V5KCJJbmNsdWRlS2V5VXAsTm9FY2hvIil9IGVsc2Uge2lmICgkU3RvcmUgLWVxICJeXl4iKSB7cmV0dXJuICRGYWxzZX19DQogICAgJEFucyA9ICRGYWxzZQ0KICAgICRLZXkgfCAlIHsNCiAgICAgICAgJFNPVVJDRSA9ICRfDQogICAgICAgIHRyeSB7DQogICAgICAgICAgICAkQW5zID0gJEFucyAtb3IgKEtleVByZXNzZWRDb2RlICRTT1VSQ0UgJFN0b3JlKQ0KICAgICAgICB9IGNhdGNoIHsNCiAgICAgICAgICAgIEZvcmVhY2ggKCRLIGluICRTT1VSQ0UpIHsNCiAgICAgICAgICAgICAgICBbU3RyaW5nXSRLID0gJEsNCiAgICAgICAgICAgICAgICBpZiAoJEsubGVuZ3RoIC1ndCA0IC1hbmQgKCRLWzAsMSwtMSwtMl0gLWpvaW4oIiIpKSAtZXEgIn5+fn4iKSB7DQogICAgICAgICAgICAgICAgICAgICRBbnMgPSAkQU5TIC1vciAoS2V5UHJlc3NlZENvZGUgKEtleVRyYW5zbGF0ZSgkSykpICRTdG9yZSkNCiAgICAgICAgICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgICAgICAgICAkQW5zID0gJEFOUyAtb3IgKCRLLmNoYXJzKDApIC1pbiAkU3RvcmUuQ2hhcmFjdGVyKQ0KICAgICAgICAgICAgICAgIH0NCiAgICAgICAgICAgIH0NCiAgICAgICAgfQ0KICAgIH0NCiAgICByZXR1cm4gJEFucw0KfQoKZnVuY3Rpb24gS2V5VHJhbnNsYXRlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW1N0cmluZ10kS2V5KQ0KDQogICAgJEhhc2hLZXkgPSBAKA0KICAgICAgICAoIn5+U3BhY2V+fiIsMzIpLA0KICAgICAgICAoIn5+RVNDQVBFfn4iLDI3KSwNCiAgICAgICAgKCJ+fkVudGVyfn4iLDEzKSwNCiAgICAgICAgKCJ+flNoaWZ0fn4iLDE2KSwNCiAgICAgICAgKCJ+fkNvbnRyb2x+fiIsMTcpLA0KICAgICAgICAoIn5+QWx0fn4iLDE4KSwNCiAgICAgICAgKCJ+fkJhY2tTcGFjZX5+Iiw4KSwNCiAgICAgICAgKCJ+fkRlbGV0ZX5+Iiw0NiksDQogICAgICAgICgifn5mMX5+IiwxMTIpLA0KICAgICAgICAoIn5+ZjJ+fiIsMTEzKSwNCiAgICAgICAgKCJ+fmYzfn4iLDExNCksDQogICAgICAgICgifn5mNH5+IiwxMTUpLA0KICAgICAgICAoIn5+ZjV+fiIsMTE2KSwNCiAgICAgICAgKCJ+fmY2fn4iLDExNyksDQogICAgICAgICgifn5mN35+IiwxMTgpLA0KICAgICAgICAoIn5+Zjh+fiIsMTE5KSwNCiAgICAgICAgKCJ+fmY5fn4iLDEyMCksDQogICAgICAgICgifn5mMTB+fiIsMTIxKSwNCiAgICAgICAgKCJ+fmYxMX5+IiwxMjIpLA0KICAgICAgICAoIn5+ZjEyfn4iLDEyMyksDQogICAgICAgICgifn5NdXRlfn4iLDE3MyksDQogICAgICAgICgifn5JbnNlcnR+fiIsNDUpLA0KICAgICAgICAoIn5+UGFnZVVwfn4iLDMzKSwNCiAgICAgICAgKCJ+flBhZ2VEb3dufn4iLDM0KSwNCiAgICAgICAgKCJ+fkVORH5+IiwzNSksDQogICAgICAgICgifn5IT01Ffn4iLDM2KSwNCiAgICAgICAgKCJ+fnRhYn5+Iiw5KSwNCiAgICAgICAgKCJ+fkNhcHNMb2Nrfn4iLDIwKSwNCiAgICAgICAgKCJ+fk51bUxvY2t+fiIsMTQ0KSwNCiAgICAgICAgKCJ+fldpbmRvd3N+fiIsOTEpLA0KICAgICAgICAoIn5+TGVmdH5+IiwzNyksDQogICAgICAgICgifn5VcH5+IiwzOCksDQogICAgICAgICgifn5SaWdodH5+IiwzOSksDQogICAgICAgICgifn5Eb3dufn4iLDQwKSwNCiAgICAgICAgKCJ+fktQMH5+Iiw5NiksDQogICAgICAgICgifn5LUDF+fiIsOTcpLA0KICAgICAgICAoIn5+S1Ayfn4iLDk4KSwNCiAgICAgICAgKCJ+fktQM35+Iiw5OSksDQogICAgICAgICgifn5LUDl+fiIsMTAwKSwNCiAgICAgICAgKCJ+fktQNX5+IiwxMDEpLA0KICAgICAgICAoIn5+S1A2fn4iLDEwMiksDQogICAgICAgICgifn5LUDd+fiIsMTAzKSwNCiAgICAgICAgKCJ+fktQOH5+IiwxMDQpLA0KICAgICAgICAoIn5+S1A5fn4iLDEwNSkNCiAgICApDQogICAgdHJ5IHsNCiAgICAgICAgW2ludF0kQ29udmVydCA9ICgkSGFzaEtleSAtbWF0Y2ggJEtleSlbMF1bMV0NCiAgICB9IGNhdGNoIHt9DQogICAgaWYgKCRDb252ZXJ0IC1lcSAkTnVsbCkge1Rocm93ICJJbnZhbGlkIFNwZWNpYWwgS2V5IENvbnZlcnNpb24ifQ0KICAgIHJldHVybiAkQ29udmVydA0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzdGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3N0aHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKU2V0LUFsaWFzID86IEludm9rZS1UZXJuYXJ5")))
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

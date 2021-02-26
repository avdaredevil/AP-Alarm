param($scale=1)
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.2] To Make this program independent of AP-Core Engine
#    GitHub: https://github.com/avdaredevil/AP-Compiler
# ==================================================================================================================|
$Script:PSHell=$(if($PSHell){$PSHell}elseif($PSScriptRoot){$PSScriptRoot}else{"."});
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgICRMb2FkTW9kdWxlID0gew0KICAgICAgICBwYXJhbSgkRmlsZSxbYm9vbF0kSW1wb3J0KQ0KICAgICAgICB0cnkge0ltcG9ydC1Nb2R1bGUgJEZpbGUgLWVhIHN0b3A7cmV0dXJuIDF9IGNhdGNoIHt9DQogICAgICAgICRMaWI9QVAtQ29udmVydFBhdGggIjxMSUI+IjskTEYgPSAiJExpYlwkRmlsZSINCiAgICAgICAgW3N0cmluZ10kZiA9IGlmKHRlc3QtcGF0aCAtdCBsZWFmICRMRil7JExGfWVsc2VpZih0ZXN0LXBhdGggLXQgbGVhZiAiJExGLmRsbCIpeyIkTEYuZGxsIn0NCiAgICAgICAgaWYgKCRmIC1hbmQgJEltcG9ydCkge0ltcG9ydC1Nb2R1bGUgJGZ9DQogICAgICAgIHJldHVybiAkZg0KICAgIH0NCiAgICAkU3RhdCA9ICQoc3dpdGNoIC1yZWdleCAoJExpYi50cmltKCkpIHsNCiAgICAgICAgIl5JbnRlcm5ldCIgICAgICAgICAgICAgICB7dGVzdC1jb25uZWN0aW9uIGdvb2dsZS5jb20gLUNvdW50IDEgLVF1aWV0fQ0KICAgICAgICAiXmRlcDooLiopIiAgICAgICAgICAgICAgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl4obGlifG1vZHVsZSk6KC4qKSIgICAgICB7JExvYWRNb2R1bGUuaW52b2tlKCRNYXRjaGVzWzJdLCAkdHJ1ZSl9DQogICAgICAgICJeKGxpYnxtb2R1bGUpX3Rlc3Q6KC4qKSIgeyRMb2FkTW9kdWxlLmludm9rZSgkTWF0Y2hlc1syXSl9DQogICAgICAgICJeZnVuY3Rpb246KC4qKSIgICAgICAgICAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgICB7VGVzdC1QYXRoICJGdW5jdGlvbjpcJCgkTWF0Y2hlc1sxXSkifQ0KICAgICAgICBkZWZhdWx0IHtXcml0ZS1BUCAiIUludmFsaWQgc2VsZWN0b3IgcHJvdmlkZWQgWyQoIiRMaWIiLnNwbGl0KCc6JylbMF0pXSI7dGhyb3cgJ0JBRF9TRUxFQ1RPUid9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3NUaHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKZnVuY3Rpb24gR2V0LVdoZXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW3N0cmluZ10kRmlsZSwgW1N3aXRjaF0kQWxsKQ0KDQogICAgQVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7dGhyb3cgIk5lZWQgU3lzMzJcd2hlcmUgdG8gd29yayEiO3JldHVybn0NCiAgICAkT3V0PSRudWxsDQogICAgaWYgKCRQU1ZlcnNpb25UYWJsZS5QbGF0Zm9ybSAtZXEgIlVuaXgiKSB7DQogICAgICAgICRPdXQgPSB3aGljaCAkZmlsZSAyPiRudWxsDQogICAgfSBlbHNlIHskT3V0ID0gd2hlcmUuZXhlICRmaWxlIDI+JG51bGx9DQogICAgDQogICAgaWYgKCEkT3V0KSB7cmV0dXJufQ0KICAgIGlmICgkQWxsKSB7cmV0dXJuICRPdXR9DQogICAgcmV0dXJuIEAoJE91dClbMF0NCn0KCmZ1bmN0aW9uIEdldC1Db2xvciB7DQogICAgPCMgIC5EZXNjcmlwdGlvbg0KICAgICAgICBGZXRjaGVzIGJhc2ljIGNvbG9ycyB1c2luZyB0aGUgVW5pY29kZSBFc2NhcGUgc2VxdWVuY2VzDQogICAgIz4NCiAgICBwYXJhbSAoDQogICAgICAgIFtWYWxpZGF0ZVNldCgNCiAgICAgICAgICAgICdyJywncmVzZXQnLCdkJywnZGltJywncycsJ3N0cmlrZScsJ3UnLCd1bmRlcmxpbmUnLCdiJywnYm9sZCcsJ2knLCdpdGFsaWMnLA0KICAgICAgICAgICAgJ0JsYWNrJywnRGFya0JsdWUnLCdEYXJrR3JlZW4nLCdEYXJrQ3lhbicsJ0RhcmtSZWQnLCdEYXJrTWFnZW50YScsJ0RhcmtZZWxsb3cnLCdHcmF5JywnRGFya0dyYXknLCdCbHVlJywnR3JlZW4nLCdDeWFuJywnUmVkJywnTWFnZW50YScsJ1llbGxvdycsJ1doaXRlJywNCiAgICAgICAgICAgICdiZy5CbGFjaycsJ2JnLkRhcmtCbHVlJywnYmcuRGFya0dyZWVuJywnYmcuRGFya0N5YW4nLCdiZy5EYXJrUmVkJywnYmcuRGFya01hZ2VudGEnLCdiZy5EYXJrWWVsbG93JywnYmcuR3JheScsJ2JnLkRhcmtHcmF5JywnYmcuQmx1ZScsJ2JnLkdyZWVuJywnYmcuQ3lhbicsJ2JnLlJlZCcsJ2JnLk1hZ2VudGEnLCdiZy5ZZWxsb3cnLCdiZy5XaGl0ZScNCiAgICAgICAgKV1bU3RyaW5nW11dJENvZGUsDQogICAgICAgIFtBbGlhcygnYmcnKV1bU3dpdGNoXSRCYWNrZ3JvdW5kLA0KICAgICAgICBbU3dpdGNoXSRDb2RlU3RyaW5nDQogICAgKQ0KICAgICRBbGlhc1RhYmxlID0gQHt1ID0gJ3VuZGVybGluZSc7YiA9ICdib2xkJztpID0gJ2l0YWxpYyc7ciA9ICdyZXNldCc7cyA9ICdzdHJpa2UnO2QgPSAnZGltJ30NCiAgICBpZiAoISRHbG9iYWw6QVBfQ09MT1JfVEFCTEUpIHsNCiAgICAgICAgJFRCTCA9ICRHbG9iYWw6QVBfQ09MT1JfVEFCTEUgPSBAe3Jlc2V0ID0gMDtib2xkID0gMTtkaW0gPSAyO2l0YWxpYyA9IDM7dW5kZXJsaW5lID0gNDtzdHJpa2UgPSA5fQ0KICAgICAgICAwLDEgfCAlIHsNCiAgICAgICAgICAgICRCZ0luZGV4ID0gJF8NCiAgICAgICAgICAgIDAsMSB8ICUgew0KICAgICAgICAgICAgICAgICRTcGNJbmRleCA9ICRfDQogICAgICAgICAgICAgICAgJGkgPSAwDQogICAgICAgICAgICAgICAgJ0JsYWNrLlR8UmVkfEdyZWVufFllbGxvd3xCbHVlfE1hZ2VudGF8Q3lhbnxXaGl0ZScuc3BsaXQoJ3wnKSB8ICUgew0KICAgICAgICAgICAgICAgICAgICAkSW5jciA9ICRCZ0luZGV4ICogMTANCiAgICAgICAgICAgICAgICAgICAgJENvbE5hbWUgPSAoKCcnLCdiZy4nKVskQmdJbmRleF0pKygoJ0RhcmsnLCcnKVskU3BjSW5kZXhdKSskXw0KICAgICAgICAgICAgICAgICAgICAkQ29sU3BhY2UgPSAoMzAsIDkwKVskU3BjSW5kZXhdICsgJEluY3INCiAgICAgICAgICAgICAgICAgICAgJFRCTC4kQ29sTmFtZSA9ICRDb2xTcGFjZSsoJGkrKykNCiAgICAgICAgICAgICAgICB9DQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICAgICAgQHtEYXJrR3JheSA9ICdCbGFjay5UJztCbGFjayA9ICdEYXJrQmxhY2suVCc7R3JheSA9ICdEYXJrV2hpdGUnfS5HZXRFbnVtZXJhdG9yKCkgfCAlIHsNCiAgICAgICAgICAgICRUQkwuKCRfLktleSkgPSAkVEJMLigkXy5WYWx1ZSkNCiAgICAgICAgICAgICRUQkwuKCdiZy4nKyRfLktleSkgPSAkVEJMLignYmcuJyskXy5WYWx1ZSkNCiAgICAgICAgICAgICRUQkwucmVtb3ZlKCRfLlZhbHVlKQ0KICAgICAgICAgICAgJFRCTC5yZW1vdmUoJ2JnLicrJF8uVmFsdWUpDQogICAgICAgIH0NCiAgICB9DQogICAgJENvZGVzID0gKCRDb2RlKyRBcmdzIHwgJSB7DQogICAgICAgICRHbG9iYWw6QVBfQ09MT1JfVEFCTEUuKEpTLU9SICRBbGlhc1RhYmxlLiRfICRfKQ0KICAgIH0pIC1qb2luICc7Jw0KICAgIGlmICgkQ29kZVN0cmluZykge3JldHVybiAkQ29kZXN9DQogICAgcmV0dXJuICIkKEdldC1Fc2NhcGUpWyR7Q29kZXN9bSINCn0KClNldC1BbGlhcyBjb2wgR2V0LUNvbG9y")))
# ========================================END=OF=COMPILER===========================================================|

CLEAR-HOST

# Array Data
# First Column Identifies Octave (A-C) (where C is the highest) - Octave 0 = REST
# Second Column Identifies Note
# Third Column Designates Note as Sharp "S" or Not "N"
# Fourth Column Identifies 8,4,2,1 (Eighth, Quarter, 1/2, Whole)
# Fifth Column Identifies if note is "Dotted"

#Musical Notes Array
[array]$Notes=$NULL
$Notes+=@{"RRR"=37}
$Notes+=@{"BCN"=290}
$Notes+=@{"BCS"=310}
$Notes+=@{"BDN"=330}
$Notes+=@{"BDS"=345}
$Notes+=@{"BEN"=360}
$Notes+=@{"BFN"=390}
$Notes+=@{"BFS"=415}
$Notes+=@{"BGN"=440}
$Notes+=@{"BGS"=460}
$Notes+=@{"CAN"=480}
$Notes+=@{"CAS"=505}
$Notes+=@{"CBN"=530}
$Notes+=@{"CCN"=580}
$Notes+=@{"CCS"=605}
$Notes+=@{"CDN"=630}
$Notes+=@{"CDS"=670}
$Notes+=@{"CEN"=710}
$Notes+=@{"CFN"=800}
$Notes+=@{"CFS"=840}
$Notes+=@{"CGN"=880}
$Notes+=@{"CGS"=920}

# Our 'Sheet Music' - 5 characters define each note and beat.
# First three are the note, the last pair are the beat
$MusicString=$NULL
$MusicString+="CEN80CDN80CEN80CCN80CAN80CCN80BGN80RRR80"
$MusicString+="CEN80CDN80CEN80CCN80CAN80CCN80BGN80RRR80"
$MusicString+="CEN80CFS80CGN80CFS80CGN80CEN80CFS80CEN80"
$MusicString+="CFS80CDN80CEN80CCN80CAN80CCN80CEN80"

$Start=0
$End=$MusicString.Length

do {
# Grab the 5 bytes for the Tone and Duration
$Data=$MusicString.Substring($Start,5)

# Get the Frequency for the Note
$Note=$Data.substring(0,3)
$Tone=$Notes.$Note

# Get the Length 
$Length=[int]$Data.substring(3,1)
$Dotted=$Data.substring(4,1)

# Compute the Time to play
$PlayTime=4*(1/$length)*(.5*[int]($Dotted="1"))

# Play a note or Rest
If ($Note -ne "RRR"){[console]::beep($tone,200*($Playtime)*$scale)}
Else { START-SLEEP -milliseconds (600*$Playtime*$scale)}

$Start=$Start+5

} Until ($Start -ge $End)


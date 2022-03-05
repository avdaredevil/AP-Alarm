param($scale=1)
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


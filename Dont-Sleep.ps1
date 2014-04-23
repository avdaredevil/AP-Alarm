# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
function Pause {
param([String]$PauseQ = "Press any key to continue . . . ")

    Write-Host -noNewline $PauseQ
    $null = $Host.UI.RawUI.ReadKey("NoEcho, IncludeKeyup")
    Write-Host ""
}

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

function Clear-Line {

    $Nm = $Host.UI.RawUI.WindowSize.Width-1
    Write-Host -NoNewLine "$(("`b"*$NM)+(" "*$NM)+("`b"*$NM))"
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

# ========================================END=OF=COMPILER===========================================================|
<# |==============================================================================>|    Dont-Sleep System by APoorv Verma [AP] on 10/14/2013 |==============================================================================>|       $) Pinging System to keep the computer awake       $) Automatic detection if user starts to use the computer       $) Status Reportinh       $) Key Press Handling          @) 'Escape'    = Quit          @) 's',"Enter" = Ping Statistics |==============================================================================>| #> [void][reflection.assembly]::loadwithpartialname("system.windows.forms") $Script:OP  = 0 $Script:MIS = 0 $Script:ACK = 0 function Keys ($f = -2){     while ($Host.UI.RawUI.KeyAvailable) {         $Store = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp")         If (KeyPressed "-" $Store) {Write-AP "+Ping Recieved [$Script:OP]";$Script:ACK++}         ElseIf ($f -eq -2) {             If (KeyPressed "q","x","~~Escape~~" $Store) {Write-AP "!QUIT...";exit}             ElseIf (KeyPressed "s",'~~Enter~~' $Store) {Write-AP "+Total Sent [$Script:OP] | Reception : $(($Script:OP-$Script:Mis)/$Script:OP*100)%"}         }     }     if ($f -ne "-2") {if ($Script:op -ne $Script:Ack) {Write-AP "-Ping Failed [$Script:OP]";$Script:Mis++;$Script:ACK++}} } while ($true) {     $Script:OP++     [system.windows.forms.sendkeys]::sendwait("-")     Keys -3     foreach ($i in 1..5) {         start-sleep -s 3         Keys         if ($Script:Mis-$Mi -gt 1) {Write-AP "!Away Mode Enabled, please enable manually";pause;[Console]::CursorTop-=1;Clear-Line;$Mi=$Script:Mis}     } }

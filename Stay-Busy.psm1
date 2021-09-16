Function Stay-Busy{
    param(
        [Parameter(Mandatory=$true)]
        [int]$Minutes
    )
    Add-Type -AssemblyName System.Windows.Forms
    $screen = [System.Windows.Forms.SystemInformation]::VirtualScreen
    Clear-Host
    Write-Output "Stay-Busy will work for $Minutes minutes, go grab yourself a coffee :)"
    $sec_check=0
    $progress=0
    $trigger=0
    $myshell = New-Object -com "Wscript.Shell"
    for ($i = 0; $i -lt $minutes; $i++) {
        $rand_W = Get-Random -Minimum -1 -Maximum $screen.Width
        $rand_H = Get-Random -Minimum -1 -Maximum $screen.Height
        $swidth = $screen.Width - $rand_W
        $sheight = $screen.Height - $rand_H
        [Windows.Forms.Cursor]::Position = "$($swidth),$($sheight)"
        Start-Sleep -Seconds 60
        $sec_check+=60
        $progress=$sec_check/60
        $trigger=$progress % 5
        if($trigger -eq 0){
            Clear-Host
            Write-Output "$progress minutes have passed"
        }
        $myshell.sendkeys(".")
    }
    <#
        .SYNOPSIS
        Sends a dot and moves your mouse to a random position.

        .DESCRIPTION
        Sends a dot and moves your mouse to a random position.
        Takes any int for the work time.

        .PARAMETER Minutes
        Specifies the work time.

        .INPUTS
        None. You cannot pipe objects to Stay-Busy.

        .OUTPUTS
        None. You cannot store any return values of Stay-Busy.

        .EXAMPLE
        PS> Stay-Busy -Minutes 20
        Stay-Busy will work for 20 minutes, go grab yourself a coffee :)
        (5 minutes later)
        5 minutes have passed

        .LINK
        Online version: https://github.com/MichalMalenda/Powershell-Stay-Busy

    #>
}
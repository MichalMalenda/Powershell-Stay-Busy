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
}
# Powershell-Stay-Busy
## Have you ever had a that situation where your firm's policy overwrites your screen lock timeout or you are being tracked for activity and need to move your mouse from time to time?
Fear not, with this script your will be able to leave your PC running for however long you would like. <br />
This script sends a dot like you would click on the keyboard and then moves the mouse to the random location on your screen. <br />
1. Once you have the module on your device, go to your **C:\Program Files\WindowsPowerShell\Modules** directory and create a folder named **Stay-Busy**.
    * Move/Copy your module **Stay-Busy.psm1** to that directory
    * Close and reopen any pre-existing  powershell sessions
    * Type in Stay-Busy 1 and you should see it working right away
2. To make sure script gets triggered whenever you leave your workstation we need to schedule an event.
    * Type in your Start Menu **Task Scheduler** and click **Enter**
    * Go to selected folder you want to place the scheduled task in and click on the right hand side **Import Task**
    * Select the .xml file that was in the repo and click **Ok**
3. You can now test it by leaving your PC on and going for a coffee.
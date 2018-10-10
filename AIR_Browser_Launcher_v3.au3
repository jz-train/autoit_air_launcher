#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=PORTAL.ico
#AutoIt3Wrapper_Outfile=air_browser_launcher.exe
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <Process.au3>


FileInstall("C:\tmp\nircmd\nircmdc.exe",@TempDir & "\nircmdc.exe",1)

;set volume to max and unmute
RunWait(@TempDir & '\nircmdc.exe mutesysvolume 0',@TempDir,@SW_HIDE)
;max volume
RunWait(@TempDir & '\nircmdc.exe setvolume 0 65535 65535',@TempDir,@SW_HIDE)

;kill MS Photos
Run("taskkill /im Microsoft.Photos.exe /f","",@SW_HIDE)

;kill edge
Run("taskkill /im microsoftedge.exe /f","",@SW_HIDE)

;run browser
RunWait("C:\Program Files (x86)\OHSecureBrowser\OHSecureBrowser.exe","C:\Program Files (x86)\OHSecureBrowser")

;wait for finish and logout
Shutdown(0)
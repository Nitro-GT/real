md "%UserProfile%\AppData\Local\Packages\ROBLOXCORPORATION.ROBLOX_55nm5eh3cm0pr\LocalState\ClientSettings"
Title Nitrowo's Custom UWP Launcher
cls
@echo off
echo Welcome to Nitrowo's Launcher!
echo Settings:
set /p qtxt=Voxel(1), Future(2) or Default(3) Lighting? 
set /p vk=Vulkan(1) Or D3D11(2)? 
set /p ytxt=Unlock Fps? (Y or N) 
if %ytxt%==Y set /p rtxt=FPS Limit? 
if %ytxt%==Y set wtxt=^"%rtxt%^"
(
echo {
if %ytxt%==Y echo "DFIntTaskSchedulerTargetFps": %wtxt%,
if %vk%==2 echo  "FFlagDebugGraphicsPreferD3D11": "True",
if %vk%==2 echo "FFlagDebugGraphicsPreferVulkan": "False",
if %vk%==1 echo  "FFlagDebugGraphicsPreferD3D11": "False",
if %vk%==1 echo "FFlagDebugGraphicsPreferVulkan": "True",
echo  "FFlagHandleAltEnterFullscreenManually": "False",
echo "FFlagFixGraphicsQuality": "True",
if %qtxt%==2 echo "FFlagDebugForceFutureIsBrightPhase3": "True",
if %qtxt%==2 echo  "DFFlagDebugRenderForceTechnologyVoxel": "False"
if %qtxt%==1 echo "FFlagDebugForceFutureIsBrightPhase3": "False",
if %qtxt%==1 echo  "DFFlagDebugRenderForceTechnologyVoxel": "True"
if %qtxt%==3 echo "FFlagDebugForceFutureIsBrightPhase3": "False",
if %qtxt%==3 echo "DFFlagDebugRenderForceTechnologyVoxel": "False",
echo   "DFIntCanHideGuiGroupId": "32380007",
echo   "DFFlagDisableDPIScale": "True",
echo "DFFlagVariableDPIScale2": "False",
echo "FFlagEnableInGameMenuControls": "False",
echo   "FFlagDisableNewIGMinDUA": "True",
echo "FFlagEnableInGameMenuV3": "False",
echo "AbuseReportScreenshot": "False"
echo }
)> "%UserProfile%\AppData\Local\Packages\ROBLOXCORPORATION.ROBLOX_55nm5eh3cm0pr\LocalState\ClientSettings\ClientAppSettings.json"
start shell:AppsFolder\ROBLOXCORPORATION.ROBLOX_55nm5eh3cm0pr!App
echo Done!
close
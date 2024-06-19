@echo off
:start
::Server name
set serverName=My DayZ server
::Server files location
set serverLocation="D:\SteamLibrary\steamapps\common\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=2
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% -cpuCount=%serverCPU% -dologs -profiles=profiles -adminlog -netlog -freezecheck -config=serverDZ.cfg "-mod=@CF;@Cl0ud's Military Gear;@Code Lock;@BaseBuildingPlus;@Breachingcharge;@VPPAdminTools;@Airdrop-Upgraded;@MuchStuffPack;@AC-Mod-Pack;@Advanced Weapon Scopes;@Mortys Weapons;@RedFalcon Flight System Heliz;@ORefugioModPack2;@MuchFramework"
::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start
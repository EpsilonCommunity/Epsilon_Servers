@echo off
Title "EGC | Valheim Server 1"
DiscordSendWebhook.exe -w "https://discord.com/api/webhooks/925489879570350131/XkIyg4X2vq_Xb3L9n0zu4kp6HeNQhb-wQkbTeCcFSI4ecz25KEd2_Ny86uWvWaF1I3qu" -m "Server: Valheim Server 1\nInformation: **s1.services.games:2456**\nStatus: **Starting...**" -n "Epsilon Gaming Community | Server Messages"
D:\steamcmd\steamcmd.exe +force_install_dir E:\VServer1 +login anonymous +"app_update 896660" validate +quit
DiscordSendWebhook.exe -w "https://discord.com/api/webhooks/925489879570350131/XkIyg4X2vq_Xb3L9n0zu4kp6HeNQhb-wQkbTeCcFSI4ecz25KEd2_Ny86uWvWaF1I3qu" -m "Server: Valheim Server 1\nInformation: **s1.services.games:2456**\nStatus: **Updated**" -n "Epsilon Gaming Community | Server Messages"
for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set ldt=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2% %ldt:~8,2%:%ldt:~10,2%:%ldt:~12,6%
SET TIME=[%ldt%]
DiscordSendWebhook.exe -w "https://discord.com/api/webhooks/925489879570350131/XkIyg4X2vq_Xb3L9n0zu4kp6HeNQhb-wQkbTeCcFSI4ecz25KEd2_Ny86uWvWaF1I3qu" -m "Server: Valheim Server 1\nInformation: **s1.services.games:2456**\nStatus: **Operational at %TIME%**" -n "Epsilon Gaming Community | Server Messages"
E:\VServer1\valheim_server.exe -nographics -batchmode -name "Epsilon Gaming Community Server #1" -port 2456 -world "EpsilonCommunity" -password "EC12345" -savedir "E:\Valheim\Valheim_Server\"
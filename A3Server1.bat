@echo off
Title "EGC | Arma 3 Server 1"
DiscordSendWebhook.exe -w "https://discord.com/api/webhooks/925489879570350131/XkIyg4X2vq_Xb3L9n0zu4kp6HeNQhb-wQkbTeCcFSI4ecz25KEd2_Ny86uWvWaF1I3qu" -m "Server: Arma 3 Server 1\nInformation: **s1.services.games:2302**\nStatus: **Starting...**" -n "Epsilon Gaming Community | Server Messages"
D:\steamcmd\steamcmd.exe +force_install_dir E:\A3Server1 +login epsiloncommunityserver Eggshells_21 +"app_update 233780 -beta" validate +quit
DiscordSendWebhook.exe -w "https://discord.com/api/webhooks/925489879570350131/XkIyg4X2vq_Xb3L9n0zu4kp6HeNQhb-wQkbTeCcFSI4ecz25KEd2_Ny86uWvWaF1I3qu" -m "Server: Arma 3 Server 1\nInformation: **s1.services.games:2302**\nStatus: **Updated**" -n "Epsilon Gaming Community | Server Messages"
for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set ldt=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2% %ldt:~8,2%:%ldt:~10,2%:%ldt:~12,6%
SET TIME=[%ldt%]
DiscordSendWebhook.exe -w "https://discord.com/api/webhooks/925489879570350131/XkIyg4X2vq_Xb3L9n0zu4kp6HeNQhb-wQkbTeCcFSI4ecz25KEd2_Ny86uWvWaF1I3qu" -m "Server: Arma 3 Server 1\nInformation: **s1.services.games:2302**\nStatus: **Operational at %TIME%**" -n "Epsilon Gaming Community | Server Messages"
E:\A3Server1\ArmA3Server.exe -port=2312 -profiles=C:\Users\Admin\Desktop\Epsilon Servers\A3Server1\Profile -config=server.cfg
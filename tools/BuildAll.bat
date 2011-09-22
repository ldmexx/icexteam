@echo off
chcp 1251
title iceXTeam - Russian team developers server AION

CLS
:MENU
ECHO.
ECHO.
ECHO.
ECHO                                      ''~``
ECHO                                     ( o o )
ECHO        ------------------------.oooO--(_)--Oooo.------------------------
ECHO        .             1 - Compile XT all server                         .
ECHO        .             2 - Compile XT Game server                        .
ECHO        .             3 - Compile XT Login server                       .
ECHO        .             4 - QUIT                                          .
ECHO        .                                                               . 
ECHO        .             Developed by rainou                               . 
ECHO        .                                                               . 
ECHO        .                           iceXTeam                            .
ECHO        -----------------------------------------------------------------
SET /P Ares=       Type 1, 2 ,3, 4, 5, 6 or 7 to QUIT, then press ENTER:
IF %Ares%==1 GOTO FULL
IF %Ares%==2 GOTO GameServer
IF %Ares%==3 GOTO LoginServer
IF %Ares%==4 GOTO QUIT
:FULL


cd ..\Gameserver
start /WAIT /B ..\tools\Ant\bin\ant clean dist

cd ..\Loginserver
start /WAIT /B ..\tools\Ant\bin\ant clean dist


:GameServer
cd ..\Gameserver
start /WAIT /B ..\tools\Ant\bin\ant clean dist
GOTO :QUIT

:LoginServer
cd ..\Loginserver
start /WAIT /B ..\tools\Ant\bin\ant clean dist
GOTO :QUIT


:QUIT
exit

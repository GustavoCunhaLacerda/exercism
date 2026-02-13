@echo off
title Limpeza e Reset Rapido do PC
color 0B

echo ===================================================
echo       LIMPANDO ARQUIVOS TEMPORARIOS DO WINDOWS
echo ===================================================
echo.

echo 1/3: Esvaziando a pasta Temp do Usuario...
del /s /f /q "%temp%\*.*" >nul 2>&1
for /d %%p in ("%temp%\*.*") do rmdir "%%p" /s /q >nul 2>&1

echo 2/3: Esvaziando a pasta Temp do Sistema...
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
for /d %%p in ("C:\Windows\Temp\*.*") do rmdir "%%p" /s /q >nul 2>&1

echo 3/3: Limpando a pasta Prefetch...
del /s /f /q "C:\Windows\Prefetch\*.*" >nul 2>&1

echo.
echo ===================================================
echo           RESETANDO CONFIGURACOES DE REDE
echo ===================================================
echo.
echo Limpando o cache de DNS para melhorar a navegacao...
ipconfig /flushdns >nul

echo.
echo ===================================================
echo    LIMPEZA CONCLUIDA! O PC ESTA MAIS LEVE AGORA.
echo ===================================================
echo.
pause
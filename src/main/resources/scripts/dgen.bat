@echo off
setlocal enabledelayedexpansion

:: 获取绝对路径
set "SCRIPT_DIR=%~dp0"
set "SCRIPT_DIR=%SCRIPT_DIR:~0,-1%"

:: 启动参数
set JAVA_BOOT=java
set MAIN_JAR=%SCRIPT_DIR%\daily-generator.jar
set LIB_DIR=%SCRIPT_DIR%\..\lib
set CONF_DIR=%SCRIPT_DIR%\..\conf
set MAIN_CLASS=com.serliunx.daily.DailyGenerator

set CLASSPATH=%MAIN_JAR%
for %%f in (%LIB_DIR%\*.jar) do (
    set CLASSPATH=!CLASSPATH!;%%f
)
set CLASSPATH=!CLASSPATH!;%CONF_DIR%

%JAVA_BOOT% -cp "%CLASSPATH%" %MAIN_CLASS% %*

endlocal
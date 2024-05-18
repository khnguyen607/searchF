@echo off

REM Lệnh 1: Di chuyển thư mục và ghi đè tập tin
set "source=.\content"
set "destination=..\frontend"

xcopy /E /Y "%source%" "%destination%"
if %errorlevel% neq 0 (
    echo An error occurred.
) else (
    echo Folder moved and files overwritten successfully from %source% to %destination.
)
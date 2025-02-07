@echo off

cd source

IF not exist core (
md core
)

if exist core (
rmdir core -Force -Recurse -Confirm
)

pause

cd core

git init

git clone https://github.com/benevolent0377/PyCaliCore.git

IF not move *.py ../ (

echo "Failed to unpack files..."
cd ../../
rmdir core -Recurse -Force -Confirm
goto :EOF

)

if move *.py ../ (

cd ../
rmdir PyCaliCore -Recurse -Force -Confirm
goto :EOF

)

pause

:EOF
pause

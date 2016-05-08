::set /P id=Enter id: 
::jstack %id% > jstack.txt

@echo off
set /p folder="Enter folder name: "
mkdir %folder%
CD %folder%
set /p readmeText="Enter readme text: "
echo %readmeText% > README.md
git init
git add .
git commit -m "first commit"
git status
set /p repo="Enter repo name: "
git remote add origin git@github.com:wengtek/%repo%.git
git push -u origin master
echo Git Completed - Press enter to close
pause>nul
:: autoGit ::
@echo off

set /p githubId="Please enter your GitHub Id: "
set /p repo="What is your GitHub repository name?: "

:Ask
set /p askFolder="Use the GitHub repository as your folder name? [y/n]: "

If /I "%askFolder%"=="y" goto yes

If /I "%askFolder%"=="n" goto no

goto Ask

:yes
  :: Use the repo name as folder name
  mkdir %repo%

  :: Change directory to newly created folder ::
  CD %repo%

  goto commonexit

:no
  :: Sets folder variable ::
  set /p folder="Enter folder name: "

  :: Creates folder in hard drive ::
  mkdir %folder%

  :: Change directory to newly created folder ::
  CD %folder%

  goto commonexit

:commonexit
:: Sets text for readme file ::
set /p readmeText="Enter readme text: "

:: Writes text into readme file ::
echo %readmeText% > README.md

echo node_modules > .gitignore

type [your directory]\MIT-license.txt >> LICENSE.md

:: Git initialize & add readme ::
git init
git add .

:: Sets commit message ::
set /p commitMsg="Enter commit message: "

:: Writes commit message ::
git commit -m "%commitMsg%"

:: Display status and add remote repository ::
git status
git remote add origin git@github.com:%githubId%/%repo%.git

:: Push out to gitHub ::
git push -u origin master

:: Prevents command prompt from closing ::
echo Git Completed - Press enter to close
pause>nul

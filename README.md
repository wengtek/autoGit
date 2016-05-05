https://gist.github.com/akkias/6355816 ::
touch README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/akkias/HTML-Basics.git
git push -u origin mastertouch README.md

http://stackoverflow.com/questions/18932202/create-a-new-file-in-git-bash ::
echo "" > webpage.html

http://stackoverflow.com/questions/5138507/how-to-change-current-working-directory-using-a-batch-file ::
Specify /D to change the drive also.
CD /D %root%

http://stackoverflow.com/questions/11269338/how-can-i-comment-out-a-section-or-add-comments-in-a-batch-file ::
Use :: (also REM)

http://stackoverflow.com/questions/4419868/what-is-the-current-directory-in-a-batch-file ::
%cd% will give you the current working directory (variable)
%~dp0 will give you the full path to the batch file's directory (fixed)

http://stackoverflow.com/questions/988403/how-to-prevent-auto-closing-of-console-after-the-execution-of-batch-file
In Windows/DOS batch files:
pause
This prints a nice "Press any key to continue . . . " message
Or, if you don't want the "Press any key to continue . . ." message, do this instead:
pause >nul

https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/ ::
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

http://stackoverflow.com/questions/13509293/git-fatal-could-not-read-from-remote-repository ::
Try removing the GIT_SSH environment variable with unset GIT_SSH. This was the cause of my problem.

http://unix.stackexchange.com/questions/12195/how-to-avoid-being-asked-passphrase-each-time-i-push-to-bitbucket ::
ssh-add
eval $(ssh-add)
ssh-add (do this again)

STEPS:
1. cd into folder
2. mkdir [folder name]
3. cd into new directory
4. touch [file name]
5. git init
6. git add README.md
7. git commit -m "first commit"
8. git remote add origin [origin name]
9. git push -u origin mastertouch README.md
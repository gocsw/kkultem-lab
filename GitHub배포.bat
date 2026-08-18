@echo off
title WishButton Store - Deploy
pushd "%~dp0"
echo ================================================
echo   WishButton Store - GitHub Deploy
echo ================================================
echo.
echo Pushing to GitHub...
echo If a GitHub login window appears, sign in / Authorize.
echo (Only needed once.)
echo.
git push origin main
echo.
if %errorlevel%==0 goto OK
echo [FAILED] Check the message above.
goto END
:OK
echo [DONE] Deployed. kkultem-lab.vercel.app updates in 1-2 min.
:END
echo.
pause
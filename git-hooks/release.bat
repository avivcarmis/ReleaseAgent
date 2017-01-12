echo "releasing current version"
set "BASE_DIR=%cd%"
VERSION_FILE="%BASE_DIR%\src\main\resources\versio
cd "%BASE_DIR%\ReleaseAgent"
node release.js
cd %BASE_DIR%
git add "%BASE_DIR%/ReleaseAgent/."
git commit -m "Version %CURRENT_VERSION% Release"
git push
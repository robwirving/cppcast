@ECHO ON
REM Install Hugo if it's not installed
pushd D:\home\site\deployments\tools 
if not exist Hugo md Hugo
cd Hugo 
if exist bin goto build
md bin
cd bin
:install
curl -o hugo0563.zip -L https://github.com/gohugoio/hugo/releases/download/v0.56.3/hugo_0.56.3_Windows-64bit.zip
echo Installing Hugo...
SetLocal DisableDelayedExpansion & d:\7zip\7za x hugo0563.zip

REM Generate Hugo static site from source on GitHub
:build
popd
call D:\home\site\deployments\tools\hugo\bin\hugo -d D:\home\site\wwwroot
echo Hugo build finished successfully.
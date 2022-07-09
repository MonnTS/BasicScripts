$ArchiveFileName = "C:\Users\Monn\Powershell\textfiles.zip"
$ExtractPath = "C:\Users\Monn\Powershell\folder1\"
[IO.Compression.ZipFile]::ExtractToDirectory($ArchiveFileName, $ExtractPath)
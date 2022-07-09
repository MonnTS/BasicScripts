$download_url = "https://www.wetoszka.online/textfiles.zip"
$request = Invoke-WebRequest -Uri $download_url -MaximumRedirection 0 -ErrorAction Ignore
$location = $request.Headers.Location
$local_path = "C:\Users\Monn\Powershell" + $location.SubString($location.LastIndexOf('/') + 1)
Invoke-WebRequest -Uri $download_url -OutFile $local_path
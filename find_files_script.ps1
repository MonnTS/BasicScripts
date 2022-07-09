for($i = 1; $i -lt 10; $i++){
    "Znaliazlem"
    Get-ChildItem C:\Users\Monn\Powershell\foler1 - Filter *0$i.txt -Name
}

for($i = 10; $i -lt 21; $i++){
    "Znaliazlem"
    Get-ChildItem C:\Users\Monn\Powershell\foler1 - Filter *$i.txt -Name
}
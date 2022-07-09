Clear
$a = Read-Host "Podaj symbol:"
[int32]$b = Read-Host "Podaj wysokosc choinki:"
[int32]$c = 1
[int32]$d = 0

for($i = 0; $i -lt $b; [int32]$i++){
    for($j = 0; $j -lt ([int32]$b-[int32]$d); [int32]$j++){
        Write-Host -NoNewline " "
    }
    for($k = 0; $k -lt $c; [int32]$k++){
        Write-Host -NoNewline $a
    }
    Write-Host ""
    [int32]$c = [int32]$c + 2
    [int32]$d = [int32]$d + 1
}

[int32]$d = 1
[int32]$s = 3

for($i = 0; $i -lt 2; [int32]$i++){
    for($j = 0; $j -lt ($b - $d); [int32]$j++){
        Write-Host -NoNewline " "
   }
   for($k = 0; $k -lt $s; [int32]$k++){
        Write-Host -NoNewline " "
   }
Write-Host ""
}
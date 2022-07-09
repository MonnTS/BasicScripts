DO
{
$A = Read-Host Podaj Liczbe A
$B = Read-Host Podaj Liczbe B
$W = Read-Host 1-Dodowanie 2-Odejmowanie 3-Mnozenie 4-Dzielienie

if($W -eq '1'){
    [int32]$res = [int32]$A + [int32]$B
    Write-Host $res
}

if($W -eq '2'){
    [int32]$res = [int32]$A - [int32]$B
    Write-Host $res
}

if($W -eq '3'){
    [int32]$res = [int32]$A * [int32]$B
    Write-Host $res
}

if($W -eq '4'){
    [int32]$res = [int32]$A / [int32]$B
    Write-Host $res
}

$C = Read-Host Jeszce Raz t\n?
 
}while($C -ne 'n')
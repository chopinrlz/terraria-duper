$worlds = "Duplicator.wld","Duplicator.wld.bak","Duplicator.wld.bak2"
$src = [System.IO.Path]::GetTempPath() | Join-Path -ChildPath "TerrariaDuplicator"
if( -not (Test-Path $src) ) {
    Write-Warning "No duplicator source path"
    Read-Host
    exit
}
$dst = [System.Environment]::GetFolderPath("MyDocuments") | Join-Path -ChildPath "My Games\Terraria\Worlds"
if( -not (Test-Path $dst) ) {
    Write-Warning "No Terraria worlds path"
    Read-Host
    exit
}
$worlds | ForEach-Object {
    Copy-Item -Path (Join-Path -Path $src -ChildPath $_) -Destination $dst -Force
}
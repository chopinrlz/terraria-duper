$worlds = "Duplicator.wld","Duplicator.wld.bak","Duplicator.wld.bak2"
$src = [System.Environment]::GetFolderPath("MyDocuments") | Join-Path -ChildPath "My Games\Terraria\Worlds"
$dst = [System.IO.Path]::GetTempPath() | Join-Path -ChildPath "TerrariaDuplicator"
if( -not (Test-Path $dst) ) {
    New-Item -Path $dst -ItemType Directory | Out-Null
}
$worlds | ForEach-Object {
    Copy-Item -Path (Join-Path -Path $src -ChildPath $_) -Destination $dst -Force
}
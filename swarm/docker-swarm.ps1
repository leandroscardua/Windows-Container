


New-Item -Path "C:\ProgramData\Docker\config\daemon.json" -force
Set-Content -Path "C:\ProgramData\Docker\config\daemon.json" -Value '
{
    "bridge" : "none"
}
'

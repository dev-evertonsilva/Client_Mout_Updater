@echo off
echo Gerando update.json...

powershell -NoProfile -ExecutionPolicy Bypass -Command "$files=@('updater.dll','grafics.dll','frames.dll','config.ini','Tibia.exe','Tibia.dat','Tibia.pic','Tibia.spr');$result=@();foreach($file in $files){$hash=Get-FileHash $file -Algorithm MD5;$size=(Get-Item $file).Length;$result+=[PSCustomObject]@{Name=$file;Hash=$hash.Hash;Size=$size}};$result|ConvertTo-Json -Depth 3 | Set-Content update.json -Encoding ASCII"

echo.
echo update.json criado com sucesso (UTF-8)!
pause

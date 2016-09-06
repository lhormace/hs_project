@echo off
:loop
echo Web API テスト用スタブ
powershell start-sleep -m 1000
powershell if ((Get-Random 3) -eq 0) { Copy-Item ./import/syogun_data_1.json ./share/syogun_data.json }
powershell start-sleep -m 1000
powershell if ((Get-Random 3) -eq 1) { Copy-Item ./import/syogun_data_2.json ./share/syogun_data.json }
powershell start-sleep -m 1000
powershell if ((Get-Random 3) -eq 2) { Copy-Item ./import/syogun_data_3.json ./share/syogun_data.json }
goto loop

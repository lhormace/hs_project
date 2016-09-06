sleep 1
set TARGET_FILE_PATTERN_VAL =powershell Get-Random 3
if ($a = 0) {
   Copy-Item ./import/syogun_data_1.json ./share/syogun_data.json
} elseif($a = 1) {
   Copy-Item ./import/syogun_data_2.json ./share/syogun_data.json
} elseif($a = 2) {
   Copy-Item ./import/syogun_data_3.json ./share/syogun_data.json
}

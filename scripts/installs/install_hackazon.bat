rem This will create a C:\wamp\www\hackazon direcotry containing all Hackazon files
cmd /c ""C:\Program Files\7-Zip\7z.exe" x C:\vagrant\resources\hackazon\hackazon.zip -oC:\wamp\www"

rem Configuration steps from the Hackazon User's Guide
ren C:\wamp\www\hackazon\assets\config\db.sample.php db.php
cmd /c ""C:\wamp\bin\mysql\mysql5.5.20\bin\mysql.exe" -u root --password=""  -e "create database hackazon;""
rem The password set with IDENTIFIED BY will be used later in the Hackazon Installation Wizard
cmd /c ""C:\wamp\bin\mysql\mysql5.5.20\bin\mysql.exe" -u root --password=""  -e "GRANT ALL ON hackazon.* TO hackazon@'localhost' IDENTIFIED BY 'MetasploitableHackazon';""

attrib -r +s C:\wamp\www\hackazon
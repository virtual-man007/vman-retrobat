echo ** VMAN Retro-Bliss LevelUp! Updater v1.0 by Bilu **
powershell -Command "Remove-Item -Path '.\vman-retrobat-master' -Recurse;Invoke-Command -scriptblock {wget https://github.com/virtual-man007/vman-retrobat/archive/master.zip -Outfile vman-retrobat.zip;Expand-Archive -Path 'vman-retrobat.zip' -DestinationPath '.';Remove-Item -Path 'vman-retrobat.zip'}"

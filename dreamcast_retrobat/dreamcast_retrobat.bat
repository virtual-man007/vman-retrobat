cd V:\roms\dreamcast
ren *.CD1 *.chd
ren *.CD2 *.chd
ren *.CD3 *.chd
ren *.CD4 *.chd
powershell -Command "Invoke-Command -scriptblock {$ErrorActionPreference = 'SilentlyContinue';Get-Childitem *.m3u -depth 1 | ForEach {((Get-Content -Path $_ -Raw) -replace '.CD1|.CD2|.CD3|.CD4','.chd') | Set-Content -Path $_ }}"
attrib +h "Biohazard - Code - Veronica - Kanzenban (Japan) (Translated En) (Disc 1).chd"
attrib +h "Biohazard - Code - Veronica - Kanzenban (Japan) (Translated En) (Disc 2).chd"
attrib +h "D2 (USA) (Disc 1).chd"
attrib +h "D2 (USA) (Disc 2).chd"
attrib +h "D2 (USA) (Disc 3).chd"
attrib +h "D2 (USA) (Disc 4).chd"
attrib +h "Deep Fighter (USA) (Disc 1).chd"
attrib +h "Deep Fighter (USA) (Disc 2).chd"
attrib +h "Headhunter (Europe) (Disc 1).chd"
attrib +h "Headhunter (Europe) (Disc 2).chd"
attrib +h "Resident Evil - Code - Veronica (USA) (Disc 1).chd"
attrib +h "Resident Evil - Code - Veronica (USA) (Disc 2).chd"
attrib +h "Shenmue (USA) (Disc 1).chd"
attrib +h "Shenmue (USA) (Disc 2).chd"
attrib +h "Shenmue (USA) (Disc 3).chd"
attrib +h "Shenmue (USA) (Disc 4).chd"
attrib +h "Shenmue II (Europe) (Disc 1).chd"
attrib +h "Shenmue II (Europe) (Disc 2).chd"
attrib +h "Shenmue II (Europe) (Disc 3).chd"
attrib +h "Shenmue II (Europe) (Disc 4).chd"
attrib +h "Skies of Arcadia (USA) (Disc 1).chd"
attrib +h "Skies of Arcadia (USA) (Disc 2).chd"
@REM Führt einen manuel clean durch
echo delete _BUILD\Common\MUNGED..
@RD /S /Q "_BUILD\Common\MUNGED"

echo delete _BUILD\Sides\COMMON\MUNGED..
@RD /S /Q "_BUILD\Sides\COMMON\MUNGED"

echo delete _BUILD\Sides\REPUBLIC\MUNGED..
@RD /S /Q "_BUILD\Sides\REPUBLIC\MUNGED"

echo delete _BUILD\Sides\ALLIANCE\MUNGED..
@RD /S /Q "_BUILD\Sides\ALLIANCE\MUNGED"

echo delete _BUILD\Sides\CIS\MUNGED..
@RD /S /Q "_BUILD\Sides\CIS\MUNGED"

echo delete _BUILD\Sides\EMPIRE\MUNGED..
@RD /S /Q "_BUILD\Sides\EMPIRE\MUNGED"

echo delete _BUILD\Worlds\CO3\MUNGED..
@RD /S /Q "_BUILD\Worlds\CO3\MUNGED"

echo delete _BUILD\Worlds\CO3\CO3.lvl..
@DEL _BUILD\Worlds\CO3\CO3.lvl

@REM echo delete _BUILD\Worlds\BSM\MUNGED..
@REM @RD /S /Q "_BUILD\Worlds\BSM\MUNGED"

@REM echo delete _BUILD\Worlds\BSM\BSM.lvl..
@REM @DEL _BUILD\Worlds\BSM\BSM.lvl

echo delete _BUILD\Worlds\Common\MUNGED..
@RD /S /Q "_BUILD\Worlds\Common\MUNGED"

echo delete _LVL_PC..
@RD /S /Q "_LVL_PC"

echo addon folder
@RD /S /Q "C:\Users\%USERNAME%\AppData\Local\VirtualStore\Program Files (x86)\LucasArts\Star Wars Battlefront II\GameData\addon\BSM"
@RD /S /Q "C:\Users\%USERNAME%\AppData\Local\VirtualStore\Program Files (x86)\LucasArts\Star Wars Battlefront II\GameData\addon\CO3"
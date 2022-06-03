

execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5] in pspawn run tp @s 96 18 17 41 -1
function prophunt:map/5/resetplayer
scoreboard players set TempleWaiting PHTimerManager 0
scoreboard players set TempleGame PHTimerManager 0

scoreboard players set Second PHTTemple 30
scoreboard players set Game PHTTemple 240
scoreboard players set Temple PHFounded 0
scoreboard players set Waiting PHTTemple 30

scoreboard players set TempleMax PHFounded 0
bossbar set ph_temple visible false
    ##selector return null
    bossbar set ph_temple players @a[scores={Location=3,PHIsInGame=1},tag=PHG.5]

scoreboard players set 5 PHMaps 0
scoreboard players set PropHunt Games 1

function prophunt:reloadgameplayerlist
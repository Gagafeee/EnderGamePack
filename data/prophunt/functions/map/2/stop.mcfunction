

execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.2] in pspawn run tp @s 96 18 17 41 -1
function prophunt:map/2/resetplayer
scoreboard players set NetherWaiting PHTimerManager 0
scoreboard players set NetherGame PHTimerManager 0

scoreboard players set Second PHTNether 30
scoreboard players set Game PHTNether 240
scoreboard players set Nether PHFounded 0
scoreboard players set Waiting PHTNether 30

scoreboard players set NetherMax PHFounded 0
bossbar set ph_nether visible false
    ##selector return null
    bossbar set ph_nether players @a[scores={Location=3,PHIsInGame=1},tag=PHG.2]

scoreboard players set 2 PHMaps 0
scoreboard players set PropHunt Games 1

function prophunt:reloadgameplayerlist
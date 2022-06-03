

execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.3] in pspawn run tp @s 96 18 17 41 -1
function prophunt:map/3/resetplayer
scoreboard players set OceanWaiting PHTimerManager 0
scoreboard players set OceanGame PHTimerManager 0

scoreboard players set Second PHTOcean 30
scoreboard players set Game PHTOcean 240
scoreboard players set Ocean PHFounded 0
scoreboard players set Waiting PHTOcean 30

scoreboard players set OceanMax PHFounded 0
bossbar set ph_ocean visible false
    ##selector return null
    bossbar set ph_ocean players @a[scores={Location=3,PHIsInGame=1},tag=PHG.3]

scoreboard players set 3 PHMaps 0
scoreboard players set PropHunt Games 1

function prophunt:reloadgameplayerlist
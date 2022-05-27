

execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] in pspawn run tp @s 96 18 17 41 -1
function prophunt:map/0/resetplayer
scoreboard players set ForestWaiting PHTimerManager 0
scoreboard players set ForestGame PHTimerManager 0

scoreboard players set Second PHTForest 30
scoreboard players set Game PHTForest 240
scoreboard players set Forest PHFounded 0
scoreboard players set Waiting PHTForest 30

scoreboard players set ForestMax PHFounded 0
bossbar set ph_forest visible false
    ##selector return null
    bossbar set ph_forest players @a[scores={Location=3,PHIsInGame=1},tag=PHG.0]

scoreboard players set 0 PHMaps 0
scoreboard players set PropHunt Games 1

function prophunt:reloadgameplayerlist
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] in pspawn run tp @s 96 18 17 41 -1
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] run scoreboard players set @s PHIsInGame 0
execute as @a[scores={Location=3},tag=PHB.Deepslate] run tag @s remove PHB.Deepslate
execute as @a[scores={Location=3},tag=PHB.Moss] run tag @s remove PHB.Moss
execute as @a[scores={Location=3},tag=PHB.Oak_log] run tag @s remove PHB.Oak_log
execute as @a[scores={Location=3},tag=PHB.Clay] run tag @s remove PHB.Clay
execute as @a[scores={Location=3},tag=PHG.0,tag=finder] run tag @s remove finderwaiting
execute as @a[scores={Location=3},tag=PHG.0,tag=!finder] run effect clear @s invisibility
execute as @a[scores={Location=3},tag=PHG.0,tag=finder] run tag @s remove finder
execute as @a[scores={Location=3},tag=PHG.0] run tag @s remove PHG.0
scoreboard players set ForestWaiting PHTimerManager 0
scoreboard players set ForestGame PHTimerManager 0

scoreboard players set Second PHTForest 30
scoreboard players set Game PHTForest 120
scoreboard players set Forest PHFounded 0
bossbar set ph_forest visible false
    ##selector return null
    bossbar set ph_forest players @a[scores={Location=3,PHIsInGame=1},tag=PHG.0]

scoreboard players set 0 PHMaps 0
function prophunt:reloadgameplayerlist
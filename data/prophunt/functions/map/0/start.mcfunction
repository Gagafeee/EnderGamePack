#Generating map..
tellraw @s ["",{"text": "Generating Map...", "color": "green"}]
execute as @s in pforest run tp @s 15 -14 -19 -137 7
execute as @s[tag=finder] in pforest run tp @s 44.6 -15.5 -134 45 -0.3
execute as @s[tag=finder] run tag @s add finderwaiting
execute as @s[tag=!finder] run effect give @s invisibility 999999 255 true
scoreboard players set @s PHIsInGame 1
execute as @s[tag=!finder,tag=PHG.0] run title @s times 20 60 20
execute as @s[tag=!finder,tag=PHG.0] run title @s subtitle {"score":{"name":"Waiting","objective":"PHTForest"},"color":"red"}
execute as @s[tag=!finder,tag=PHG.0,tag=PHB.Deepslate] run title @s title {"text":"Deepslate","color": "gray"}
execute as @s[tag=!finder,tag=PHG.0,tag=PHB.Moss] run title @s title {"text":"Moss","color": "green"}
execute as @s[tag=!finder,tag=PHG.0,tag=PHB.Oak_log] run title @s title {"text":"Oak_log","color": "gold"}
execute as @s[tag=!finder,tag=PHG.0,tag=PHB.Clay] run title @s title {"text":"Clay","color": "white"}
scoreboard players set 0 PHMaps 1
execute as @s[tag=finder] run scoreboard players set @s PHTry 0
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0,tag=!finder] run scoreboard players add @s PHTry 1
execute as @s[tag=finder] run scoreboard players add @s PHTry 5
scoreboard players set ForestOperation PHFounded 0
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0,tag=!finder] run scoreboard players add ForestOperation PHFounded 1
execute store result bossbar minecraft:ph_forest max run scoreboard players get ForestOperation PHFounded
scoreboard players reset ForestOperation PHFounded

#start waiting timer
scoreboard players set ForestWaiting PHTimerManager 1
#Generating map..
tellraw @s ["",{"text": "Generating Map...", "color": "green"}]
execute as @s in pnether run tp @s 45.5 9 60.5 140 -1
execute as @s[tag=finder] in pnether run tp @s 44 19.7 -36.5 35 14
execute as @s[tag=finder] run tag @s add finderwaiting
execute as @s[tag=!finder] run effect give @s invisibility 999999 255 true
scoreboard players set @s PHIsInGame 1
execute as @s[tag=!finder,tag=PHG.2] run title @s times 20 60 20
execute as @s[tag=!finder,tag=PHG.2] run title @s subtitle {"score":{"name":"Waiting","objective":"PHTNether"},"color":"red"}
execute as @s[tag=!finder,tag=PHG.2,tag=PHB.Deepslate] run title @s title {"text":"Deepslate","color": "gray"}
execute as @s[tag=!finder,tag=PHG.2,tag=PHB.Moss] run title @s title {"text":"Moss","color": "green"}
execute as @s[tag=!finder,tag=PHG.2,tag=PHB.Oak_log] run title @s title {"text":"Oak_log","color": "gold"}
execute as @s[tag=!finder,tag=PHG.2,tag=PHB.Clay] run title @s title {"text":"Clay","color": "white"}
scoreboard players set 2 PHMaps 1
execute as @s[tag=finder] run scoreboard players set @s PHTry 0
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.2,tag=!finder] run scoreboard players add @s PHTry 1
execute as @s[tag=finder] run scoreboard players add @s PHTry 5
scoreboard players set NetherOperation PHFounded 0
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.2,tag=!finder] run scoreboard players add NetherOperation PHFounded 1
execute store result bossbar minecraft:ph_nether max run scoreboard players get NetherOperation PHFounded
scoreboard players reset NetherOperation PHFounded
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.2,tag=!finder] run scoreboard players add NetherMax PHFounded 1

#start waiting timer
scoreboard players set NetherWaiting PHTimerManager 1
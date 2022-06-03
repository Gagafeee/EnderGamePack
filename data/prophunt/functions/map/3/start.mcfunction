#Generating map..true
tellraw @s ["",{"text": "Generating Map...", "color": "green"}]
execute as @s in pocean run tp @s -41 -5 13 -54 -3
execute as @s[tag=finder] in pocean run tp @s -41 -5 13 -54 -3
execute as @s[tag=finder] run tag @s add finderwaiting
execute as @s[tag=!finder] run effect give @s invisibility 999999 255 true
scoreboard players set @s PHIsInGame 1
execute as @s[tag=!finder,tag=PHG.3] run title @s times 20 60 20
execute as @s[tag=!finder,tag=PHG.3] run title @s subtitle {"score":{"name":"Waiting","objective":"PHTForest"},"color":"red"}
execute as @s[tag=!finder,tag=PHG.3,tag=PHB.Prismarine] run title @s title {"text":"Prismarine","color": "aqua"}
execute as @s[tag=!finder,tag=PHG.3,tag=PHB.Raw_gold_block] run title @s title {"text":"Gold","color": "gold"}
execute as @s[tag=!finder,tag=PHG.3,tag=PHB.Stone] run title @s title {"text":"Stone","color": "gray"}
execute as @s[tag=!finder,tag=PHG.3,tag=PHB.Twisting_vine] run title @s title {"text":"Vine","color": "blue"}
scoreboard players set 3 PHMaps 1
execute as @s[tag=finder] run scoreboard players set @s PHTry 0
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.3,tag=!finder] run scoreboard players add @s PHTry 1
execute as @s[tag=finder] run scoreboard players add @s PHTry 5
scoreboard players set OceanOperation PHFounded 0
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.3,tag=!finder] run scoreboard players add OceanOperation PHFounded 1
execute store result bossbar minecraft:ph_ocean max run scoreboard players get OceanOperation PHFounded
scoreboard players reset OceanOperation PHFounded
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.3,tag=!finder] run scoreboard players add OceanMax PHFounded 1

#start waiting timer
scoreboard players set OceanWaiting PHTimerManager 1
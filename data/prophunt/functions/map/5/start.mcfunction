#Generating map..
tellraw @s ["",{"text": "Generating Map...", "color": "green"}]
execute as @s in ptemple run tp @s 29 -5 18 31 0
execute as @s[tag=finder] in ptemple run tp @s 29 -5 18 31 0
execute as @s[tag=finder] run tag @s add finderwaiting
execute as @s[tag=!finder] run effect give @s invisibility 999999 255 true
scoreboard players set @s PHIsInGame 1
execute as @s[tag=!finder,tag=PHG.5] run title @s times 20 60 20
execute as @s[tag=!finder,tag=PHG.5] run title @s subtitle {"score":{"name":"Waiting","objective":"PHTTemple"},"color":"red"}
execute as @s[tag=!finder,tag=PHG.5,tag=PHB.Orange_terracotta] run title @s title {"text":"Orange Terracotta","color": "gold"}
execute as @s[tag=!finder,tag=PHG.5,tag=PHB.Sandstone_stairs] run title @s title {"text":"Sandstone Stairs","color": "white"}
execute as @s[tag=!finder,tag=PHG.5,tag=PHB.Gold_block] run title @s title {"text":"Gold Block","color": "yellow"}
execute as @s[tag=!finder,tag=PHG.5,tag=PHB.Blue_terracotta] run title @s title {"text":"Blue Terracotta","color": "blue"}
scoreboard players set 5 PHMaps 1
execute as @s[tag=finder] run scoreboard players set @s PHTry 0
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder] run scoreboard players add @s PHTry 1
execute as @s[tag=finder] run scoreboard players add @s PHTry 5
scoreboard players set TempleOperation PHFounded 0
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder] run scoreboard players add TempleOperation PHFounded 1
execute store result bossbar minecraft:ph_temple max run scoreboard players get TempleOperation PHFounded
scoreboard players reset TempleOperation PHFounded
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder] run scoreboard players add TempleMax PHFounded 1

#start waiting timer
scoreboard players set TempleWaiting PHTimerManager 1
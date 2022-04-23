execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] in pspawn run tp @s 96 18 17 41 -1
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] run scoreboard players set @s PHIsInGame 0
execute as @a[scores={Location=3},tag=PHG.0,tag=finder] run tag @s remove finderwaiting
execute as @a[scores={Location=3},tag=PHG.0,tag=finder] run tag @s remove finder
execute as @a[scores={Location=3},tag=PHG.0] run tag @s remove PHG.0

scoreboard players set 0 PHMaps 0
function prophunt:reloadgameplayerlist
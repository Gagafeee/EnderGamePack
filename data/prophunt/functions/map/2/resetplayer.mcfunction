execute as @a[scores={PHIsInGame=1},tag=PHG.2] run scoreboard players set @s PHIsInGame 0
execute as @a[tag=PHB.Deepslate] run tag @s remove PHB.Deepslate
execute as @a[tag=PHB.Moss] run tag @s remove PHB.Moss
execute as @a[tag=PHB.Oak_log] run tag @s remove PHB.Oak_log
execute as @a[tag=PHB.Clay] run tag @s remove PHB.Clay
execute as @a[tag=PHB.DISABLED] run tag @s remove PHB.DISABLED
execute as @a[tag=PHFOUNDED] run tag @s remove PHFOUNDED
execute as @a[tag=PHG.2,tag=finder] run tag @s remove finderwaiting
execute as @a[tag=PHG.2,tag=finder] run clear @s carrot_on_a_stick
execute as @a[tag=PHG.2,tag=!finder] run effect clear @s invisibility
execute as @a[tag=PHG.2,tag=!finder] run effect clear @s slowness
execute as @a[tag=PHG.2,tag=finder] run scoreboard players reset @s PHTry
execute as @a[tag=PHG.2,tag=finder] run tag @s remove finder
execute as @a[tag=PHG.2] run tag @s remove PHG.2
bossbar set ph_nether players @a[scores={Location=3,PHIsInGame=1},tag=PHG.2]
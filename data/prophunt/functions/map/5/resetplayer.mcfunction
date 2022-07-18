execute as @a[scores={PHIsInGame=1},tag=PHG.5] run scoreboard players set @s PHIsInGame 0
execute as @a[tag=PHB.Orange_terracotta] run tag @s remove PHB.Orange_terracotta
execute as @a[tag=PHB.Sandstone_stairs] run tag @s remove PHB.Sandstone_stairs
execute as @a[tag=PHB.Gold_block] run tag @s remove PHB.Gold_block
execute as @a[tag=PHB.Blue_terracotta] run tag @s remove PHB.Blue_terracotta
execute as @a[tag=PHB.DISABLED] run tag @s remove PHB.DISABLED
execute as @a[tag=PHFOUNDED] run tag @s remove PHFOUNDED
execute as @a[tag=PHG.5,tag=finder] run tag @s remove finderwaiting
execute as @a[tag=PHG.5,tag=finder] run clear @s carrot_on_a_stick
execute as @a[tag=PHG.5,tag=!finder] run effect clear @s invisibility
execute as @a[tag=PHG.5,tag=!finder] run effect clear @s slowness
execute as @a[tag=PHG.5,tag=finder] run scoreboard players reset @s PHTry
execute as @a[tag=PHG.5,tag=finder] run tag @s remove finder
execute as @a[tag=PHG.5] run tag @s remove PHG.5
bossbar set ph_temple players @a[scores={Location=3,PHIsInGame=1},tag=PHG.5]
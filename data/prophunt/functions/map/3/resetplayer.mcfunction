execute as @a[scores={PHIsInGame=1},tag=PHG.3] run scoreboard players set @s PHIsInGame 0
execute as @a[tag=PHB.Prismarine] run tag @s remove PHB.Prismarine
execute as @a[tag=PHB.Raw_gold_block] run tag @s remove PHB.Raw_gold_block
execute as @a[tag=PHB.Stone] run tag @s remove PHB.Stone
execute as @a[tag=PHB.Twisting_vine] run tag @s remove PHB.Twisting_vine
execute as @a[tag=PHB.DISABLED] run tag @s remove PHB.DISABLED
execute as @a[tag=PHFOUNDED] run tag @s remove PHFOUNDED
execute as @a[tag=PHG.3,tag=finder] run tag @s remove finderwaiting
execute as @a[tag=PHG.3,tag=finder] run clear @s carrot_on_a_stick
execute as @a[tag=PHG.3,tag=!finder] run effect clear @s invisibility
execute as @a[tag=PHG.3,tag=!finder] run effect clear @s slowness
execute as @a[tag=PHG.3,tag=finder] run scoreboard players reset @s PHTry
execute as @a[tag=PHG.3,tag=finder] run tag @s remove finder
execute as @a[tag=PHG.3] run tag @s remove PHG.3
bossbar set ph_ocean players @a[scores={Location=3,PHIsInGame=1},tag=PHG.3]
scoreboard players set PropHunt GamePlayerNumber 0
execute as @a[scores={Location=3}] run scoreboard players add PropHunt GamePlayerNumber 1
scoreboard players set PHSpawn GamePlayerNumber 0
execute as @a[scores={Location=3,PHIsInGame=0}] run scoreboard players add PHSpawn GamePlayerNumber 1
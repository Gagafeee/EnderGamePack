scoreboard players set PropHunt GamePlayerNumber 0
execute as @a[scores={Location=3}] run scoreboard players add PropHunt GamePlayerNumber 1

scoreboard players set PHSpawn GamePlayerNumber 0
execute as @a[scores={Location=3,PHIsInGame=0}] run scoreboard players add PHSpawn GamePlayerNumber 1

scoreboard players set PHForest GamePlayerNumber 0
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] run scoreboard players add PHForest GamePlayerNumber 1
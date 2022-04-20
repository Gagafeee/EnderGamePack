function jump:jumpeffectupdate
execute as @e[tag=checkpoint1] at @s if entity @a[scores={Location=1},distance=..1] run function jump:jumpcheckpointtrigger/1
execute as @e[tag=checkpoint2] at @s if entity @a[scores={Location=1},distance=..1] run function jump:jumpcheckpointtrigger/2
execute as @e[tag=checkpoint3] at @s if entity @a[scores={Location=1},distance=..1] run function jump:jumpcheckpointtrigger/3
execute as @e[tag=checkpoint4] at @s if entity @a[scores={Location=1},distance=..1] run function jump:jumpcheckpointtrigger/4
execute as @e[tag=checkpoint5] at @s if entity @a[scores={Location=1},distance=..1] run function jump:jumpcheckpointtrigger/5
##reload data trigger
execute as @a unless entity @s[scores={Location=1}] run scoreboard players reset @s JumpReloadTrigger
execute as @e[scores={Location=1}] run scoreboard players enable @s JumpReloadTrigger
execute as @a[scores={Location=1,JumpReloadTrigger=1..3}] at @s run function jump:data/load
execute as @a[scores={JumpReloadTrigger=1..3}] unless entity @s[scores={Location=1}] run scoreboard players set @s JumpReloadTrigger 0
#team
execute as @a[scores={Location=1},team=!Jump] run team join Jump @s
#stats
execute as @a[scores={Location=1}] if score @s JSBestCheckpoint < @s JumpCheckpoint run scoreboard players operation @s JSBestCheckpoint = @s JumpCheckpoint


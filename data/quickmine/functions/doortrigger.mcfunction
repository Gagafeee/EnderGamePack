execute as @a[scores={Location=4,darkOakDoorTrigger=1..}] at @s run function quickmine:stop
execute as @a[scores={Location=4,darkOakDoorTrigger=1..}] at @s run tp @s -14.5 35 -18 -180 3
scoreboard players set @a[scores={Location=4,darkOakDoorTrigger=1..}] darkOakDoorTrigger 0
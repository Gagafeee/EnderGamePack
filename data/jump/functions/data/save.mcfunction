execute as @a[scores={Location=1}] at @s run scoreboard players set @s JumpPosSaver 1
execute as @a[scores={Location=1}] at @s run scoreboard players operation @s JumpPosSaver += @s JumpCheckpoint
execute as @a[scores={Location=1}] at @s if score @s JumpPosSaver > @s JSBestCheckpoint run function xp:add/little
execute as @a[scores={Location=1}] at @s run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Saved Progress","color":"green"},{"text":"]","color":"dark_green"}] 

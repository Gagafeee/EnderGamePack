execute as @s run scoreboard players add @s QMLift 1

execute as @s if entity @s[scores={QMLift=0}] run tp @s ~ 36 ~
execute as @s if entity @s[scores={QMLift=0}] run title @s actionbar ["",{"text":"Zone","color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"QMLift"},"color":"gold"}]
execute as @s if entity @s[scores={QMLift=0}] at @s run playsound minecraft:entity.ender_eye.death master @s

execute as @s if entity @s[scores={QMLift=-1}] run tp @s ~ 0 ~
execute as @s if entity @s[scores={QMLift=-1}] run title @s actionbar ["",{"text":"Zone","color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"QMLift"},"color":"gold"}]
execute as @s if entity @s[scores={QMLift=-1}] at @s run playsound minecraft:entity.ender_eye.death master @s

execute as @s run scoreboard players set @s jump -3
execute as @s if entity @s[scores={QMLift=1..}] run scoreboard players remove @s QMLift 1

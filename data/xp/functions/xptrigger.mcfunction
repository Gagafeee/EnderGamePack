execute as @s run tellraw @s ["",{"text":"Vous avez","color":"gold"},{"text":" ","color":"blue"},{"score":{"name":"@s","objective":"xp"},"color":"green"},{"text":"xp","color":"aqua"}]
execute as @s run function utils:setitems
execute as @s run scoreboard players set @s xptrigger 0
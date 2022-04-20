execute as @s run scoreboard players remove @s QMLift 1
execute as @s if score @s QMLift = -1 number if score @s QMLevel < lv-1 QMLift run tellraw @s ["",{"text":"[","color":"dark_red"},{"text":" You ","color":"red"},{"text":"cannot ","color":"yellow"},{"text":"go down, you ","color":"red"},{"text":"must ","color":"yellow"},{"text":"be Level ","color":"red"},{"score":{"name":"lv-1","objective":"QMLift"},"color":"aqua"},{"text":" ]","color":"dark_red"}]
execute as @s if score @s QMLift = -1 number if score @s QMLevel < lv-1 QMLift run scoreboard players set @s QMLift 0
execute as @s if score @s QMLift = -1 number if score @s QMLevel < lv-1 QMLift at @s run playsound entity.villager.no master @s
execute as @s if score @s QMLift = -2 number if score @s QMLevel < lv-2 QMLift run tellraw @s ["",{"text":"[","color":"dark_red"},{"text":" You ","color":"red"},{"text":"cannot ","color":"yellow"},{"text":"go down, you ","color":"red"},{"text":"must ","color":"yellow"},{"text":"be Level ","color":"red"},{"score":{"name":"lv-2","objective":"QMLift"},"color":"aqua"},{"text":" ]","color":"dark_red"}]
execute as @s if score @s QMLift = -2 number if score @s QMLevel < lv-2 QMLift run scoreboard players set @s QMLift -1
execute as @s if score @s QMLift = -2 number if score @s QMLevel < lv-2 QMLift at @s run playsound entity.villager.no master @s
execute as @s if entity @s[scores={QMLift=-1}] run tp @s ~ 1 ~
execute as @s if entity @s[scores={QMLift=-1}] run title @s actionbar ["",{"text":"Zone","color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"QMLift"},"color":"gold"}]
execute as @s if entity @s[scores={QMLift=-1}] at @s run playsound minecraft:entity.ender_eye.death master @s

execute as @s if entity @s[scores={QMLift=-2}] run tp @s ~ -34 ~ 3 ~
execute as @s if entity @s[scores={QMLift=-2}] run title @s actionbar ["",{"text":"Zone","color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"QMLift"},"color":"gold"}]
execute as @s if entity @s[scores={QMLift=-2}] at @s run playsound minecraft:entity.ender_eye.death master @s

execute as @s run scoreboard players set @s sneakTime -3
execute as @s if entity @s[scores={QMLift=-99999..-3}] run scoreboard players add @s QMLift 1

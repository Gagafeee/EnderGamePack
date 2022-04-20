#set gamemdoe
gamemode adventure @s
execute as @s run function quickmine:team/select
#set scoreboard
scoreboard players set @s QMTimer 0
scoreboard players set @s QMTTick 25
scoreboard players set @s QMTSecond 00
scoreboard players set @s QMTMinute 5
execute as @s run xp set @s 0 levels
execute as @s run xp set @s 0 points
scoreboard players set @s QMScore 0
#title
title @s times 20 20 20
title @s subtitle {"text":"Mine the most minerals ","color":"light_purple"}
title @s title ["",{"text":"Let's ","color":"aqua"},{"text":"GO","color":"green"}]
#launch timer
scoreboard players set @s QMTimer 1
execute as @s run function quickmine:setitems
#give
execute as @s[scores={QMLevel=-1..2}] run item replace entity @s container.4 with minecraft:iron_pickaxe{display:{Name:'[{"text":"Iron Picaxe","color":"gray"}]'},Unbreakable:1,HideFlags:127,CanDestroy:["minecraft:iron_ore","minecraft:lapis_ore","minecraft:diamond_ore","minecraft:emerald_ore","minecraft:gold_ore","minecraft:redstone_ore","minecraft:copper_ore","minecraft:deepslate_iron_ore","minecraft:deepslate_lapis_ore","minecraft:deepslate_diamond_ore","minecraft:deepslate_emerald_ore","minecraft:deepslate_gold_ore","minecraft:deepslate_redstone_ore","minecraft:deepslate_copper_ore"]} 1
execute as @s[scores={QMLevel=3..5}] run item replace entity @s container.4 with minecraft:diamond_pickaxe{display:{Name:'[{"text":"Diamond Pickaxe","color":"aqua"}]'},Unbreakable:1,HideFlags:127,CanDestroy:["minecraft:iron_ore","minecraft:lapis_ore","minecraft:diamond_ore","minecraft:emerald_ore","minecraft:gold_ore","minecraft:redstone_ore","minecraft:copper_ore","minecraft:deepslate_iron_ore","minecraft:deepslate_lapis_ore","minecraft:deepslate_diamond_ore","minecraft:deepslate_emerald_ore","minecraft:deepslate_gold_ore","minecraft:deepslate_redstone_ore","minecraft:deepslate_copper_ore"]} 1
execute as @s[scores={QMLevel=6}] run item replace entity @s container.4 with minecraft:netherite_pickaxe{display:{Name:'[{"text":"Netherite Pickaxe","color":"light_green"}]'},Unbreakable:1,HideFlags:127,CanDestroy:["minecraft:iron_ore","minecraft:lapis_ore","minecraft:diamond_ore","minecraft:emerald_ore","minecraft:gold_ore","minecraft:redstone_ore","minecraft:copper_ore","minecraft:deepslate_iron_ore","minecraft:deepslate_lapis_ore","minecraft:deepslate_diamond_ore","minecraft:deepslate_emerald_ore","minecraft:deepslate_gold_ore","minecraft:deepslate_redstone_ore","minecraft:deepslate_copper_ore"]} 1
execute as @s[scores={QMLevel=7..8}] run item replace entity @s container.4 with minecraft:netherite_pickaxe{display:{Name:'[{"text":"GOD Pickaxe","color":"light_purple"}]'},Unbreakable:1,HideFlags:127,CanDestroy:["minecraft:iron_ore","minecraft:lapis_ore","minecraft:diamond_ore","minecraft:emerald_ore","minecraft:gold_ore","minecraft:redstone_ore","minecraft:copper_ore","minecraft:deepslate_iron_ore","minecraft:deepslate_lapis_ore","minecraft:deepslate_diamond_ore","minecraft:deepslate_emerald_ore","minecraft:deepslate_gold_ore","minecraft:deepslate_redstone_ore","minecraft:deepslate_copper_ore"],Enchantments:[{id:"minecraft:efficiency",lvl:2}]} 1
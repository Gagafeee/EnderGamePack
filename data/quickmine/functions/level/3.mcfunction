function quickmine:level/generaterandomblocktype
execute as @s at @s if block ~ ~ ~ polished_deepslate if score QuickMine Games = un number if score blocktype QMModule matches 700..900 run setblock ~ ~ ~ deepslate_gold_ore destroy
execute as @s at @s if block ~ ~ ~ polished_deepslate if score QuickMine Games = un number if score blocktype QMModule matches 900..1000 run setblock ~ ~ ~ deepslate_redstone_ore destroy
execute as @s at @s if block ~ ~ ~ polished_deepslate if score QuickMine Games = un number if score blocktype QMModule matches 500..700 run setblock ~ ~ ~ deepslate_iron_ore destroy
execute as @s at @s if block ~ ~ ~ polished_deepslate if score QuickMine Games = un number if score blocktype QMModule matches 400..500 run setblock ~ ~ ~ deepslate_copper_ore destroy
execute as @s at @s if block ~ ~ ~ polished_deepslate if score QuickMine Games = un number if score blocktype QMModule matches 0..400 run setblock ~ ~ ~ polished_deepslate
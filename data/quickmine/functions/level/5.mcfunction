function quickmine:level/generaterandomblocktype
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 900..1000 run setblock ~ ~ ~ diamond_ore destroy
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 500..700 run setblock ~ ~ ~ gold_ore destroy
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 700..900 run setblock ~ ~ ~ redstone_ore destroy
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 400..500 run setblock ~ ~ ~ iron_ore destroy
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 0..400 run setblock ~ ~ ~ polished_andesite
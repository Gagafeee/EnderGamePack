function quickmine:level/generaterandomblocktype
execute as @s at @s if block ~ ~ ~ polished_diorite if score QuickMine Games = un number if score blocktype QMModule matches 600..800 run setblock ~ ~ ~ diamond_ore destroy
execute as @s at @s if block ~ ~ ~ polished_diorite if score QuickMine Games = un number if score blocktype QMModule matches 800..900 run setblock ~ ~ ~ emerald_ore destroy
execute as @s at @s if block ~ ~ ~ polished_diorite if score QuickMine Games = un number if score blocktype QMModule matches 400..600 run setblock ~ ~ ~ redstone_ore destroy
execute as @s at @s if block ~ ~ ~ polished_diorite if score QuickMine Games = un number if score blocktype QMModule matches 900..1000 run setblock ~ ~ ~ lapis_ore destroy
execute as @s at @s if block ~ ~ ~ polished_diorite if score QuickMine Games = un number if score blocktype QMModule matches 0..400 run setblock ~ ~ ~ polished_andesite
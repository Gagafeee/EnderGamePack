function quickmine:level/generaterandomblocktype
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 800..1000 run setblock ~ ~ ~ lapis_ore destroy
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 100..400 run setblock ~ ~ ~ diamond_ore destroy
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 400..800 run setblock ~ ~ ~ emerald_ore destroy
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 0..100 run setblock ~ ~ ~ polished_andesite
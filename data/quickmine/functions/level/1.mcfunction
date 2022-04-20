function quickmine:level/generaterandomblocktype
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 900..1000 run setblock ~ ~ ~ gold_ore destroy
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 600..900 run setblock ~ ~ ~ iron_ore destroy
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 200..600 run setblock ~ ~ ~ copper_ore destroy
execute as @s at @s if block ~ ~ ~ polished_andesite if score QuickMine Games = un number if score blocktype QMModule matches 0..200 run setblock ~ ~ ~ polished_andesite
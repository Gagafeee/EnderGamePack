function quickmine:level/generaterandomblocktype
execute as @s at @s if block ~ ~ ~ polished_blackstone if score QuickMine Games = un number if score blocktype QMModule matches 700..1000 run setblock ~ ~ ~ lapis_ore destroy
execute as @s at @s if block ~ ~ ~ polished_blackstone if score QuickMine Games = un number if score blocktype QMModule matches 300..500 run setblock ~ ~ ~ diamond_ore destroy
execute as @s at @s if block ~ ~ ~ polished_blackstone if score QuickMine Games = un number if score blocktype QMModule matches 500..700 run setblock ~ ~ ~ emerald_ore destroy
execute as @s at @s if block ~ ~ ~ polished_blackstone if score QuickMine Games = un number if score blocktype QMModule matches 0..300 run setblock ~ ~ ~ polished_blackstone
function quickmine:level/generaterandomblocktype
execute if score QuickMine Games = un number if score blocktype QMModule matches 700..905 run setblock ~ ~ ~ redstone_ore destroy
execute if score QuickMine Games = un number if score blocktype QMModule matches 900..1000 run setblock ~ ~ ~ diamond_ore destroy
execute if score QuickMine Games = un number if score blocktype QMModule matches 0..700 run setblock ~ ~ ~ polished_blackstone destroy

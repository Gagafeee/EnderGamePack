function quickmine:level/generaterandomblocktype
##place block
execute if score QuickMine Games = un number if score blocktype QMModule matches 800..1000 run setblock ~ ~ ~ iron_ore destroy
execute if score QuickMine Games = un number if score blocktype QMModule matches 700..800 run setblock ~ ~ ~ copper_ore destroy
execute if score QuickMine Games = un number if score blocktype QMModule matches 0..700 run setblock ~ ~ ~ polished_andesite destroy


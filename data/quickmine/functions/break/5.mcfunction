function quickmine:level/generaterandomblocktype
execute if score QuickMine Games = un number if score blocktype QMModule matches 900..1000 run setblock ~ ~ ~ iron_ore destroy
execute if score QuickMine Games = un number if score blocktype QMModule matches 800..900 run setblock ~ ~ ~ copper_ore destroy
execute if score QuickMine Games = un number if score blocktype QMModule matches 0..800 run setblock ~ ~ ~ polished_granite destroy

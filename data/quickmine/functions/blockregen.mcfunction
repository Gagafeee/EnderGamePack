execute as @a[tag=consol] run say [QuickMine] EVENT.new
##place block
execute as @e[tag=QMB,tag=QML.1] at @s if block ~ ~ ~ polished_andesite run function quickmine:level/1
execute as @e[tag=QMB,tag=QML.2] at @s if block ~ ~ ~ polished_andesite run function quickmine:level/2
execute as @e[tag=QMB,tag=QML.3] at @s if block ~ ~ ~ polished_deepslate run function quickmine:level/3
execute as @e[tag=QMB,tag=QML.4] at @s if block ~ ~ ~ polished_andesite run function quickmine:level/4
execute as @e[tag=QMB,tag=QML.5] at @s if block ~ ~ ~ polished_granite run function quickmine:level/5
execute as @e[tag=QMB,tag=QML.6] at @s if block ~ ~ ~ polished_andesite run function quickmine:level/6
execute as @e[tag=QMB,tag=QML.7] at @s if block ~ ~ ~ polished_diorite run function quickmine:level/7
execute as @e[tag=QMB,tag=QML.8] at @s if block ~ ~ ~ polished_andesite run function quickmine:level/8
execute as @e[tag=QMB,tag=QML.9] at @s if block ~ ~ ~ polished_blackstone run function quickmine:level/9

execute if score QuickMine Games = un number unless block ~ ~ ~ polished_andesite run playsound minecraft:block.stone.place block @a[distance=..5] ~ ~ ~ 

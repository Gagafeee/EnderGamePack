execute as @a[tag=consol] run say [QuickMine] is polished_andesite
execute if score QuickMine Games = un number if block ~ ~-1 ~ polished_andesite run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["QMTimerareaeffectcloud","QMT"]}
execute as @a[tag=consol] run say [QuickMine] Summoned
execute as @a[tag=consol] run say [QuickMine] Lunchingloop
execute if score QuickMine Games = un number if block ~ ~-1 ~ polished_andesite at @e[tag=QMT,distance=..1] run function quickmine:regengeter
execute as @a[tag=consol] run say [QuickMine] Done
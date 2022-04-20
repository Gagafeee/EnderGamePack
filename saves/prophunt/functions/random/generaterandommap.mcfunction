execute as @a[tag=consol] run say [PROPHUNT] Generating new map...
summon area_effect_cloud ~ ~1 ~ {Tags:["ProphuntrandommapgeneratorArea"],Age:1}
execute store result score selectedmap prophuntmodul run data get entity @e[type=area_effect_cloud,tag=ProphuntrandommapgeneratorArea,limit=1] UUID[0]
execute as @a[tag=consol] run say [PROPHUNT] settingUP
scoreboard players operation selectedmap prophuntmodul %= mapindex prophuntmodul
kill @e[type=area_effect_cloud,tag=ProphuntrandommapgeneratorArea]
execute as @a[tag=consol] run say [PROPHUNT] Done
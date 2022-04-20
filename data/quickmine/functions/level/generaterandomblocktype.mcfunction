summon area_effect_cloud ~ ~1 ~ {Tags:["QuickMineGenerateRandomBlockTypeAreaeffectcloud"],Age:1}
execute store result score blocktype QMModule run data get entity @e[type=area_effect_cloud,tag=QuickMineGenerateRandomBlockTypeAreaeffectcloud,limit=1] UUID[0]
scoreboard players operation blocktype QMModule %= blocktypeindex QMModule
kill @e[type=area_effect_cloud,tag=QuickMineGenerateRandomBlockTypeAreaeffectcloud]
summon area_effect_cloud ~ ~1 ~ {Tags:["AmongRandomTeamArea"],Age:1}
execute store result score rand AmongRandomTeam run data get entity @e[type=area_effect_cloud,tag=AmongRandomTeamArea,limit=1] UUID[0]
scoreboard players operation rand AmongRandomTeam %= max AmongRandomTeam
kill @e[type=area_effect_cloud,tag=AmongRandomTeamArea]

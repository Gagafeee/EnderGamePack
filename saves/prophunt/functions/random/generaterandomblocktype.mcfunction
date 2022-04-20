#select player
scoreboard players set @r[scores={Location=3,prophuntbloctype=-2},tag=!finder] prophuntbloctype -1
#generate random number
summon area_effect_cloud ~ ~1 ~ {Tags:["ProphuntrandomblocktypegeneratorArea"],Age:1}
#apply to seed
execute store result score seed prophuntbloctype run data get entity @e[type=area_effect_cloud,tag=ProphuntrandomblocktypegeneratorArea,limit=1] UUID[0]
#restrict to index
scoreboard players operation seed prophuntbloctype %= index prophuntbloctype
#set player to seed
scoreboard players operation @a[scores={Location=3,prophuntbloctype=-1}] prophuntbloctype = seed prophuntbloctype
#add 1 player to block
scoreboard players add block prophuntbloctype 1
#kill number generator
kill @e[type=area_effect_cloud,tag=ProphuntrandomblocktypegeneratorArea]
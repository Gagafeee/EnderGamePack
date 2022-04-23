#Generating map..
tellraw @s ["",{"text": "Generating Map...", "color": "green"}]
execute as @s[tag=finder] in pforest run tp @s 44.6 -15.5 -134 45 -0.3
execute as @s[tag=finder] run tag @s add finderwaiting
execute as @s[tag=!finder] in pforest run tp @s 15 -14 -19 -137 7
scoreboard players set @s PHIsInGame 1

scoreboard players set 0 PHMaps 1
function prophunt:reloadgameplayerlist
#start waiting timer
scoreboard players set ForestWaiting PHTimerManager 1
##TP
execute in pspawn run tp @s 96 18 17 41 -1
##set location and gameplayer list
scoreboard players set @s PHIsInGame 0
scoreboard players set @s Location 3
team join PropHunt @s
function prophunt:reloadgameplayerlist
##title and sound
title @s actionbar {"text":"PropHunt","color":"green"}
execute as @s at @s run playsound entity.ender_eye.launch master @s
#Effects
effect give @s fire_resistance 999999 255 true
effect clear @s speed

##Reset inventory
function prophunt:setitems
#message
tellraw @a[scores={Location=3,PHIsInGame=0}] ["",{"text":"[","color":"dark_green"},{"text":"+","color":"green"},{"text":"] ","color":"dark_green"},{"selector":"@s","color":"aqua"},{"text":" a rejoint le Lobby","color":"green"}]
##Reset deplacement
scoreboard players set @s PropHuntTrigger 0
scoreboard players set @s Deplacement 0
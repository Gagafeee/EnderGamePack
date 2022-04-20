##tp
execute in pspawn run tp @a[scores={Deplacement=2,PropHuntTrigger=1}] 96 18 17 41 -1
##set location and gameplayer list
scoreboard players set @a[scores={Deplacement=2,PropHuntTrigger=1}] Location 3
function prophunt:reloadgameplayerlist
team join PropHunt @a[scores={Deplacement=2,PropHuntTrigger=1}]
##title and sound
title @a[scores={Deplacement=2,PropHuntTrigger=1}] actionbar {"text":"PropHunt","color":"green"}
execute as @a[scores={Deplacement=2,PropHuntTrigger=1}] at @s run playsound entity.ender_eye.launch master @s
#set blocktype
scoreboard players set @a[scores={Deplacement=2,PropHuntTrigger=1}] prophuntbloctype -2
effect give @a[scores={Deplacement=2,PropHuntTrigger=1}] fire_resistance 999999 255 true
effect clear @a[scores={Deplacement=2,PropHuntTrigger=1}] speed
##reset inventory
function prophunt:setitems
##reset deplacement
scoreboard players set @a[scores={Deplacement=2,PropHuntTrigger=1}] PropHuntTrigger 0
scoreboard players set @a[scores={Deplacement=2,PropHuntTrigger=0}] Deplacement 0
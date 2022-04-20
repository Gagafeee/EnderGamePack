##tp
execute in pspawn run tp @s 96 18 17 41 -1
##set location and gameplayer list
scoreboard players set @s Location 3
team join PropHunt @s
##title and sound
title @s actionbar {"text":"PropHunt","color":"green"}
execute as @s at @s run playsound entity.ender_eye.launch master @s
#set blocktype
scoreboard players set @s prophuntbloctype -2
effect give @s fire_resistance 999999 255 true
effect clear @s speed
##reset inventory
function prophunt:setitems
##reset deplacement
scoreboard players set @s PropHuntTrigger 0
scoreboard players set @s Deplacement 0
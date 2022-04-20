##tp
execute in overworld run tp @a[scores={Deplacement=2,GAMETrigger=1}] COORD
##set location and gameplayer liste
#scoreboard players set @a[scores={Deplacement=2,GAMETrigger=1}] Location LOCATION
function game:reloadgameplayerlist
team join GAME @a[scores={Deplacement=2,GAMETrigger=1}]
##title and sound
title @a[scores={Deplacement=2,GAMETrigger=1}] actionbar {"text":"GAME","color":"color"}
execute as @a[scores={Deplacement=2,GAMETrigger=1}] at @s run playsound entity.ender_eye.launch master @s
#Set gameparames
##
##
##reset inventory
function game:setitems
##reset deplacement
scoreboard players set @a[scores={Deplacement=2,GAMETrigger=1}] GAMETrigger 0
scoreboard players set @a[scores={Deplacement=2,GAMETrigger=0}] Deplacement 0
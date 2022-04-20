##tp
execute in quickmine run tp @a[scores={Deplacement=2,QuickMineTrigger=1}] -14.5 35 -18.5 -176 0
##set location and gameplayer list
scoreboard players set @a[scores={Deplacement=2,QuickMineTrigger=1}] Location 4
function quickmine:reloadgameplayerlist

execute as @a[scores={Deplacement=2,QuickMineTrigger=1}] run effect give @s saturation 999999 255 true
execute as @a[scores={Deplacement=2,QuickMineTrigger=1}] run effect give @s resistance 999999 255 true
execute as @a[scores={Deplacement=2,QuickMineTrigger=1}] as @s run effect clear @s speed
execute as @a[scores={Deplacement=2,QuickMineTrigger=1}] run function quickmine:team/selectscore
##title and sound
title @a[scores={Deplacement=2,QuickMineTrigger=1}] actionbar {"text":"QuickMine","color":"color"}
execute as @a[scores={Deplacement=2,QuickMineTrigger=1}] at @s run playsound entity.ender_eye.launch master @s

#Set gameparames
execute as @a[scores={Deplacement=2,QuickMineTrigger=1}] run xp set @s 0 levels
execute as @a[scores={Deplacement=2,QuickMineTrigger=1}] run xp set @s 0 points
scoreboard players set @a[scores={Deplacement=2,QuickMineTrigger=1}] QMScore 0
scoreboard players set @a[scores={Deplacement=2,QuickMineTrigger=1}] QMZone 0
scoreboard players set @a[scores={Deplacement=2,QuickMineTrigger=1}] sneakTime 0
##reset inventory
function quickmine:setitems

##reset deplacement
scoreboard players set @a[scores={Deplacement=2,QuickMineTrigger=1}] QuickMineTrigger 0
scoreboard players set @a[scores={Deplacement=2,QuickMineTrigger=0}] Deplacement 0
##tp
execute in spawn run tp @a[scores={Deplacement=2,JumpTrigger=1}] -295 178 73 64 3
##set location and gameplayer liste
scoreboard players set @a[scores={Deplacement=2,JumpTrigger=1}] Location 1
team join Jump @a[scores={Deplacement=2,JumpTrigger=1}]
##title and sound
title @a[scores={Deplacement=2,JumpTrigger=1}] actionbar {"text":"Jump","color":"blue"}
execute as @a[scores={Deplacement=2,JumpTrigger=1}] at @s run playsound entity.ender_eye.launch master @a[scores={Deplacement=2,JumpTrigger=1}]
execute as @a[scores={Deplacement=2,JumpTrigger=1}] run effect give @s resistance 999999 255 true
execute as @a[scores={Deplacement=2,JumpTrigger=1}] run effect clear @s speed
##reset inventory
function jump:jumpreloaditems
##set light
#execute as @a[scores={Deplacement=2,JumpTrigger=1}] run function jump:jumplightcreate
##get progress
execute as @a[scores={Deplacement=2,JumpTrigger=1}] if entity @s[scores={JumpPosSaver=1..6}] run tellraw @s ["",{"text":"\u25b6 ","color":"dark_aqua"},{"text":"You have ","color":"aqua"},{"text":"saved progress ","color":"yellow"},{"text":"(","color":"dark_green"},{"text":" Checkpoint","color":"green"},{"text":":","color":"aqua"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"JumpPosSaver"},"color":"gold"},{"text":" )","color":"dark_green"},{"text":" : ","color":"aqua"},{"text":"[","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger JumpReloadTrigger set 2"}},{"text":"Reload","color":"green","clickEvent":{"action":"run_command","value":"/trigger JumpReloadTrigger set 2"}},{"text":"]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger JumpReloadTrigger set 2"}}]
##reset deplacement
scoreboard players set @a[scores={Deplacement=2,JumpTrigger=1}] JSTimer 1
scoreboard players set @a[scores={Deplacement=2,JumpTrigger=1}] JumpTrigger 0
scoreboard players set @a[scores={Deplacement=2,JumpTrigger=0}] Deplacement 0
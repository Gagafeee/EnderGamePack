##set location
scoreboard players set @s Location 0
##Tp
execute in spawn run tp @s -266 173 72 145 -1.3
#set gamemode
execute as @s[tag=!admin] if entity @s run gamemode adventure @s
execute as @s[tag=admin] if entity @s run gamemode creative @s
##title
title @s times 20 100 20
title @s title [{"text":"B","color":"yellow"},{"text":"i","color":"#fee63f"},{"text":"e","color":"#fece3f"},{"text":"n","color":"#feb63f"},{"text":"v","color":"#fe9e3f"},{"text":"e","color":"#fe863f"},{"text":"n","color":"#fe6e3f"},{"text":"u","color":"#fe563f"},{"text":"e","color":"red"}]
title @s actionbar {"text":"Spawn","bold":true,"color":"#FF5F00"}
#team
execute as @s[scores={BuilderMode=-1,Deplacement=0},tag=!admin,team=!Player] run team join Player @s
execute as @s[scores={BuilderMode=-1},tag=admin,team=!admin] run team join admin @s
execute as @s[scores={BuilderMode=2},team=!Builder] run team join Builder @s
##reset SelectGameUI
scoreboard players set @s SelectGameUIQuit 0
scoreboard players set @s SelectGameUI 0
##reset scoreboard
#execute as @s if entity @s run scoreboard players set AmongUS GamePlayerNumber 0
#execute as @s if entity @s run function amongus:amongreloadgameplayerlist
execute as @s if entity @s run scoreboard players set Jump GamePlayerNumber 0
execute as @s if entity @s run function jump:jumpreloadgameplayerlist
execute as @s if entity @s run function prophunt:reloadgameplayerlist
execute as @s if entity @s run function quickmine:reloadgameplayerlist
execute as @s if entity @s run team join Player @s
effect clear @s
##reset chekpoint
scoreboard players set @s JumpCheckpoint 0
##set items
execute as @s run function utils:setitems
##Builder mode message
execute as @s[scores={BuilderMode=2}] if entity @s run tellraw @s ["",{"text":"--------------------","color":"aqua"},{"text":"\n"},{"text":"\u2714","color":"green"},{"text":"   BuilderMode","color":"green"},{"text":" ON","color":"green"},{"text":"\n"},{"text":"/Exit/","color":"red","clickEvent":{"action":"run_command","value":"/execute as @p run function utils:buildermod/buildermodexit"}},{"text":" - ","color":"aqua"},{"text":"/WorkPacks/","color":"blue","clickEvent":{"action":"run_command","value":"/execute as @p run function utils:buildermod/workpacks/workpacktellraw"},"hoverEvent":{"action":"show_text","contents":"New !"}},{"text":"\n"},{"text":"--------------------","color":"aqua"}]
##sond
execute as @s[tag=admin] at @s run playsound minecraft:ui.loom.take_result master @s
##Reset score
scoreboard players set @a Respawn 0
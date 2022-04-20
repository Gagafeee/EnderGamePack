##sound
execute as @s at @s run playsound minecraft:ui.toast.out master @s
##set score
scoreboard players set @s BuilderMode -1
#team set
team join admin @s[tag=admin]
team join Player @s[tag=!admin]
tag @s remove builder
#reset inv
execute as @s run function utils:setitems
##scoreboard
scoreboard players set @s Mode 1
##tellraw
tellraw @s ["",{"text":"-----------------","color":"aqua"},{"text":"\n"},{"text":"×","color":"dark_red"},{"text":" BuilderMode","color":"aqua"},{"text":" OFF","color":"green"},{"text":"\n"},{"text":"-----------------","color":"aqua"}]

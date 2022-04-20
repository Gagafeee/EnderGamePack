#stop timer
scoreboard players remove @s QMTSecond 1
scoreboard players remove @s QMTTick 1
scoreboard players set @s QMTimer 0
scoreboard players set @s QMZone 0

##clear
clear @s iron_pickaxe
clear @s diamond_pickaxe
clear @s netherite_pickaxe
##title
title @s times 20 30 20
title @s subtitle {"text":"C'est fini","color":"aqua"}
title @s title {"text":"Stop","color":"red"}
#stats
scoreboard players add @s QMSPartiNum 1
execute as @s run scoreboard players operation @s QMSTotXP += @s QMScore

##Points
    #Operation
    scoreboard players operation @s QMScoreOp = @s QMScore
    scoreboard players operation @s QMScoreOp -= @s QMScoreSaver
    #Tell
        ##if supp
        execute if score @s QMScore > @s QMScoreSaver run tellraw @s ["",{"text":"----------","color":"dark_aqua"},{"text":"Scores","color":"aqua"},{"text":"------------","color":"dark_aqua"},{"text":"\n"},{"text":"You have ","color":"green"},{"text":"more ","color":"aqua"},{"text":"points than last time","color":"green"},{"text":"\n"},{"text":"-","color":"dark_aqua"},{"text":" Last score: ","color":"aqua"},{"score":{"name":"@s","objective":"QMScoreSaver"},"color":"red"},{"text":"\n"},{"text":"-","color":"dark_aqua"},{"text":" Current score: ","color":"aqua"},{"score":{"name":"@s","objective":"QMScore"},"color":"green"},{"text":"\n"},{"text":"-","color":"dark_aqua"},{"text":" Difference: ","color":"aqua"},{"text":"+","color":"green"},{"score":{"name":"@s","objective":"QMScoreOp"},"color":"light_purple"},{"text":"\n"},{"text":"----------------------------","color":"dark_aqua"}]
        execute as @s at @s if score @s QMScore > @s QMScoreSaver run playsound ui.toast.challenge_complete master @s

        ##if inff
        execute if score @s QMScore < @s QMScoreSaver unless score @s QMScore = zero number run tellraw @s ["",{"text":"----------","color":"dark_aqua"},{"text":"Scores","color":"aqua"},{"text":"------------","color":"dark_aqua"},{"text":"\n"},{"text":"You have ","color":"green"},{"text":"less ","color":"red"},{"text":"points than last time","color":"green"},{"text":"\n"},{"text":"-","color":"dark_aqua"},{"text":" Last score: ","color":"aqua"},{"score":{"name":"@s","objective":"QMScoreSaver"},"color":"green"},{"text":"\n"},{"text":"-","color":"dark_aqua"},{"text":" Current score: ","color":"aqua"},{"score":{"name":"@s","objective":"QMScore"},"color":"red"},{"text":"\n"},{"text":"-","color":"dark_aqua"},{"text":" Difference: ","color":"aqua"},{"score":{"name":"@s","objective":"QMScoreOp"},"color":"light_purple"},{"text":"\n"},{"text":"----------------------------","color":"dark_aqua"}]
        ##if egal
        execute if score @s QMScore = @s QMScoreSaver run tellraw @s ["",{"text":"----------","color":"dark_aqua"},{"text":"Scores","color":"aqua"},{"text":"------------","color":"dark_aqua"},{"text":"\n"},{"text":"You have the ","color":"green"},{"text":"same ","color":"aqua"},{"text":"number of points as the last time","color":"green"},{"text":"\n"},{"text":"-","color":"dark_aqua"},{"text":" Last score: ","color":"aqua"},{"score":{"name":"@s","objective":"QMScoreSaver"},"color":"gold"},{"text":"\n"},{"text":"-","color":"dark_aqua"},{"text":" Current score: ","color":"aqua"},{"score":{"name":"@s","objective":"QMScore"},"color":"gold"},{"text":"\n"},{"text":"----------------------------","color":"dark_aqua"}]

#Display scorebord
execute as @s run function quickmine:team/selectscore
scoreboard objectives setdisplay sidebar.team.aqua QMScoreSaver
execute as @s if score @s QMScore > @s QMScoreSaver run function quickmine:leveloperator
#save score
execute if score @s QMScore > @s QMScoreSaver run scoreboard players operation @s QMScoreSaver = @s QMScore

#reset scores
scoreboard players set @s QMTMinute 0
scoreboard players set @s QMTSecond 0
scoreboard players set @s QMTTick 0
scoreboard players set @s QMLift 0
xp set @s 0 levels
xp set @s 0 points

execute as @s run function quickmine:setitems
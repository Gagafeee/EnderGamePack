##tp
execute in spawn run tp @s -262 172 73 10 -2.6
##sound + title
execute at @s run playsound minecraft:entity.ender_eye.death master @s
title @s actionbar {"text":"Spawn","bold":true,"color":"#FF5F00"}
##reset selectgameui
scoreboard players set @a[scores={SelectGameUI=2}] SelectGameUIQuit 0
scoreboard players set @a[scores={SelectGameUI=2}] SelectGameUI 0
##Bases
    effect clear @s
    
##Jump
    ##reset progress
    scoreboard players set @s JumpCheckpoint 0
    ##reset number
    execute as @s if entity @s run scoreboard players set Jump GamePlayerNumber 0
    execute as @s if entity @s run tag @a[tag=Jump1] remove Jump1
    ##set tag
    tag @s remove Jump1
    scoreboard players set @s JSTimer 0
    ##playergeter
    function jump:jumpreloadgameplayerlist
#AmongUS
    ###clear color index
    #scoreboard players reset @s AmongColorIndex
    ###reset number
    #execute as @s if entity @s run scoreboard players set AmongUS GamePlayerNumber 0
    #execute as @s if entity @s run tag @a[tag=Among1] remove Among1
    #execute as @s if entity @s run scoreboard players reset @s ATask
    ###set tag
    #tag @s remove Among1
    ###set team
    #team join Player @s
    ###set scores
    #scoreboard players set Imposteur AmongImposteur 0
    #scoreboard players set Crewmate AmongImposteur 0
    #scoreboard players set DiePlayer AmongImposteur 0
    #scoreboard players reset @a[scores={Location=2}] AmongImposteur
#PropHunt
    scoreboard players reset @s PHIsInGame
    function prophunt:reloadgameplayerlist
#QuickMine
    scoreboard players reset @s QMCopperTrigger
    scoreboard players reset @s QMIronTrigger
    scoreboard players reset @s QMGoldTrigger
    scoreboard players reset @s QMRedstoTrigger
    scoreboard players reset @s QMEmeraldTrigger
    scoreboard players reset @s QMDiamondTrigger
    scoreboard players reset @s QMLapisTrigger
    scoreboard players reset @s QMScore
    scoreboard players set @s QMTimer 0
    scoreboard players set @s QMTMinute 0
    scoreboard players set @s QMTSecond 0
    scoreboard players set @s QMTTick 0
    function quickmine:reloadgameplayerlist
    scoreboard players set @s QMZone 0
    scoreboard players set @s QMLift 0
    scoreboard players set @s sneakTime 0
##set items
execute as @s run function lobby:reloaditems
##set location
scoreboard players set @s Location 0
##set team
execute as @s if entity @s[tag=admin] run team join admin
execute as @s if entity @s[tag=!admin] run team leave @s
##reset score
scoreboard players set @s EmeraldTrigger 0

 
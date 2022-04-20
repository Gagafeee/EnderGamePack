##Lobby
    execute as @s[scores={Location=0,BuilderMode=0}] if entity @s run scoreboard players set @s BuilderMode 1
##Jump
    ## verification de l'ouverture du Jump si il est ouvert
    execute as @s[scores={Location=1,BuilderMode=0}] if entity @s if score Jump Games = un number run scoreboard players set @s BuilderMode -2
    execute as @s[tag=admin,scores={BuilderMode=-2}] if entity @s run item replace entity @s container.1 with minecraft:grass_block{Unbreakable:1,display:{Name:'[{"text":"Mode constructeur","color":"dark_aqua"}]'},HideFlags:95,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]} 1
    tellraw @s[scores={Location=1,BuilderMode=-2}] {"text":"[Error] Merci de mettre le Jump en maintenance si vous voulez build desus !","color":"red"}
    execute at @s[scores={Location=1,BuilderMode=-2}] run playsound block.chain.break master @s
    ##reset score
    scoreboard players set @s[scores={Location=1,BuilderMode=-2}] BuilderMode -1
    ## Verification de l'ouverture du jump si il est fermer
    execute as @s[scores={Location=1,BuilderMode=0}] if entity @s if score Jump Games = zero number run scoreboard players set @s BuilderMode 1
    execute as @s[scores={Location=1,BuilderMode=0}] if entity @s if score Jump Games = deux number run scoreboard players set @s BuilderMode 1
##AmongUS
    ## verification de l'ouverture du among si il est ouvert
    execute as @s[scores={Location=2,BuilderMode=0}] if entity @s if score AmongUS Games = un number run scoreboard players set @s BuilderMode -2
    execute as @s[tag=admin,scores={BuilderMode=-2}] if entity @s run item replace entity @s container.1 with minecraft:grass_block{Unbreakable:1,display:{Name:'[{"text":"Mode constructeur","color":"dark_aqua"}]'},HideFlags:95,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]} 1
    tellraw @s[scores={Location=2,BuilderMode=-2}] {"text":"[Error] Merci de mettre le AmongUS en maintenance si vous voulez build desus !","color":"red"}
    execute at @s[scores={Location=2,BuilderMode=-2}] run playsound block.chain.break master @s
    ##reset score
    scoreboard players set @s[scores={Location=2,BuilderMode=-2}] BuilderMode -1
    ## Verification de l'ouverture du Among si il est fermer
    execute as @s[scores={Location=2,BuilderMode=0}] if entity @s if score AmongUS Games = zero number run scoreboard players set @s BuilderMode 1
    execute as @s[scores={Location=2,BuilderMode=0}] if entity @s if score AmongUS Games = deux number run scoreboard players set @s BuilderMode 1
    execute as @s[scores={Location=2,BuilderMode=0}] if entity @s run scoreboard players set @s BuilderMode 1
##PropHunt
    execute as @s[scores={Location=3,BuilderMode=0}] if entity @s run scoreboard players set @s BuilderMode 1
##QuickMine
    execute as @s[scores={Location=4,BuilderMode=0}] if entity @s run scoreboard players set @s BuilderMode 1
##if not
    execute as @s[scores={Location=3..999,BuilderMode=0}] run scoreboard players set @s BuilderMode -2
    execute as @s[tag=admin,scores={BuilderMode=-2}] if entity @s run item replace entity @s container.1 with minecraft:grass_block{Unbreakable:1,display:{Name:'[{"text":"Mode constructeur","color":"dark_aqua"}]'},HideFlags:95,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]} 1
    tellraw @s[scores={Location=3..999,BuilderMode=-2}] ["",{"text":"###############################","color":"dark_red"},{"text":"\n"},{"text":"[","color":"dark_red"},{"text":"Internal","color":"red"},{"text":"]","color":"dark_red"},{"text":"\n"},{"text":"   ErrorDesc ","color":"red"},{"text":":","color":"dark_red"},{"text":" Your location is not added please contact developper\n   Infos ","color":"red"},{"text":":","color":"dark_red"},{"text":"\n"},{"text":"      Location ","color":"red"},{"text":":","color":"dark_red"},{"text":" [","color":"red"},{"score":{"name":"@p","objective":"Location"},"color":"gold"},{"text":"]","color":"red"},{"text":"\n"},{"text":"      Playername ","color":"red"},{"text":": ","color":"dark_red"},{"selector":"@p"},{"text":"\n"},{"text":"   Error ","color":"red"},{"text":":","color":"dark_red"},{"text":"\n\n"},{"text":"e.","color":"aqua"},{"text":"operation ","color":"gold"},{"text":"=","color":"gray"},{"text":" Delegate.Buildermode.","color":"aqua"},{"text":"setup","color":"gold"},{"text":"[","color":"aqua"},{"text":"0","color":"yellow"},{"text":"]","color":"aqua"},{"text":"\n"},{"text":"e.","color":"aqua"},{"text":"operation ","color":"gold"},{"text":"= ","color":"gray"},{"text":"Dictionary","color":"aqua"},{"text":"<Location>","color":"dark_purple"},{"text":".","color":"gray"},{"text":"find ","color":"gold"},{"text":"[Player","color":"aqua"},{"text":".","color":"gray"},{"text":"Location","color":"gold"},{"text":"] ","color":"aqua"},{"text":"= ","color":"gray"},{"text":"Delegate.","color":"aqua"},{"text":"Return ","color":"gold"},{"text":":","color":"gray"},{"text":" NULL","color":"red"},{"text":"\n"},{"text":"e ","color":"aqua"},{"text":"= ","color":"gray"},{"text":"caused by unknown Location index ","color":"aqua"},{"text":":","color":"gray"},{"text":" ","color":"dark_red"},{"score":{"name":"@p","objective":"Location"},"color":"dark_red"},{"text":" in Dictionary","color":"aqua"},{"text":"<Location>","color":"dark_purple"},{"text":"\n\n\n"},{"text":"###############################","color":"dark_red"}]
    execute at @s[scores={Location=3..999,BuilderMode=-2}] run playsound block.chain.break master @s
    ##reset score
    scoreboard players set @s[scores={Location=3..999,BuilderMode=-2}] BuilderMode -1
##clear
execute as @s if entity @s run clear @s
##tellraw
tellraw @s ["",{"text":"----------------------------------","color":"aqua"},{"text":"\n"},{"text":"          \u2714 BuilderMode ON","color":"green"},{"text":"\n"},{"text":"/Exit/","color":"red","clickEvent":{"action":"run_command","value":"/execute as @p run function utils:buildermod/buildermodexit"}},{"text":" -","color":"dark_aqua"},{"text":" ","color":"green"},{"text":"/WorkPacks/","color":"#5285FF","clickEvent":{"action":"run_command","value":"/execute as @p run function utils:buildermod/workpacks/workpacktellraw"}},{"text":" -","color":"dark_aqua"},{"text":" ","color":"green"},{"text":"/Clear/","color":"dark_red","clickEvent":{"action":"run_command","value":"/clear @p"}},{"text":"\n"},{"text":"----------------------------------","color":"aqua"}]
##set team
team join Builder @s
tag @s add builder
##sound
execute as @s at @s run playsound minecraft:ui.toast.out master @s
##set scoreboard
execute as @s if entity @s run scoreboard players set @s Mode 2
execute as @s if entity @s run scoreboard players set @s BuilderMode 2

 

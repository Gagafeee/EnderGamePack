#execute as @s[scores={Location=1..,SelectGameUI=1}] run tellraw @s ["",{"text":"[","color":"dark_red"},{"text":" Error : You can't change game ","color":"red"},{"text":"only ","bold":true,"color":"red"},{"text":"on lobby","color":"red"},{"text":" ]","color":"dark_red"}]
#execute as @s[scores={Location=1..,SelectGameUI=1}] run scoreboard players set @s SelectGameUI 0
#
#execute as @s[scores={brickTrigger=1..}] run scoreboard players set @s SelectGameUI 1
#execute as @s[scores={brickTrigger=1..}] run tellraw @s ["",{"text":"\u25b6 ","color":"dark_red"},{"text":"This Game is in ","color":"red"},{"text":"Maintenance ","color":"gold"},{"text":"!","color":"red"}]
#execute as @s[scores={brickTrigger=1..}] run scoreboard players set @s brickTrigger 0
#
#execute as @s[scores={bedrockTrigger=1..}] run scoreboard players set @s SelectGameUI 1
#execute as @s[scores={bedrockTrigger=1..}] run tellraw @s ["",{"text":"\u25b6 ","color":"dark_red"},{"text":"This Game is ","color":"red"},{"text":"not ","bold":true,"color":"red"},{"text":"available !","color":"red"}]
#execute as @s[scores={bedrockTrigger=1..}] run scoreboard players set @s bedrockTrigger 0
###clear
#execute as @s if entity @s run clear @s
###set default items
#execute as @s if entity @s run item replace entity @s container.8 with minecraft:emerald{Unbreakable:1,display:{Lore:['[{"text":"Spawn","color":"gold","bold":true},{"text":"","color":"gold","bold":false}]'],Name:'[{"text":"Spawn"}]'},HideFlags:95,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],Tags:["emraldspawn","spawn"],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"mainhand",Amount:1,Operation:0,UUID:[I;1084766514,1087451545,1024299148,1364972903]}]}
#execute as @s if entity @s run item replace entity @s container.7 with minecraft:shears{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"Quite","color":"red"}]'},Tags:["quiteitem"]} 1
#
#    ##set jump items
#    execute as @s if entity @s if score Jump Games = un number run item replace entity @s container.4 with minecraft:white_concrete{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"Jump","color":"light_purple"}]'},Tags:["jumpitem"]} 1
#    execute as @s if entity @s if score Jump Games = zero number run item replace entity @s container.4 with minecraft:bedrock{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"Jump","color":"red"}]',Lore:['[{"text":"Is currently unavaliable","color":"dark_red"}]','[{"text":"Actuellement indisponible","color":"dark_red"}]']},Tags:["Indisponible"]} 1
#    execute as @s[tag=!admin] if entity @s if score Jump Games = deux number run item replace entity @s container.4 with minecraft:brick{Unbreakable:1,display:{Name:'[{"text":"Jump","color":"red"}]',Lore:['[{"text":"Jeu en maintenance","color":"red"}]','[{"text":"Game is in maintenance","color":"red"}]']},HideFlags:95} 1
#    execute as @s[tag=admin] if entity @s if score Jump Games = deux number run item replace entity @s container.4 with minecraft:white_concrete{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"Jump","color":"light_purple"},{"text":" [Maintenance]","color":"red"}]'},Tags:["jumpitem"]} 1
#    execute as @s[tag=!admin] if entity @s if score Jump Games = trois number run item replace entity @s container.4 with minecraft:obsidian{Unbreakable:1,display:{Name:'[{"text":"Jump","color":"red"}]',Lore:['[{"text":"Game in progress","color":"blue"}]','[{"text":"Jeu en cours","color":"blue"}]','[{"text":"","color":"blue"}]']},HideFlags:95} 1
#    
#    ##AmongUS items
#    execute as @s if entity @s if score AmongUS Games = un number run item replace entity @s container.5 with minecraft:red_concrete{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"AmongUS","color":"blue"}]'},Tags:["amongusitem"]} 1
#    execute as @s if entity @s if score AmongUS Games = zero number run item replace entity @s container.5 with minecraft:bedrock{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"AmongUS","color":"red"}]',Lore:['[{"text":"Is currently unavaliable","color":"dark_red"}]','[{"text":"Actuellement indisponible","color":"dark_red"}]']},Tags:["Indisponible"]} 1
#    execute as @s[tag=!admin] if entity @s if score AmongUS Games = deux number run item replace entity @s container.5 with minecraft:brick{Unbreakable:1,display:{Name:'[{"text":"AmongUS","color":"red"}]',Lore:['[{"text":"Jeu en maintenance","color":"red"}]','[{"text":"Game is in maintenance","color":"red"}]']},HideFlags:95} 1
#    execute as @s[tag=admin] if entity @s if score AmongUS Games = deux number run item replace entity @s container.5 with minecraft:red_concrete{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"AmongUS","color":"blue"},{"text":" [Maintenance]","color":"red"}]'},Tags:["amongusitem"]} 1
#    execute as @s[tag=!admin] if entity @s if score AmongUS Games = trois number run item replace entity @s container.5 with minecraft:obsidian{Unbreakable:1,display:{Name:'[{"text":"AmongUS","color":"red"}]',Lore:['[{"text":"Game in progress","color":"blue"}]','[{"text":"Jeu en cours","color":"blue"}]','[{"text":"","color":"blue"}]']},HideFlags:95} 1
#
#    ##PropHunt items
#    execute as @s if entity @s if score PropHunt Games = un number run item replace entity @s container.3 with minecraft:yellow_concrete{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"PropHunt","color":"green"}]'},Tags:["prophuntitem"]} 1
#    execute as @s if entity @s if score PropHunt Games = zero number run item replace entity @s container.3 with minecraft:bedrock{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"PropHunt","color":"red"}]',Lore:['[{"text":"Is currently unavaliable","color":"dark_red"}]','[{"text":"Actuellement indisponible","color":"dark_red"}]']},Tags:["Indisponible"]} 1
#    execute as @s[tag=!admin] if entity @s if score PropHunt Games = deux number run item replace entity @s container.3 with minecraft:brick{Unbreakable:1,display:{Name:'[{"text":"PropHunt","color":"red"}]',Lore:['[{"text":"Jeu en maintenance","color":"red"}]','[{"text":"Game is in maintenance","color":"red"}]']},HideFlags:95} 1
#    execute as @s[tag=admin] if entity @s if score PropHunt Games = deux number run item replace entity @s container.3 with minecraft:yellow_concrete{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"PropHunt","color":"green"},{"text":" [Maintenance]","color":"red"}]'},Tags:["prophuntitem"]} 1
#    execute as @s[tag=!admin] if entity @s if score PropHunt Games = trois number run item replace entity @s container.3 with minecraft:obsidian{Unbreakable:1,display:{Name:'[{"text":"PropHunt","color":"red"}]',Lore:['[{"text":"Game in progress","color":"blue"}]','[{"text":"Jeu en cours","color":"blue"}]','[{"text":"","color":"blue"}]']},HideFlags:95} 1
#
#    #QuickMine
#    execute as @s if entity @s if score QuickMine Games = un number run item replace entity @s container.2 with minecraft:light_gray_concrete{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"QuickMine","color":"aqua"}]'},Tags:["quickmineitem"]} 1
#    execute as @s if entity @s if score QuickMine Games = zero number run item replace entity @s container.2 with minecraft:bedrock{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"QuickMine","color":"red"}]',Lore:['[{"text":"Is currently unavaliable","color":"dark_red"}]','[{"text":"Actuellement indisponible","color":"dark_red"}]']},Tags:["Indisponible"]} 1
#    execute as @s[tag=!admin] if entity @s if score QuickMine Games = deux number run item replace entity @s container.2 with minecraft:brick{Unbreakable:1,display:{Name:'[{"text":"QuickMine","color":"red"}]',Lore:['[{"text":"Jeu en maintenance","color":"red"}]','[{"text":"Game is in maintenance","color":"red"}]']},HideFlags:95} 1
#    execute as @s[tag=admin] if entity @s if score QuickMine Games = deux number run item replace entity @s container.2 with minecraft:light_gray_concrete{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"QuickMine","color":"aqua"},{"text":" [Maintenance]","color":"red"}]'},Tags:["prophuntitem"]} 1
#    execute as @s[tag=admin] if entity @s if score QuickMine Games = trois number run item replace entity @s container.2 with minecraft:barrier{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"ERROR","color":"red"}]',Lore:['[{"text":"Please contact developper","color":"red"}]']}} 1
#
#
###sound
#execute at @s run playsound block.dispenser.dispense master @s
###set scoreboard
execute as @s[scores={Location=1..,SelectGameUI=1}] run tellraw @s ["",{"text":"[ ","color":"dark_red"},{"text":"Depreciated function","color":"red"},{"text":" used ","color":"red"},{"text":"]","color":"dark_red"}]
execute as @s if entity @s run scoreboard players set @s SelectGameUI 0
#
##set items
clear @s
execute as @s[scores={BuilderMode=-1}] run item replace entity @s container.8 with minecraft:emerald{Unbreakable:1,display:{Lore:['[{"text":"Spawn","color":"gold","bold":true},{"text":"","color":"gold","bold":false}]'],Name:'[{"text":"Spawn"}]'},HideFlags:95,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],Tags:["emraldspawn","spawn"],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"mainhand",Amount:1,Operation:0,UUID:[I;1084766514,1087451545,1024299148,1364972903]}]}
##set admin tool if not started
execute as @s[tag=admin,scores={BuilderMode=-1,Location=3}] if entity @s unless score Started prophuntmodul = un number run item replace entity @s container.0 with minecraft:end_crystal{Unbreakable:1,display:{Name:'[{"text":"Paramètres","color":"dark_aqua"}]'},HideFlags:95} 1
execute as @s[tag=admin,scores={BuilderMode=-1,Location=3}] if entity @s unless score Started prophuntmodul = un number run item replace entity @s container.1 with minecraft:grass_block{Unbreakable:1,display:{Name:'[{"text":"Mode constructeur","color":"dark_aqua"}]'},HideFlags:95,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]} 1


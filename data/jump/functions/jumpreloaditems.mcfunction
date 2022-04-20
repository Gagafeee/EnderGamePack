##set items
clear @a[scores={Location=1}]
item replace entity @a[scores={Location=1}] container.8 with minecraft:emerald{Unbreakable:1,display:{Lore:['[{"text":"Spawn","color":"gold","bold":true},{"text":"","color":"gold","bold":false}]'],Name:'[{"text":"Spawn"}]'},HideFlags:95,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],Tags:["emraldspawn","spawn"],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"mainhand",Amount:1,Operation:0,UUID:[I;1084766514,1087451545,1024299148,1364972903]}]}
##set admin tool
execute as @a[tag=admin,scores={BuilderMode=-1,Location=1}] if entity @s run item replace entity @s container.0 with minecraft:end_crystal{Unbreakable:1,display:{Name:'[{"text":"Paramètres des jeux ","color":"dark_aqua"}]'},HideFlags:95} 1
execute as @a[tag=admin,scores={BuilderMode=-1,Location=1}] if entity @s run item replace entity @s container.1 with minecraft:grass_block{Unbreakable:1,display:{Name:'[{"text":"Mode constructeur","color":"dark_aqua"}]'},HideFlags:95,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]} 1
execute as @s[tag=admin,scores={BuilderMode=-1,Location=1}] if entity @s run item replace entity @s container.2 with minecraft:observer{Unbreakable:1,HideFlags:95,display:{Name:'[{"text":"Salle des machines","color":"blue"}]'}} 1
execute as @s[tag=admin,scores={BuilderMode=-1,Location=1}] if entity @s run item replace entity @s container.3 with minecraft:player_head{Tags:["ReloadItem"],display:{Name:'["",{"text":"[ ","color":"dark_red"},{"text":"Reload Data ","color":"red"},{"text":"]","color":"dark_red"}]'},SkullOwner:{Id:[I;-246766955,-1582280995,-1756569120,228204089],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzkxMmQ0NWIxYzc4Y2MyMjQ1MjcyM2VlNjZiYTJkMTU3NzdjYzI4ODU2OGQ2YzFiNjJhNTQ1YjI5YzcxODcifX19"}]}}} 1

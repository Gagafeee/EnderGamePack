##tp
execute in spawn run tp @a[scores={Location=1..999}] -266 173 72 145 -1.3
##sound + title
execute as @a[scores={Location=1..999}] at @s run playsound minecraft:entity.ender_eye.death master @s
title @a[scores={Location=1..999}] actionbar {"text":"Spawn","bold":true,"color":"#FF5F00"}
##reset selectgameui
scoreboard players set @a[scores={Location=1..999}] SelectGameUIQuit 0
scoreboard players set @a[scores={Location=1..999}] SelectGameUI 0
##set items
execute as @a[scores={Location=1..999}] run function lobby:reloaditems
##set scores
scoreboard players set Imposteur AmongImposteur 0
scoreboard players set Crewmate AmongImposteur 0
scoreboard players set DiePlayer AmongImposteur 0
scoreboard players reset @a[scores={Location=2}] AmongImposteur
##set title
title @a[tag=admin,scores={Location=1..999}] times 20 200 20
title @a[tag=admin,scores={Location=1..999}] subtitle {"text":"A.JavaIOEexeption: AcessViolationExeption#2897","color":"dark_red"}
title @a[tag=admin,scores={Location=1..999}] title {"text":"Error:","color":"red"}
##set location
scoreboard players set @a Location 0

##tp
execute in spawn run tp @a[scores={Location=2}] -266 173 72 145 -1.3
##sound + title
execute as @a[scores={Location=2}] at @s run playsound minecraft:entity.ender_eye.death master @s
title @a[scores={Location=2}] actionbar {"text":"Spawn","bold":true,"color":"#FF5F00"}
##reset selectgameui
scoreboard players set @a[scores={Location=2}] SelectGameUIQuit 0
scoreboard players set @a[scores={Location=2}] SelectGameUI 0
##reset scores
scoreboard players reset @a[scores={Location=2}] AmongColorIndex
scoreboard players set Imposteur AmongImposteur 0
scoreboard players set Crewmate AmongImposteur 0
scoreboard players set DiePlayer AmongImposteur 0
scoreboard players reset @a[scores={Location=2}] AmongImposteur
##Close AmongUS
scoreboard players set AmongUS Games 0
##set gameplayernumber
scoreboard players remove AmongUS GamePlayerNumber 0
scoreboard players add AmongUS GamePlayerNumber 1
##set items
execute as @a[scores={Location=2}] run function lobby:reloaditems
##set title
title @a[scores={Location=2}] times 20 200 20
title @a[scores={Location=2}] subtitle {"text":"A.JavaIOEexeption: C0059:ScoreViolationExeption","color":"dark_red"}
title @a[scores={Location=2}] title {"text":"Error:","color":"red"}
##set location
scoreboard players set @a[scores={Location=2}] Location 0



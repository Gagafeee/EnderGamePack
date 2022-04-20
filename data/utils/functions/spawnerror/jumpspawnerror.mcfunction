##tp
execute in spawn run tp @a[scores={Location=1}] -266 173 72 145 -1.3
##sound + title
execute as @a[scores={Location=1}] at @s run playsound minecraft:entity.ender_eye.death master @s
title @a[scores={Location=1}] actionbar {"text":"Spawn","bold":true,"color":"#FF5F00"}
##reset selectgameui
scoreboard players set @a[scores={Location=1}] SelectGameUIQuit 0
scoreboard players set @a[scores={Location=1}] SelectGameUI 0
##reset checkpoint
scoreboard players set @a[scores={Location=1}] JumpCheckpoint 0
##Close Jump
scoreboard players set Jump Games 0
##set gameplayernumber
scoreboard players remove Jump GamePlayerNumber 0
scoreboard players add Jump GamePlayerNumber 1
##set items
execute as @a[scores={Location=1}] run function lobby:reloaditems
##set title
title @a[scores={Location=1}] times 20 200 20
title @a[scores={Location=1}] subtitle {"text":"A.JavaIOEexeption: AcessViolationExeption#4589","color":"dark_red"}
title @a[scores={Location=1}] title {"text":"Error:","color":"red"}
##set location
scoreboard players set @a[scores={Location=1}] Location 0



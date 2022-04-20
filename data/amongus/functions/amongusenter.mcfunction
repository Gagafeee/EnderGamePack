##tp
execute in overworld run tp @a[scores={Deplacement=2,AmongUSTrigger=1}] -405 75 -114 43 2
##set location and gameplayer liste
scoreboard players set @a[scores={Deplacement=2,AmongUSTrigger=1}] Location 2
team join AmongUS @a[scores={Deplacement=2,AmongUSTrigger=1}]
scoreboard players set @a[scores={Deplacement=2,AmongUSTrigger=1}] ATask 0
##title and sound
title @a[scores={Deplacement=2,AmongUSTrigger=1}] actionbar {"text":"AmongUS","color":"light_purple"}
execute as @a[scores={Deplacement=2,AmongUSTrigger=1}] at @s run playsound entity.ender_eye.launch master @a[scores={Deplacement=2,AmongUSTrigger=1}]
##reset inventory
function amongus:amongusreloaditems
##set color
execute as @a[scores={Deplacement=2,AmongUSTrigger=1}] if score AmongUS Games = un number run function amongus:amongusrandomteamselector
##set scoreboard
scoreboard players set @s AmongImposteur 0
##reset deplacement
scoreboard players set @a[scores={Deplacement=2,AmongUSTrigger=1}] AmongUSTrigger 0
scoreboard players set @a[scores={Deplacement=2,AmongUSTrigger=0}] Deplacement 0

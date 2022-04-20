##regen
effect give @a[scores={Dead=1}] regeneration 1 255 true
##tp
execute in spawn run tp @a[scores={Dead=1}] -266 173 72 145 -1.3
##kill fire
execute as @a[scores={Dead=1},nbt=!{Fire:-20s}] if entity @s run gamemode spectator @s
##title
title @a[scores={Dead=1}] actionbar {"text":"Spawn","bold":true,"color":"#FF5F00"}
##reset score
scoreboard players set @a[scores={Dead=1}] Dead 0
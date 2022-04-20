##if lunched give tp item to impos
execute as @e[tag=vent, type=area_effect_cloud] at @s if score Lunched AmongComponents = un number run item replace entity @p[tag=Imposteur,distance=..3,scores={Location=2}] hotbar.4 with minecraft:ender_pearl{Unbreakable:1,display:{Name:'[{"text":"Vent","color":"gold"}]',Lore:['[{"text":"Use the vent to teleport","color":"yellow"}]']},HideFlags:95} 1

##if lunched if out of range give air
execute as @e[tag=vent, type=area_effect_cloud] at @s if score Lunched AmongComponents = un number run item replace entity @p[tag=Imposteur,distance=4..5,scores={Location=2}] hotbar.4 with minecraft:air
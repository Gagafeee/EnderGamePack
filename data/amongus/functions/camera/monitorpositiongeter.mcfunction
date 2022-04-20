#spawn camera          /summon area_effect_cloud ~ ~-0.5 ~ {Duration:2147483647,Tags:["Camera","NAME"]}
#spawn Vent          /summon area_effect_cloud ~ ~-0.5 ~ {Duration:2147483647,Tags:["INDEX","vent"]}

##TEST monitor
    ##monitor detect
    execute as @e[type=minecraft:area_effect_cloud,tag=Monitor] at @s if score Lunched AmongComponents = un number if score @p ACamera = zero number if score Camera AmongComponents = zero number run item replace entity @a[scores={Location=2},distance=..2] hotbar.4 with minecraft:dispenser{display:{Name:'[{"text":"View Camera","color":"dark_purple"}]'},Unbreakable:1,HideFlags:95} 1
    execute as @e[type=minecraft:area_effect_cloud,tag=Monitor] at @s if score Lunched AmongComponents = un number if score @p ACamera = zero number if score Camera AmongComponents = un number run item replace entity @a[scores={Location=2},distance=..2] hotbar.4 with minecraft:obsidian{display:{Name:'[{"text":"Nop","color":"red"}]',Lore:['[{"text":"There is already someone at the camera","color":"dark_red"}]']},Unbreakable:1,HideFlags:95} 1
    
    ##monitor undetect
    execute as @e[type=minecraft:area_effect_cloud,tag=Monitor] at @s if score Lunched AmongComponents = un number if score @p ACamera = zero number run item replace entity @a[scores={Location=2},distance=3..6] hotbar.4 with air


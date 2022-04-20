#Affiche camera
execute as @e[type=minecraft:area_effect_cloud,tag=Camera] at @s if score ComponentsView AmongComponents = un number run particle minecraft:landing_obsidian_tear ~ ~2 ~
#Affiche monitor
execute as @e[type=minecraft:area_effect_cloud,tag=Monitor] at @s if score ComponentsView AmongComponents = un number run particle minecraft:landing_honey ~ ~2 ~

#Affiche detect
execute as @e[type=minecraft:area_effect_cloud,tag=Monitor] at @s if entity @a[scores={Location=2},distance=..2] if score ComponentsView AmongComponents = un number run particle minecraft:totem_of_undying ~ ~1 ~
execute as @e[type=minecraft:area_effect_cloud,tag=Monitor] at @s if entity @a[scores={Location=2},distance=3..5] if score ComponentsView AmongComponents = un number run particle minecraft:portal ~ ~1 ~



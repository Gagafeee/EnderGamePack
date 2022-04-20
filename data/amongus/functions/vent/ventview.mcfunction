#Affiche vent
execute as @e[type=minecraft:area_effect_cloud,tag=vent] at @s if score ComponentsView AmongComponents = un number run particle minecraft:falling_lava ~ ~2 ~

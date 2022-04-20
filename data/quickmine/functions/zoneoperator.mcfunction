##operator (Level is LEVEL_POS level-1) (Zone is ZONE_POS zone-1)
execute as @s if score @s QMLevel = zero number if entity @s[scores={QMZone=1..}] at @s run tag @s add QMPushTrigger
execute as @s if score @s QMLevel = un number if entity @s[scores={QMZone=2..}] at @s run tag @s add QMPushTrigger
execute as @s if score @s QMLevel = deux number if entity @s[scores={QMZone=3..}] at @s run tag @s add QMPushTrigger
execute as @s if score @s QMLevel = trois number if entity @s[scores={QMZone=4..}] at @s run tag @s add QMPushTrigger
execute as @s if score @s QMLevel = quatre number if entity @s[scores={QMZone=5..}] at @s run tag @s add QMPushTrigger
execute as @s if score @s QMLevel = cinque number if entity @s[scores={QMZone=6..}] at @s run tag @s add QMPushTrigger
execute as @s if score @s QMLevel = six number if entity @s[scores={QMZone=7..}] at @s run tag @s add QMPushTrigger
execute as @s if score @s QMLevel = sept number if entity @s[scores={QMZone=8..}] at @s run tag @s add QMPushTrigger
execute as @s if score @s QMLevel = huit number if entity @s[scores={QMZone=9..}] at @s run tag @s add QMPushTrigger
execute as @s[tag=QMCannotBeHere] at @s run tag @s remove QMPushTrigger
execute as @s[tag=QMCannotBeHere] at @s run function quickmine:stop
execute as @s[tag=QMCannotBeHere] at @s run tp @s -14.5 35 -18 -180 3
execute as @s[tag=QMCannotBeHere] at @s run title @s times 20 60 20
execute as @s[tag=QMCannotBeHere] at @s run title @s subtitle {"text":"Don't do this","color":"red"}
execute as @s[tag=QMCannotBeHere] at @s run title @s title {"text":"Hey !","color":"dark_red"}
execute as @s[tag=QMCannotBeHere] at @s run tag @s remove QMCannotBeHere

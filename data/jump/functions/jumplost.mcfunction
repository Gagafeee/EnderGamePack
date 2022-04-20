execute if entity @s[scores={JumpCheckpoint=0}] in spawn run tp @s -295 178 73 64 3
execute if entity @s[scores={JumpCheckpoint=1}] in spawn positioned as @e[tag=checkpoint1] run tp @s ~ ~1 ~
execute if entity @s[scores={JumpCheckpoint=2}] in spawn positioned as @e[tag=checkpoint2] run tp @s ~ ~1 ~
execute if entity @s[scores={JumpCheckpoint=3}] in spawn positioned as @e[tag=checkpoint3] run tp @s ~ ~1 ~
execute if entity @s[scores={JumpCheckpoint=4}] in spawn positioned as @e[tag=checkpoint4] run tp @s ~ ~1 ~
execute if entity @s[scores={JumpCheckpoint=5..6}] in spawn positioned as @e[tag=checkpoint5] run tp @s ~ ~1 ~

##regen.5
effect give @s regeneration 1 255 true
##title
title @s times 20 40 20
title @s subtitle {"text":"try again to see XD","color":"red"}
title @s title {"text":"You Fell","color":"dark_red"}
##sound
execute at @s run playsound minecraft:entity.chicken.death master @s
##reload items
execute as @s at @s run function jump:jumpreloaditems
scoreboard players add @s JSFailCount 1
scoreboard players set @s Dead 0
##-395 250 -35
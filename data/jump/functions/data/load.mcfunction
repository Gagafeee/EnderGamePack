execute as @s[scores={Location=1,JumpPosSaver=1..6}] run scoreboard players operation @s JumpCheckpoint = @s JumpPosSaver
execute if entity @s[scores={JumpCheckpoint=0}] in spawn run tp @s -295 178 73 64 3
execute if entity @s[scores={JumpCheckpoint=1}] in spawn positioned as @e[tag=checkpoint1] run tp @s ~ ~1 ~
execute if entity @s[scores={JumpCheckpoint=2}] in spawn positioned as @e[tag=checkpoint2] run tp @s ~ ~1 ~
execute if entity @s[scores={JumpCheckpoint=3}] in spawn positioned as @e[tag=checkpoint3] run tp @s ~ ~1 ~
execute if entity @s[scores={JumpCheckpoint=4}] in spawn positioned as @e[tag=checkpoint4] run tp @s ~ ~1 ~
execute if entity @s[scores={JumpCheckpoint=5..6}] in spawn positioned as @e[tag=checkpoint5] run tp @s ~ ~1 ~
##regen eff
effect give @s regeneration 1 255 true
##tell
execute as @s[scores={Location=1,JumpPosSaver=1..6}] run tellraw @s ["",{"text":"[","color":"dark_green"},{"text":"Loaded Data","color":"green"},{"text":"]","color":"dark_green"}]
#sound
execute as @s[scores={Location=1,JumpPosSaver=1..6}] at @s run playsound minecraft:entity.experience_orb.pickup master @s
##reset scores
execute as @s[scores={Location=1,JumpReloadTrigger=1..3}] run scoreboard players set @s JumpReloadTrigger 0

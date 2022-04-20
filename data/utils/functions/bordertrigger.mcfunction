execute if entity @s[scores={Location=0}] run scoreboard players set @s EmeraldTrigger 1
execute if entity @s[scores={Location=1}] run function jump:jumplost


execute if entity @s[scores={Location=2..}] run scoreboard players set @s EmeraldTrigger 1


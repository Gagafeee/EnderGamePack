execute as @s[scores={Location=2}] if score rand AmongRandomTeam = quatre number run scoreboard players set @s AmongColorIndex 4
title @s times 20 60 20
title @s subtitle {"text":"Vous êtes","color":"gold"}
title @s title {"text":"Jaune","color":"yellow"}
item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:16444185}}
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:16444185}}
tag @s add amongselect
tag @s add AC4

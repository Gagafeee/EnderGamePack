execute as @s[scores={Location=2}] if score rand AmongRandomTeam = trois number run scoreboard players set @s AmongColorIndex 3
title @s times 20 60 20
title @s subtitle {"text":"Vous êtes","color":"dark_green"}
title @s title {"text":"Vert","color":"green"}
item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:2093378}}
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:2093378}}
tag @s add amongselect
tag @s add AC3

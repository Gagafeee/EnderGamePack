execute as @s[scores={Location=2}] if score rand AmongRandomTeam = un number run scoreboard players set @s AmongColorIndex 1
title @s times 20 60 20
title @s subtitle {"text":"Vous êtes","color":"dark_purple"}
title @s title {"text":"Rose","color":"light_purple"}
item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:16723662}}
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:16723662}}
tag @s add amongselect
tag @s add AC1

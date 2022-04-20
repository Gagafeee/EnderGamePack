execute as @s[scores={Location=2}] if score rand AmongRandomTeam = deux number run scoreboard players set @s AmongColorIndex 2
title @s times 20 60 20
title @s subtitle {"text":"Vous êtes","color":"dark_aqua"}
title @s title {"text":"Bleu","color":"aqua"}
item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:2542581}}
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:2542581}}
tag @s add amongselect
tag @s add AC2

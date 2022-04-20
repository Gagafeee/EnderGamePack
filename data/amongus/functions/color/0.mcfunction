execute as @s[scores={Location=2}] if score rand AmongRandomTeam = zero number run scoreboard players set @s AmongColorIndex 0
title @s times 20 60 20
title @s subtitle {"text":"Vous êtes","color":"red"}
title @s title {"text":"Rouge","color":"dark_red"}
item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:16721439}}
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:16721439}}
tag @s add amongselect
tag @s add AC0
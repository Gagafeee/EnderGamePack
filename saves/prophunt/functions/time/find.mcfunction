scoreboard players set Timer prophuntmodul 0
title @a[scores={Location=3},tag=!finder] times 20 40 20
title @a[scores={Location=3},tag=!finder] subtitle {"text":"Reseacher is comming ...","color":"red"}
title @a[scores={Location=3},tag=!finder] title {"text":"\u26a0","color":"dark_red"}
#finder
title @a[scores={Location=3},tag=finder] times 20 20 20
title @a[scores={Location=3},tag=finder] subtitle {"text":"Find all players !","color":"aqua"}
title @a[scores={Location=3},tag=finder] title {"text":"GO","color":"red"}
execute as @a[scores={Location=3},tag=finder] at @s run function prophunt:tp
#give tool 
item replace entity @a[scores={Location=3},tag=finder] container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"The Designator","bold":true,"color":"dark_red"}]',Lore:['[{"text":"Right ","color":"dark_red"},{"text":"click on ","color":"aqua"},{"text":"block ","color":"gold"},{"text":"or on a ","color":"aqua"},{"text":"fake ","color":"light_purple"},{"text":"block","color":"gold"}]']},Unbreakable:1,HideFlags:127} 1
#set time
scoreboard players set Time prophuntmodul 2

title @s times 20 40 20
title @s title {"text":"Trouvé !!","color":"green"}
title @s subtitle ["",{"text":"GG \u263a","color":"dark_green"},{"text":" "}]
scoreboard players remove try prophuntbloctype 1
scoreboard players add founded prophuntbloctype 1
scoreboard players set @s prophuntclick 0
#kill
execute as @r[scores={Location=3,prophuntbloctype=-1..4},tag=!finder] at @s run function prophunt:lose
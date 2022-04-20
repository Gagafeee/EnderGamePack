#title researcher
title @a[scores={Location=3},tag=finder] times 20 100 20
title @a[scores={Location=3},tag=finder] subtitle {"text":"snif \u2639","italic":true,"color":"red"}
title @a[scores={Location=3},tag=finder] title {"text":"You lost","color":"red"}
execute as @a[scores={Location=3},tag=finder] run function xp:add/little
#title block
title @a[scores={Location=3},tag=!finder] times 20 100 20
title @a[scores={Location=3},tag=!finder] subtitle {"text":"You can get out \u263a","color":"dark_green"}
title @a[scores={Location=3},tag=!finder] title {"text":"You WIN","color":"green"}
execute as @a[scores={Location=3},tag=!finder] run function xp:add/win
#reset players
tag @a[scores={Location=3}] remove finder
team join Player @a[scores={Location=3},tag=!admin]
team join admin @a[scores={Location=3},tag=admin]
effect clear @a[scores={Location=3}]
#tp lobby
scoreboard players set @a[scores={Location=3}] EmeraldTrigger 1
#close and reset game
function prophunt:close
scoreboard players add PropHunt GameStats 1
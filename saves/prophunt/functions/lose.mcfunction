item replace entity @s container.0 with air
scoreboard players set @s prophuntbloctype -3
title @s times 20 60 20
title @s subtitle {"text":"you have been discovered \u2639","color":"red"}
title @s title {"text":"OUPS..","italic":true,"color":"red"}
effect give @s night_vision 999999 255 true
effect give @s weakness 999999 255 true
effect clear @s slowness
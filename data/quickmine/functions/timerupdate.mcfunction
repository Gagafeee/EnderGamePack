##execute as @a[scores={Location=4,QMTimer=1}] run scoreboard players remove @s QMTSecond 1
execute as @a[scores={Location=4,QMTimer=1}] if score @s QMTSecond = zero number unless score @s QMTMinute = zero number run function quickmine:timerset

execute as @a[scores={Location=4,QMTimer=1}] if score @s QMTSecond = zero number if score @s QMTMinute = zero number at @s run tp @s -14.5 35 -18 -180 3
execute as @a[scores={Location=4,QMTimer=1}] if score @s QMTSecond = zero number if score @s QMTMinute = zero number at @s run function quickmine:stop

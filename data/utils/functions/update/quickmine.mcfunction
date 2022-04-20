execute as @e[tag=QMB] at @s if block ~ ~ ~ air run function quickmine:blockbreak
function quickmine:scoreupdate
function quickmine:doortrigger
function quickmine:timerupdate
execute as @a[scores={Location=4,QMTimer=1}] at @s run function quickmine:zoneoperator
execute as @a[scores={Location=4,QMTimer=1}] at @s run title @s actionbar ["",{"text":"[ ","color":"dark_aqua"},{"text":"Time:","color":"aqua"},{"text":" ","color":"dark_aqua"},{"score":{"name":"@s","objective":"QMTMinute"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"QMTSecond"},"color":"gold"},{"text":" ]","color":"dark_aqua"}]


##team update
execute as @a[scores={Location=4}] at @s if score @s QMLevel = zero number run team join QMT @s
execute as @a[scores={Location=4}] at @s if score @s QMLevel = un number run team join QMT @s
execute as @a[scores={Location=4}] at @s if score @s QMLevel = deux number run team join QMT @s
execute as @a[scores={Location=4}] at @s if score @s QMLevel = trois number run team join QMT @s
execute as @a[scores={Location=4}] at @s if score @s QMLevel = quatre number run team join QMT @s
execute as @a[scores={Location=4}] at @s if score @s QMLevel = cinque number run team join QMT @s
execute as @a[scores={Location=4}] at @s if score @s QMLevel = six number run team join QMT @s
execute as @a[scores={Location=4}] at @s if score @s QMLevel = sept number run team join QMT @s
execute as @a[scores={Location=4}] at @s if score @s QMLevel = huit number run team join QMT @s
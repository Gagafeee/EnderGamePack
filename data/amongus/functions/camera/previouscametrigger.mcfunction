##set index
##if came 0
execute as @a[scores={APreviousCame=1}] if entity @s[scores={ACameraIndex=0}] run scoreboard players operation @a[scores={APreviousCame=1}] ACameraIndex = Max ACameraIndex
execute as @a[scores={APreviousCame=1}] if entity @s[scores={ACameraIndex=1..99}] run scoreboard players remove @a[scores={APreviousCame=1}] ACameraIndex 1
##stop
execute as @a[scores={APreviousCame=1}] if entity @s run scoreboard players set @a[scores={APreviousCame=1}] APreviousCame 0
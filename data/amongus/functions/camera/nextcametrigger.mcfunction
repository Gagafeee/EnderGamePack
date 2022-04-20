##set index
execute as @a[scores={ANextCame=1}] if score @s ACameraIndex = Max ACameraIndex run scoreboard players set @s ACameraIndex 0
execute as @a[scores={ANextCame=1}] if entity @s run scoreboard players add @a[scores={ANextCame=1}] ACameraIndex 1
##stop
execute as @a[scores={ANextCame=1}] if entity @s run scoreboard players set @a[scores={ANextCame=1}] ANextCame 0
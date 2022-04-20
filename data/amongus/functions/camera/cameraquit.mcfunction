#set component
execute as @a[scores={ACameraQuit=1}] if entity @s run scoreboard players set Camera AmongComponents 0
execute as @a[scores={ACameraQuit=1}] if entity @s run scoreboard players set @a[scores={ACameraQuit=1}] ACamera 0
##clear
execute as @a[scores={ACameraQuit=1}] if entity @s run clear @a[scores={ACameraQuit=1}]
execute as @a[scores={ACameraQuit=1}] if entity @s run execute as @a[scores={ACameraQuit=1}] run function amongus:amongusreloaditems
#tp
execute as @a[scores={ACameraQuit=1}] if entity @s run execute as @e[tag=CameraPlayer] run tp @a[scores={ACameraQuit=1}] @s
#kill stand
execute as @a[scores={ACameraQuit=1}] if entity @s run kill @e[tag=CameraPlayer]
##set gamemode
execute as @a[scores={ACameraQuit=1}] if entity @s run gamemode adventure @s
#stop
execute as @a[scores={ACameraQuit=1}] if entity @s run scoreboard players set @a[scores={ACameraQuit=1}] ACameraQuit 0
scoreboard players add @s QMLevel 1
execute as @s run function xp:add/big
tellraw @s ["",{"text":"[ ","color":"dark_green"},{"text":"You passed the level ","color":"green"},{"score":{"name":"@s","objective":"QMLevel"},"color":"gold"},{"text":" ]","color":"dark_green"}]
execute as @s run function quickmine:team/selectscore
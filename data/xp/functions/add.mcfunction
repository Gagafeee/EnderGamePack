#verifie max int
execute if score @s xp = max number run scoreboard players set @s xptoadd 0
execute if score @s xp = max number run tellraw @s ["",{"text":"#############################","color":"dark_red"},{"text":"\n"},{"text":"[","color":"dark_red"},{"text":"Internal","color":"red"},{"text":"]","color":"dark_red"},{"text":"\n"},{"text":"Target","color":"green"},{"text":".","color":"gray"},{"text":"xp","color":"aqua"},{"text":".","color":"gray"},{"text":"Value ","color":"aqua"},{"text":"> ","color":"red"},{"text":"System","color":"light_purple"},{"text":".","color":"gray"},{"text":"int","color":"aqua"},{"text":".","color":"gray"},{"text":"max","color":"aqua"},{"text":"\n"},{"text":"Please report to developper","color":"red"},{"text":"\n"},{"text":"#############################","color":"dark_red"}]
##add xp
scoreboard players operation @s xp += @s xptoadd
execute if score @s xp = max number run tellraw @s ["",{"text":"#############################","color":"dark_red"},{"text":"\n"},{"text":"[","color":"dark_red"},{"text":"Internal","color":"red"},{"text":"]","color":"dark_red"},{"text":"\n"},{"text":"Target","color":"green"},{"text":".","color":"gray"},{"text":"xp","color":"aqua"},{"text":".","color":"gray"},{"text":"Value ","color":"aqua"},{"text":"> ","color":"red"},{"text":"System","color":"light_purple"},{"text":".","color":"gray"},{"text":"int","color":"aqua"},{"text":".","color":"gray"},{"text":"max","color":"aqua"},{"text":"\n"},{"text":"Please report to developper","color":"red"},{"text":"\n"},{"text":"#############################","color":"dark_red"}]
execute if score @s xp = max number run scoreboard players set @s xp 2147483647
##sound
playsound entity.experience_orb.pickup master @s
##annoucement
execute as @s run tellraw @s ["",{"text":"------------------------------------","color":"dark_aqua"},{"text":"\n"},{"text":"Vous avez gagner","color":"gold"},{"text":" ","color":"aqua"},{"score":{"name":"@s","objective":"xptoadd"},"color":"green"},{"text":"xp!","color":"aqua"},{"text":" Vous êtes à ","color":"gold"},{"score":{"name":"@s","objective":"xp"},"color":"green"},{"text":"xp!","color":"aqua"},{"text":"\n"},{"text":"------------------------------------","color":"dark_aqua"}]
##reset
scoreboard players set @s xptoadd 0

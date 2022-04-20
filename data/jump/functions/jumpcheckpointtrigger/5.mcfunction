#the player was finished the jump (wow)
execute as @a[distance=..1] if entity @s[scores={JumpCheckpoint=4}] run scoreboard players set @s JumpCheckpoint 5
execute as @a[distance=..1] if entity @s[scores={JumpCheckpoint=5}] at @s run playsound ui.toast.challenge_complete master @s
execute as @a[distance=..1,limit=1,gamemode=!spectator] if entity @s[scores={JumpCheckpoint=5}] run tellraw @a ["",{"text":"\u25b6","color":"aqua"},{"text":" ","color":"green"},{"selector":"@s","color":"light_purple"},{"text":" has finished the ","color":"green"},{"text":"Jump ","color":"gold"},{"text":"!","color":"red"},{"text":" \u25c0","color":"aqua"}]
execute as @a[distance=..1,limit=1,gamemode=!spectator] if entity @s[scores={JumpCheckpoint=5}] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532,2437522,8073150,2651799,14188952,14602026,6719955,12801229,15435844],FadeColors:[I;3887386,5320730,2437522,2651799,15435844]}],Flight:0}}}}
execute as @a[distance=..1,limit=1,gamemode=!spectator] if entity @s[scores={JumpCheckpoint=5}] at @s run function xp:add/win
execute as @a[distance=..1,limit=1,gamemode=!spectator] if entity @s[scores={JumpCheckpoint=5}] run function jump:data/save
scoreboard players set @p[distance=..1] JumpCheckpoint 6


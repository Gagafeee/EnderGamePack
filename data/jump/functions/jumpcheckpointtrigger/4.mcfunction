execute as @a[distance=..1,scores={JumpCheckpoint=3}] at @s run playsound entity.experience_orb.pickup master @s
execute as @a[distance=..1,scores={JumpCheckpoint=3}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Colors:[I;1973019,5320730,4408131,14602026,15435844],FadeColors:[I;5320730,2437522,2651799]}],Flight:0}}}}
execute as @a[distance=..1,scores={JumpCheckpoint=3}] at @s run function jump:data/save
execute as @a[distance=..1] if entity @s run scoreboard players set @s JumpCheckpoint 4
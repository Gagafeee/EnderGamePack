execute as @a[distance=..1,scores={JumpCheckpoint=0}] at @s run playsound entity.experience_orb.pickup master @s
execute as @a[distance=..1,scores={JumpCheckpoint=0}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Colors:[I;11743532,14188952,14602026,15435844]}],Flight:0}}}}
execute as @a[distance=..1,scores={JumpCheckpoint=0}] at @s run function jump:data/save
execute as @a[distance=..1] if entity @s run scoreboard players set @s JumpCheckpoint 1
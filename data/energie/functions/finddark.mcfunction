scoreboard players add @s Energies 1
playsound entity.lightning_bolt.impact master @s
execute as gagafeee at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;1973019,2437522,8073150,2651799,4408131,6719955],FadeColors:[I;3887386,2437522]}],Flight:0}}}}
execute as gagafeee at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;1973019,2437522,8073150,2651799,4408131,6719955],FadeColors:[I;3887386,2437522]}],Flight:0}}}}
execute as gagafeee at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;1973019,2437522,8073150,2651799,4408131,6719955],FadeColors:[I;3887386,2437522]}],Flight:0}}}}
effect give @s blindness 2 1 true
tellraw @s ["",{"text":"-----------------------------------------------","color":"dark_purple"},{"text":"\n"},{"text":"------- ","obfuscated":true,"color":"#BCBCBC"},{"text":" ","color":"#BCBCBC"},{"text":"Vous venez de trouver l'energie noire !","color":"#BCBCBC","hoverEvent":{"action":"show_text","contents":"Attention avec ça !"}},{"text":" -------","obfuscated":true,"color":"#BCBCBC"},{"text":"\n"},{"text":"-------------------------------------------------","color":"dark_purple"},{"text":"\n "}]
execute as @s unless score @s Energies = six number run function xp:add/big
tag @s add energiedark
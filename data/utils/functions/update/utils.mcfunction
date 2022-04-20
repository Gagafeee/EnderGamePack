##new player geter
execute as @a[scores={Respawn=1..}] run function utils:connectrespawn
##update gamemode
execute as @a[tag=!admin,scores={Location=0}] if entity @s[gamemode=!adventure] run gamemode adventure @s
##clear fire [don't has lava at lobby]
#execute as @a[tag=ClearFire,tag=admin] if entity @s run gamemode creative @s
#execute as @a[tag=ClearFire,nbt={Fire:-20s}] if entity @s run tag @s remove ClearFire
##die
execute as @a[scores={Life=3}] if entity @s run scoreboard players set @s Dead 1
##kill
execute if entity @e[type=minecraft:item] run kill @e[type=minecraft:item]
execute if entity @e[type=minecraft:ender_pearl] run kill @e[type=minecraft:ender_pearl]
execute if entity @e[type=minecraft:experience_bottle] run kill @e[type=minecraft:experience_bottle]
#[Depreciated]
#execute as @a[scores={epearllunch=1..9}] if entity @s run function lobby:epearllunchedtrigger

#set teams [executed at connect]
#execute as @a[scores={Location=0,BuilderMode=-1,Deplacement=0},tag=!admin,team=!Player] if entity @s run team join Player @s
#execute as @a[scores={Location=0,BuilderMode=-1},tag=admin,team=!admin] if entity @s run team join admin @s
#execute as @a[scores={BuilderMode=2},team=!Builder] if entity @s run team join Builder @s
##Err geter [Depreciated function]
#function utils:spawnerror/errorgeter
##Energie
execute as @e[type=!minecraft:player] if entity @s run effect clear @s minecraft:glowing
execute as @a if entity @s run effect give @s minecraft:saturation 999999 255 true
execute as @a at @e[type=!player,tag=energie,sort=nearest,limit=6] if entity @s[distance=..2.5] run tag @s add energiedistance
execute as @a at @e[type=!player,tag=energie,sort=nearest,limit=1] if entity @s[distance=2.6..] run tag @s remove energiedistance
execute as @a[tag=energiedistance] if entity @s run function energie:energiegeter
#effect
execute as @a[scores={Location=0}] unless entity @s[nbt={ActiveEffects:[{Id:1b}]}] run effect give @s minecraft:speed 999999 1 true
#[Depreciated]
##select game ui
#execute as @a[scores={SelectGameUIQuit=1..99}] if entity @s run function selectgame:quitegameui
#execute as @a[scores={SelectGameUI=1}] at @s if entity @s run function selectgame:selectgameui
execute as @a[scores={SelectGameUI=1}] at @s if entity @s run function lobby:resetepearl
#match making 
execute as @a[scores={Deplacement=2}] if entity @s run title @s actionbar {"text":"Matchmaking...","color":"dark_red"}

function utils:deplacementupdate

#Wait line
#execute as @a[scores={Waitling=1..}] if entity @s run title @s actionbar {"text":"In the queue...","color":"dark_red"}
#xp
execute as @a[scores={xptrigger=1..99}] if entity @s run function xp:xptrigger
execute as @a[scores={xpgive=1..99}] if entity @s run function xp:bottleuse
#utils

function utils:deadgeter
execute as @a[scores={Deplacement=2}] if entity @s run function utils:matchmaking
execute as @a[scores={EmeraldTrigger=1..64}] if entity @s run function utils:spawn
#[Depreciated function]
#function utils:gamestatgeter

#admin utils
execute as @a[scores={PlayerHeadGeter=1..99}] if entity @s run function utils:reloaddatatrigger
execute as @a[scores={EndCrystTrigger=1}] if entity @s run function utils:endereyetrigger
execute as @a[scores={ObserverTrigger=1}] if entity @s run function utils:observertrigger
execute as @a[scores={BuilderMode=1}] if entity @s run function utils:buildermod/buildermod
#[Deprecied]
##start
#execute unless score Started prophuntmodul = un number if score PHSpawn GamePlayerNumber = cinq number run function prophunt:start
##tell
#execute if score Started prophuntmodul = zero number run title @a[scores={Location=3}] actionbar ["",{"text":"Waiting players... ","color":"red"},{"score":{"name":"PropHunt","objective":"GamePlayerNumber"},"color":"red"},{"text":"/","color":"red"},{"text":"5","color":"dark_red"}]
#execute if score Timer prophuntmodul = un number run title @a[scores={Location=3},tag=!finder] actionbar ["",{"text":"[","color":"aqua"},{"text":" Hide yourself !!","color":"red"},{"text":" Time left : ","color":"aqua"},{"score":{"name":"Minutes","objective":"prophunttimer"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"Second","objective":"prophunttimer"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"Tick","objective":"prophunttimer"},"color":"gold"},{"text":" ]","color":"aqua"}]
#execute if score Timer prophuntmodul = un number if score Second prophunttimer <= 58 number run title @a[scores={Location=3},tag=finder] times 0 20 0
#execute if score Timer prophuntmodul = un number if score Second prophunttimer <= 58 number run title @a[scores={Location=3},tag=finder] subtitle {"text":"Wait for players to hide","color":"aqua"}
#execute if score Timer prophuntmodul = un number if score Second prophunttimer <= 58 number run title @a[scores={Location=3},tag=finder] title {"text":"\u231a","color":"green"}
#execute if score Timer prophuntmodul = un number run title @a[scores={Location=3},tag=finder] actionbar ["",{"text":"[","color":"aqua"},{"text":" Time left : ","color":"aqua"},{"score":{"name":"Minutes","objective":"prophunttimer"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"Second","objective":"prophunttimer"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"Tick","objective":"prophunttimer"},"color":"gold"},{"text":" ]","color":"aqua"}]
#execute if score Time prophuntmodul = deux number run title @a[scores={Location=3},tag=finder] actionbar ["",{"text":"[","color":"dark_aqua"},{"text":"Researcher","color":"aqua"},{"text":"| ","color":"gray"},{"text":"Founded","color":"yellow"},{"text":" ","color":"gold"},{"score":{"name":"founded","objective":"prophuntbloctype"},"color":"gold"},{"text":"/","color":"#ED8900"},{"score":{"name":"block","objective":"prophuntbloctype"},"color":"#ED8900"},{"text":" players","color":"#ED8900"},{"text":"|","color":"gray"},{"text":" ","color":"aqua"},{"score":{"name":"try","objective":"prophuntbloctype"},"color":"aqua"},{"text":"try left","color":"yellow"},{"text":" ]","color":"dark_aqua"}]
#execute if score Time prophuntmodul = deux number run title @a[scores={Location=3},tag=!finder] actionbar ["",{"text":"[","color":"dark_aqua"},{"text":"Block","color":"red"},{"text":"| ","color":"gray"},{"text":"Founded","color":"yellow"},{"text":" ","color":"gold"},{"score":{"name":"founded","objective":"prophuntbloctype"},"color":"gold"},{"text":"/","color":"#ED8900"},{"score":{"name":"block","objective":"prophuntbloctype"},"color":"#ED8900"},{"text":" players","color":"#ED8900"},{"text":"|","color":"gray"},{"text":" ","color":"aqua"},{"score":{"name":"try","objective":"prophuntbloctype"},"color":"aqua"},{"text":"try left","color":"yellow"},{"text":" ]","color":"dark_aqua"}]
##functions
#function prophunt:timer/update
#function prophunt:detectkill
#function prophunt:updatefalingblock
#function prophunt:issue/update
#
#execute as @a[scores={Location=3},nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=minecraft:falling_block,distance=..3] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] run say kill @e[distance=..3,type=minecraft:falling_block,sort=nearest,limit=1] 
#execute as @p at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=minecraft:falling_block,distance=..3] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] at @e[distance=..3,type=minecraft:falling_block,sort=nearest,limit=1] if score devmode prophuntmodul = un number run particle minecraft:crit ~ ~2 ~
#
#execute as @e[type=minecraft:falling_block] at @s if score devmode prophuntmodul = un number run particle minecraft:composter ~ ~1.5 ~
#
#execute as @a[scores={Location=3},tag=finder] if score @s prophuntclick >= un number if score @s prophuntkill = un number run function prophunt:find
#execute as @a[scores={Location=3},tag=finder] if score @s prophuntclick >= un number if score @s prophuntkill = zero number run function prophunt:notfind
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0,tag=!finder] run function prophunt:map/0/updateblock 

execute as @a[scores={Location=3,PHIsInGame=0}] if score PHSpawn GamePlayerNumber = un number run title @s actionbar ["",{"text":"Waiting players... ","color":"red"},{"score":{"name":"PHSpawn","objective":"GamePlayerNumber"},"color":"red"},{"text":"/","color":"red"},{"text":"5","color":"dark_red"}]
execute as @a[scores={Location=3,PHIsInGame=0}] if score PHSpawn GamePlayerNumber > un number run title @s actionbar ["",{"text":"Starting game...","color":"green"},{"text":" "},{"score":{"name":"Second","objective":"PHTStart"},"color":"gold"},{"text":"s","color":"yellow"},{"text":" "},{"score":{"name":"PropHunt","objective":"GamePlayerNumber"},"color":"aqua"},{"text":"/5","color":"dark_aqua"}]
#Lunch if have 2 player
execute if score PHSpawn GamePlayerNumber >= deux number run scoreboard players set Start PHTimerManager 1
#Cancel launch if don't have 2 player
execute if score PHSpawn GamePlayerNumber < deux number if score Start PHTimerManager = un number run title @a[scores={Location=3,PHIsInGame=0}] times 20 100 20
execute if score PHSpawn GamePlayerNumber < deux number if score Start PHTimerManager = un number run title @a[scores={Location=3,PHIsInGame=0}] subtitle {"text":"There are not enough players","color":"gold"}
execute if score PHSpawn GamePlayerNumber < deux number if score Start PHTimerManager = un number run title @a[scores={Location=3,PHIsInGame=0}] title {"text":"Launch canceled","color":"red"}
execute if score PHSpawn GamePlayerNumber < deux number if score Start PHTimerManager = un number run scoreboard players set Start PHTimerManager 0
execute if score PHSpawn GamePlayerNumber < deux number if score Start PHTimerManager = zero number run scoreboard players set Second PHTStart 60

execute if score ForestGame PHTimerManager = un number store result bossbar minecraft:ph_forest value run scoreboard players get Forest PHFounded

execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0,tag=finder] if score @s PHClick > zero number if score @s PHtarget = zero number run function prophunt:map/0/notfind
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0,tag=finder] if score @s PHClick > zero number run scoreboard players set @s PHtarget 0
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0,tag=finder] if score @s PHClick > zero number run scoreboard players set @s PHClick 0
execute as @a[scores={Location=3,PHIsInGame=1},tag=finderwaiting,tag=PHG.0] in pforest run tp @s 44.6 -15.5 -134 45 -0.3
execute as @a[scores={Location=3,PHIsInGame=1},tag=finderwaiting,tag=PHG.0] in pforest run tp @s 44.6 -15.5 -134 45 -0.3
execute as @a[scores={Location=3,PHIsInGame=1},tag=finderwaiting,tag=PHG.0] in pforest run tp @s 44.6 -15.5 -134 45 -0.3
execute as @a[scores={Location=3,PHIsInGame=1},tag=finderwaiting,tag=PHG.0] in pforest run tp @s 44.6 -15.5 -134 45 -0.3
execute as @a[scores={Location=3,PHIsInGame=1},tag=finderwaiting,tag=PHG.0] in pforest run tp @s 44.6 -15.5 -134 45 -0.3
execute as @a[scores={Location=3,PHIsInGame=1},tag=finderwaiting,tag=PHG.0] in pforest run tp @s 44.6 -15.5 -134 45 -0.3
execute as @a[scores={Location=3,PHIsInGame=1},tag=finderwaiting] run gamemode spectator @s
execute as @a[scores={Location=3,PHIsInGame=1},tag=finderwaiting] if score ForestWaiting PHTimerManager = un number run title @s actionbar ["",{"text":"Waiting for hiding... ","color":"yellow"},{"score":{"name":"Waiting","objective":"PHTForest"},"color":"aqua"},{"text":"s","color":"gold"}]
execute as @a[scores={Location=3,PHIsInGame=1},tag=!finderwaiting] if score ForestWaiting PHTimerManager = un number run title @s actionbar ["",{"text":"Hide yourself !  ","color":"gold"},{"score":{"name":"Waiting","objective":"PHTForest"},"color":"red"},{"text":"s","color":"gold"}]
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0,tag=finder] if score ForestGame PHTimerManager = un number run title @s actionbar ["",{"text":"Researcher","color":"gold"},{"text":" |","color":"gray"},{"text":" "},{"score":{"name":"Game","objective":"PHTForest"},"color":"aqua"},{"text":"s","color":"yellow"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"PHTry"},"color":"aqua"},{"text":" Try left","color":"yellow"}]
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.0,tag=!finder] if score ForestGame PHTimerManager = un number run title @s actionbar ["",{"text":"Block","color":"green"},{"text":" |","color":"gray"},{"text":" "},{"score":{"name":"Game","objective":"PHTForest"},"color":"aqua"},{"text":"s","color":"yellow"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"PHTry"},"color":"aqua"},{"text":" Try left","color":"yellow"}]

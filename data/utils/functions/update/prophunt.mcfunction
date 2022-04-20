#[Deprecied]
##start
#execute unless score Started prophuntmodul = un number if score PropHunt GamePlayerNumber = cinq number run function prophunt:start
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

execute as @a[scores={Location=3,PHIsInGame=0}] if score PropHunt GamePlayerNumber = un number run title @s actionbar ["",{"text":"Waiting players... ","color":"red"},{"score":{"name":"PropHunt","objective":"GamePlayerNumber"},"color":"red"},{"text":"/","color":"red"},{"text":"5","color":"dark_red"}]
execute as @a[scores={Location=3,PHIsInGame=0}] if score PropHunt GamePlayerNumber > un number run title @s actionbar ["",{"text":"Starting game...","color":"green"},{"text":" "},{"score":{"name":"Second","objective":"PHTStart"},"color":"gold"},{"text":"s","color":"yellow"},{"text":" "},{"score":{"name":"PropHunt","objective":"GamePlayerNumber"},"color":"aqua"},{"text":"/5","color":"dark_aqua"}]

execute if score PropHunt GamePlayerNumber >= deux number run scoreboard players set Start PHTimerManager 1

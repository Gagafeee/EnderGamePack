#generate random map
#function prophunt:random/generaterandommap
#set inventory admin (whithout admin items)
execute as @a[tag=consol] run say [PROPHUNT] SettingUP items
execute as @a[scores={Location=3},tag=admin] run function prophunt:setitems
execute as @a[tag=consol] run say [PROPHUNT] Done
execute as @a[tag=consol] run say [PROPHUNT] ------------------------
#tell
execute as @a[tag=consol] run say [PROPHUNT] finder Player
title @a[scores={Location=3},tag=finder] times 20 60 20
title @a[scores={Location=3},tag=finder] subtitle {"text":"Kill them all !","italic":true,"color":"red"}
title @a[scores={Location=3},tag=finder] title {"text":"Researcher!","color":"aqua"}

execute as @a[tag=consol] run say [PROPHUNT] Normal Player
title @a[scores={Location=3},tag=!finder] times 20 60 20
title @a[scores={Location=3},tag=!finder] subtitle {"text":"\u231a Quick","color":"red"}
title @a[scores={Location=3},tag=!finder] title {"text":"Hide yourself !","color":"gold"}
execute as @a[tag=consol] run say [PROPHUNT] Done
execute as @a[tag=consol] run say [PROPHUNT] ------------------------
##set time for timer title
execute as @a[tag=consol] run say [PROPHUNT] Seting Time
title @a[scores={Location=3},tag=!finder] times 0 5 0
title @a[scores={Location=3},tag=finder] times 20 20 20
execute as @a[tag=consol] run say [PROPHUNT] Done
execute as @a[tag=consol] run say [PROPHUNT] ------------------------
#start timer
execute as @a[tag=consol] run say [PROPHUNT] Starting Timer
scoreboard players set Timer prophuntmodul 1
execute as @a[tag=consol] run say [PROPHUNT] ------------------------
#effect
execute as @a[tag=consol] run say [PROPHUNT] SettingUP normal players effects
effect give @a[scores={Location=3},tag=!finder] invisibility 999999 255 true
effect give @a[scores={Location=3},tag=!finder] slowness 999999 2 true
effect give @a[scores={Location=3},tag=finder] weakness 999999 255 true
execute as @a[tag=consol] run say [PROPHUNT] Done
execute as @a[tag=consol] run say [PROPHUNT] --------------------------
#set random block
execute as @a[tag=consol] run say [PROPHUNT] SetingUP Random Blocks
    #map 0
    execute as @a[tag=consol] run say [PROPHUNT] Generate random block
        function prophunt:random/generaterandomblocktype
       function prophunt:random/generaterandomblocktype
       function prophunt:random/generaterandomblocktype
       function prophunt:random/generaterandomblocktype
       execute as @a[tag=consol] run say [PROPHUNT] Done
       execute as @a[tag=consol] run say [PROPHUNT] -------
        #if error
        execute as @a[tag=consol] run say [PROPHUNT] GETERROR
        execute if entity @a[scores={Location=3,prophuntbloctype=-2},tag=!finder] run tellraw @a[scores={Location=3}] ["",{"text":"############################################","color":"dark_red"},{"text":"\n"},{"text":"[","color":"dark_red"},{"text":"Internal","color":"red"},{"text":"]","color":"dark_red"},{"text":"\n  "},{"text":"ErrorDesc","color":"red"},{"text":" :","color":"dark_red"},{"text":" Il reste des joueur sans blocktype","color":"gold"},{"text":"\n  "},{"text":"[","color":"dark_red"},{"selector":"@a[scores={Location=3,prophuntbloctype=-2},tag=!finder]"},{"text":"]","color":"dark_red"},{"text":"\n  "},{"text":"Please report this to developper","color":"red"},{"text":"\n"},{"text":"############################################","color":"dark_red"}]
        execute as @a[tag=consol] run say [PROPHUNT] Done
        execute as @a[tag=consol] run say [PROPHUNT] -------
        #set items
        execute as @a[tag=consol] run say [PROPHUNT] Set inventory Item
            item replace entity @a[scores={Location=3,prophuntbloctype=0}] container.0 with minecraft:netherrack{display:{Lore:['[{"text":"You are a Netherrack block","color":"aqua"}]'],Name:'[{"text":"Netherrack","color":"dark_red"}]'},Unbreakable:1,HideFlags:127} 1
            item replace entity @a[scores={Location=3,prophuntbloctype=1}] container.0 with minecraft:crimson_nylium{display:{Lore:['[{"text":"You are a Crimson nylium block","color":"aqua"}]'],Name:'[{"text":"Crimson nylium","color":"red"}]'},Unbreakable:1,HideFlags:127} 1
            item replace entity @a[scores={Location=3,prophuntbloctype=2}] container.0 with warped_nylium{display:{Lore:['[{"text":"You are a Warped nylium block","color":"aqua"}]'],Name:'[{"text":"Warped nylium","color":"aqua"}]'},Unbreakable:1,HideFlags:127} 1
            item replace entity @a[scores={Location=3,prophuntbloctype=3}] container.0 with glowstone{display:{Lore:['[{"text":"You are a Glowstone block","color":"aqua"}]'],Name:'[{"text":"Glowstone","color":"yellow"}]'},Unbreakable:1,HideFlags:127} 1
            execute as @a[tag=consol] run say [PROPHUNT] Done
            execute as @a[tag=consol] run say [PROPHUNT] -------
            #set title
            execute as @a[tag=consol] run say [PROPHUNT] Set Titles
            title @a[scores={Location=3},tag=!finder] times 20 100 20
            title @a[scores={Location=3},tag=!finder] subtitle {"text":"You are :","color":"aqua"}
    #map 0
        execute as @a[scores={Location=3,prophuntbloctype=0},tag=!finder] if score selectedmap prophuntmodul = zero number run title @s title {"text":"Netherrack block","color":"dark_red"}
        execute as @a[scores={Location=3,prophuntbloctype=1},tag=!finder] if score selectedmap prophuntmodul = zero number run title @s title {"text":"CrimsonNylium block","color":"red"}
        execute as @a[scores={Location=3,prophuntbloctype=2},tag=!finder] if score selectedmap prophuntmodul = zero number run title @s title {"text":"WarpedNylium block","color":"aqua"}
        execute as @a[scores={Location=3,prophuntbloctype=3},tag=!finder] if score selectedmap prophuntmodul = zero number run title @s title {"text":"Glowstone block","color":"yellow"}
    #map 1
        execute as @a[scores={Location=3,prophuntbloctype=0},tag=!finder] if score selectedmap prophuntmodul = un number run title @s title {"text":"Orange terracotta block","color":"gold"}
        execute as @a[scores={Location=3,prophuntbloctype=1},tag=!finder] if score selectedmap prophuntmodul = un number run title @s title {"text":"Sandstone Stairs block","color":"yellow"}
        execute as @a[scores={Location=3,prophuntbloctype=2},tag=!finder] if score selectedmap prophuntmodul = un number run title @s title {"text":"Gold block","color":"gold"}
        execute as @a[scores={Location=3,prophuntbloctype=3},tag=!finder] if score selectedmap prophuntmodul = un number run title @s title {"text":"Blue terracotta block","color":"blue"}
    #map 2
    #map 3
    #map 4
    #map 5
    #map 6
    execute as @a[tag=consol] run say [PROPHUNT] Done
            execute as @a[tag=consol] run say [PROPHUNT] --------------------------

#set time
execute as @a[tag=consol] run say [PROPHUNT] set time to 1
scoreboard players set Time prophuntmodul 1
execute as @a[tag=consol] run say [PROPHUNT] Done
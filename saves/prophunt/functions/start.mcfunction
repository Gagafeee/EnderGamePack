execute as @a[tag=consol] run say [PROPHUNT] New EVENT:PropHunt Preparing...
##setstatue
execute as @a[tag=consol] run say [PROPHUNT] Setting Starting Event
scoreboard players set Started prophuntmodul 1
##close game
execute as @a[tag=consol] run say [PROPHUNT] Closing Game
scoreboard players set PropHunt Games 3
##tell
execute as @a[tag=consol] run say [PROPHUNT] Tell Game is Starting
title @a[scores={Location=3}] times 20 100 20
title @a[scores={Location=3}] title ["",{"text":"Game is Starting","color":"red"},{"text":"...","color":"dark_red"}]
execute as @a[tag=consol] run say [PROPHUNT] Done
############### Lunching ################
execute as @a[tag=consol] run say [PROPHUNT] ---------------------------
execute as @a[tag=consol] run say [PROPHUNT] Lunching...
execute as @a[tag=consol] run say [PROPHUNT] ------------------------
function prophunt:random/generaterandommap
execute as @a[tag=consol] run say [PROPHUNT] ------------------------
#select a finder
execute as @a[tag=consol] run say [PROPHUNT] Selecting Finder
    tag @r[scores={Location=3},gamemode=!spectator] add finder
execute as @a[tag=consol] run say [PROPHUNT] is @a[scores={Location=3},tag=finder]
execute as @a[tag=consol] run say [PROPHUNT] Done
##tp players to map
execute as @a[tag=consol] run say [PROPHUNT] ------------------------
execute as @a[tag=consol] run say [PROPHUNT] Loading map
    execute as @a[scores={Location=3},tag=!finder] at @s run function prophunt:tp
execute as @a[tag=consol] run say [PROPHUNT] ------------------------
##set inventory on map
#execute as @a[tag=consol] run say [PROPHUNT] Set inventory
#    ##map 0
#        execute as @a[tag=consol] run say [PROPHUNT] Place items
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = zero number run item replace entity @s container.0 with blue_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = zero number run item replace entity @s container.1 with green_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = zero number run item replace entity @s container.2 with yellow_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = zero number run item replace entity @s container.3 with gray_concrete
#        execute as @a[tag=consol] run say [PROPHUNT] Done
#    ##map 1
#        execute as @a[tag=consol] run say [PROPHUNT] Place items
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = un number run item replace entity @s container.0 with blue_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = un number run item replace entity @s container.1 with green_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = un number run item replace entity @s container.2 with yellow_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = un number run item replace entity @s container.3 with gray_concrete
#        execute as @a[tag=consol] run say [PROPHUNT] Done
#    ##map 2
#        execute as @a[tag=consol] run say [PROPHUNT] Place items
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = deux number run item replace entity @s container.0 with blue_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = deux number run item replace entity @s container.1 with green_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = deux number run item replace entity @s container.2 with yellow_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = deux number run item replace entity @s container.3 with gray_concrete
#        execute as @a[tag=consol] run say [PROPHUNT] Done
#
#    ##map 3
#        execute as @a[tag=consol] run say [PROPHUNT] Place items
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = trois number run item replace entity @s container.0 with blue_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = trois number run item replace entity @s container.1 with green_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = trois number run item replace entity @s container.2 with yellow_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = trois number run item replace entity @s container.3 with gray_concrete
#        execute as @a[tag=consol] run say [PROPHUNT] Done
#
#    ##map 4
#        execute as @a[tag=consol] run say [PROPHUNT] Place items
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = quatre number run item replace entity @s container.0 with blue_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = quatre number run item replace entity @s container.1 with green_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = quatre number run item replace entity @s container.2 with yellow_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = quatre number run item replace entity @s container.3 with gray_concrete
#        execute as @a[tag=consol] run say [PROPHUNT] Done
#
#    ##map 5
#        execute as @a[tag=consol] run say [PROPHUNT] Place items
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = 5 number run item replace entity @s container.0 with blue_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = 5 number run item replace entity @s container.1 with green_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = 5 number run item replace entity @s container.2 with yellow_concrete
#        execute as @a[scores={Location=3},tag=!finder] if score selectedmap prophuntmodul = 5 number run item replace entity @s container.3 with gray_concrete
#        execute as @a[tag=consol] run say [PROPHUNT] Done
execute as @a[tag=consol] run say [PROPHUNT] LunchingGame...
execute as @a[tag=consol] run say [PROPHUNT] ------------------------
function prophunt:time/lunching
execute as @a[tag=consol] run say [PROPHUNT] OPERATION.DONE



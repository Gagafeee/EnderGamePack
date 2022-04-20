##Jump
    ##detection de
    execute as @a[scores={Location=1}] if entity @s if score Jump Games = zero number run function utils:spawnerror/jumpspawnerror
    execute as @a[tag=!admin,tag=!builder,scores={Location=1}] if entity @s if score Jump Games = deux number run function utils:spawnerror/jumpspawnerror

    ##detection de la under border si le jump est ouvert
    execute if score Jump Games = un number if score Under Border = zero number run function utils:spawnerror/jumpspawnerror

###AmongUS
#    ##Stop if players = 0
#    execute if score AmongUS Games = trois number if score Lunched AmongComponents = un number if score AmongUS GamePlayerNumber < trois number run function utils:spawnerror/amongspawnerrorplayers
#    #if open unactivate particules
#    execute if score AmongUS Games = un number if score ComponentsView AmongComponents = un number run scoreboard players set ComponentsView AmongComponents 0
##PropHunt
#    #if open unactivate particules
#    execute if score PropHunt Games = un number if score devmode prophuntmodul = un number run scoreboard players set devmode prophuntmodul 0
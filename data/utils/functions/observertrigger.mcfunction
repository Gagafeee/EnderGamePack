##Location
scoreboard players set @s Location 0
##tp
execute in spawn run tp @s -261 166 73 137 3
##set items
execute as @s run function utils:setitems
##reset score
scoreboard players set @s ObserverTrigger 0
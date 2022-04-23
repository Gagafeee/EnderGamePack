#execute /prophunt setNewGame
setblock 5 19 -10 redstone_block
execute as @a[scores={Location=3},tag=PHG.0] run function prophunt:map/0/start
execute as @a[scores={Location=3},tag=PHG.1] run function prophunt:map/1/start
execute as @a[scores={Location=3},tag=PHG.2] run function prophunt:map/2/start
execute as @a[scores={Location=3},tag=PHG.3] run function prophunt:map/3/start
execute as @a[scores={Location=3},tag=PHG.4] run function prophunt:map/4/start
execute as @a[scores={Location=3},tag=PHG.5] run function prophunt:map/5/start
function prophunt:reloadgameplayerlist
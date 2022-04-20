function prophunt:reloadgameplayerlist
scoreboard players set Started prophuntmodul 0
scoreboard players set PropHunt Games 1
scoreboard players set selectedmap prophuntmodul 0
scoreboard players set Timer prophuntmodul 0
scoreboard players set Time prophuntmodul 0
scoreboard players set @a[scores={Location=3}] prophuntbloctype -2
scoreboard players set seed prophuntbloctype 0
scoreboard players set try prophuntbloctype 30
scoreboard players set founded prophuntbloctype 0
scoreboard players set block prophuntbloctype 0
tag @a remove finder
execute as @a[scores={Location=3}] run function prophunt:setitems
function prophunt:timer/reset
effect clear @a[scores={Location=3}]

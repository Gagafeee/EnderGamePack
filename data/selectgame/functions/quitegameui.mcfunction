##setitems
#function lobby:reloaditems
#playsound block.dispenser.dispense master @s
##set scoreboards
tellraw @s ["",{"text":"[ ","color":"dark_red"},{"text":"Depreciated function","color":"red"},{"text":" used ","color":"red"},{"text":"]","color":"dark_red"}]
scoreboard players set @s selectgameui 0
scoreboard players set @s SelectGameUIQuit 0
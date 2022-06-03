function prophunt:map/5/stopevent
#time
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5] run title @s times 20 100 20
#founded (all player)
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder,tag=PHFOUNDED] run title @s subtitle {"text":"Vous avez été trouvé","color":"red"}
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder,tag=PHFOUNDED] run title @s title {"text":"Lose","color":"dark_red"}
#finder
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=finder] run title @s subtitle {"text":"Vous avez trouvé tous les joueurs","color":"green"}
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=finder] run title @s title {"text":"Win","color":"dark_green"}

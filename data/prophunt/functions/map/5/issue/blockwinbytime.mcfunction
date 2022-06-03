function prophunt:map/5/stopevent
#time
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5] run title @s times 20 100 20
#title for
#not founded
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder,tag=!PHFOUNDED] run title @s subtitle {"text":"Vous n'avez pas été trouvé","color":"green"}
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder,tag=!PHFOUNDED] run title @s title {"text":"Win","color":"dark_green"}
#founded
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder,tag=PHFOUNDED] run title @s subtitle {"text":"Vous avez été trouvé","color":"red"}
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder,tag=PHFOUNDED] run title @s title {"text":"Lose","color":"dark_red"}
#finder
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=finder] run title @s subtitle {"text":"Le temps est écoulé","color":"red"}
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=finder] run title @s title {"text":"Lose","color":"dark_red"}
#xp
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder] run function xp:add/win
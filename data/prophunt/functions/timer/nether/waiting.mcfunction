scoreboard players remove Waiting PHTNether 1
execute if score Waiting PHTNether <= dix number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.2] times 00 100 00
execute if score Waiting PHTNether <= dix number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.2,tag=finderwaiting] title {"score":{"name":"Waiting","objective":"PHTNether"},"color":"red"}
execute if score Waiting PHTNether matches 1..10 run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.2,tag=!finderwaiting] title {"score":{"name":"Waiting","objective":"PHTNether"},"color":"red"}
execute if score Waiting PHTNether = zero number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.2,tag=!finderwaiting] title {"text": "The researcher arrives","color": "red"}
execute if score Waiting PHTNether = zero number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.2,tag=!finderwaiting] subtitle {"text": "Don't move","color": "red"}
execute if score Waiting PHTNether = zero number run function prophunt:map/2/findingevent
execute if score Waiting PHTNether = zero number run scoreboard players set ForestWaiting PHTimerManager 0
execute if score Waiting PHTNether = zero number run scoreboard players set Waiting PHTNether 30


scoreboard players remove Waiting PHTForest 1
execute if score Waiting PHTForest <= dix number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] times 00 100 00
execute if score Waiting PHTForest <= diw number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0,tag=finderwaiting] title {"score":{"name":"Waiting","objective":"PHTForest"},"color":"red"}
execute if score Waiting PHTForest matches 1..10 run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0,tag=!finderwaiting] title {"score":{"name":"Waiting","objective":"PHTForest"},"color":"red"}
execute if score Waiting PHTForest = zero number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0,tag=!finderwaiting] title {"text": "The researcher arrives","color": "red"}
execute if score Waiting PHTForest = zero number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0,tag=!finderwaiting] subtitle {"text": "Don't move","color": "red"}
execute if score Waiting PHTForest = zero number run function prophunt:map/0/findingevent
execute if score Waiting PHTForest = zero number run scoreboard players set ForestWaiting PHTimerManager 0
execute if score Waiting PHTForest = zero number run scoreboard players set Waiting PHTForest 30


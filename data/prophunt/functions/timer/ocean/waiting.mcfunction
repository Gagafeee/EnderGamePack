scoreboard players remove Waiting PHTOcean 1
execute if score Waiting PHTOcean <= dix number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.3] times 00 100 00
execute if score Waiting PHTOcean <= dix number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.3,tag=finderwaiting] title {"score":{"name":"Waiting","objective":"PHTOcean"},"color":"red"}
execute if score Waiting PHTOcean matches 1..10 run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.3,tag=!finderwaiting] title {"score":{"name":"Waiting","objective":"PHTOcean"},"color":"red"}
execute if score Waiting PHTOcean = zero number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.3,tag=!finderwaiting] title {"text": "The researcher arrives","color": "red"}
execute if score Waiting PHTOcean = zero number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.3,tag=!finderwaiting] subtitle {"text": "Don't move","color": "red"}
execute if score Waiting PHTOcean = zero number run function prophunt:map/3/findingevent
execute if score Waiting PHTOcean = zero number run scoreboard players set OceanWaiting PHTimerManager 0
execute if score Waiting PHTOcean = zero number run scoreboard players set Waiting PHTOcean 30


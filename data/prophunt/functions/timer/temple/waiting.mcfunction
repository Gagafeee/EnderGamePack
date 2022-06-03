scoreboard players remove Waiting PHTTemple 1
execute if score Waiting PHTTemple <= dix number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.5] times 00 100 00
execute if score Waiting PHTTemple <= dix number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=finderwaiting] title {"score":{"name":"Waiting","objective":"PHTTemple"},"color":"red"}
execute if score Waiting PHTTemple matches 1..10 run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finderwaiting] title {"score":{"name":"Waiting","objective":"PHTTemple"},"color":"red"}
execute if score Waiting PHTTemple = zero number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finderwaiting] title {"text": "The researcher arrives","color": "red"}
execute if score Waiting PHTTemple = zero number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finderwaiting] subtitle {"text": "Don't move","color": "red"}
execute if score Waiting PHTTemple = zero number run function prophunt:map/5/findingevent
execute if score Waiting PHTTemple = zero number run scoreboard players set TempleWaiting PHTimerManager 0
execute if score Waiting PHTTemple = zero number run scoreboard players set Waiting PHTTemple 30


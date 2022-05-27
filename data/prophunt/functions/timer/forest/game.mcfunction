scoreboard players remove Game PHTForest 1
execute if score Game PHTForest = 239 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] title ["",{"text":"4","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTForest = 180 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] title ["",{"text":"3","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTForest = 119 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] title ["",{"text":"2","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTForest = 60 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] title ["",{"text":"1","color":"gold"},{"text":"min","color":"yellow"}]
execute if score Game PHTForest = 30 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] title ["",{"score":{"name":"Game","objective":"PHTForest"},"color":"red"},{"text":"s","color": "yellow"}]
execute if score Game PHTForest matches 0..10 run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] times 0 30 0
execute if score Game PHTForest matches 0..10 run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] title ["",{"score":{"name":"Game","objective":"PHTForest"},"color":"red"},{"text":"s","color": "yellow"}]
execute if score Game PHTForest = zero number run function prophunt:map/0/issue/blockwinbytime



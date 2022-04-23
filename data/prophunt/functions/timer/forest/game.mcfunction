scoreboard players remove Game PHTForest 1
execute if score Game PHTForest = 119 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] title ["",{"text":"2","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTForest = 60 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] title ["",{"text":"1","color":"gold"},{"text":"min","color":"yellow"}]
execute if score Game PHTForest = 30 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] title ["",{"score":{"name":"Game","objective":"PHTForest"},"color":"red"},{"text":"s","color": "yellow"}]
execute if score Game PHTForest <= dix number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.0] title ["",{"score":{"name":"Game","objective":"PHTForest"},"color":"red"},{"text":"s","color": "yellow"}]
execute if score Game PHTForest = zero number run say game is finish
execute if score Game PHTForest = zero number run scoreboard players set ForestGame PHTimerManager 0
execute if score Game PHTForest = zero number run scoreboard players set Game PHTForest 122


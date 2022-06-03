scoreboard players remove Game PHTOcean 1
execute if score Game PHTOcean = 239 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.3] title ["",{"text":"4","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTOcean = 180 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.3] title ["",{"text":"3","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTOcean = 119 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.3] title ["",{"text":"2","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTOcean = 60 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.3] title ["",{"text":"1","color":"gold"},{"text":"min","color":"yellow"}]
execute if score Game PHTOcean = 30 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.3] title ["",{"score":{"name":"Game","objective":"PHTOcean"},"color":"red"},{"text":"s","color": "yellow"}]
execute if score Game PHTOcean matches 0..10 run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.3] times 0 30 0
execute if score Game PHTOcean matches 0..10 run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.3] title ["",{"score":{"name":"Game","objective":"PHTOcean"},"color":"red"},{"text":"s","color": "yellow"}]
execute if score Game PHTOcean = zero number run function prophunt:map/3/issue/blockwinbytime



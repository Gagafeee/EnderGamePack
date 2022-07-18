scoreboard players remove Game PHTNether 1
execute if score Game PHTNether = 239 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.2] title ["",{"text":"4","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTNether = 180 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.2] title ["",{"text":"3","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTNether = 119 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.2] title ["",{"text":"2","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTNether = 60 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.2] title ["",{"text":"1","color":"gold"},{"text":"min","color":"yellow"}]
execute if score Game PHTNether = 30 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.2] title ["",{"score":{"name":"Game","objective":"PHTNether"},"color":"red"},{"text":"s","color": "yellow"}]
execute if score Game PHTNether matches 0..10 run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.2] times 0 30 0
execute if score Game PHTNether matches 0..10 run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.2] title ["",{"score":{"name":"Game","objective":"PHTNether"},"color":"red"},{"text":"s","color": "yellow"}]
execute if score Game PHTNether = zero number run function prophunt:map/2/issue/blockwinbytime



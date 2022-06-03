scoreboard players remove Game PHTTemple 1
execute if score Game PHTTemple = 239 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.5] title ["",{"text":"4","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTTemple = 180 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.5] title ["",{"text":"3","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTTemple = 119 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.5] title ["",{"text":"2","color":"aqua"},{"text":"min","color":"yellow"}]
execute if score Game PHTTemple = 60 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.5] title ["",{"text":"1","color":"gold"},{"text":"min","color":"yellow"}]
execute if score Game PHTTemple = 30 number run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.5] title ["",{"score":{"name":"Game","objective":"PHTTemple"},"color":"red"},{"text":"s","color": "yellow"}]
execute if score Game PHTTemple matches 0..10 run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.5] times 0 30 0
execute if score Game PHTTemple matches 0..10 run title @a[scores={Location=3,PHIsInGame=1},tag=PHG.5] title ["",{"score":{"name":"Game","objective":"PHTTemple"},"color":"red"},{"text":"s","color": "yellow"}]
execute if score Game PHTTemple = zero number run function prophunt:map/5/issue/blockwinbytime



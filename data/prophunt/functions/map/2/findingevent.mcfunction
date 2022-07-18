tag @a[scores={Location=3,PHIsInGame=1},tag=PHG.2,tag=finderwaiting] remove finderwaiting
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.2,tag=finder] run gamemode adventure @s
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.2,tag=finder] in pnether run tp @s 45.5 9 60.5 140 -1
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.2,tag=finder] run item replace entity @s container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"The Designator","bold":true,"color":"dark_red"}]',Lore:['[{"text":"Right ","color":"dark_red"},{"text":"click on ","color":"aqua"},{"text":"block ","color":"gold"},{"text":"or on a ","color":"aqua"},{"text":"fake ","color":"light_purple"},{"text":"block","color":"gold"}]']},Unbreakable:1,HideFlags:127} 1
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.2,tag=!finder] run effect give @s slowness 999999 2 true
scoreboard players set NetherGame PHTimerManager 1
bossbar set ph_nether players @a[scores={Location=3,PHIsInGame=1},tag=PHG.2]
bossbar set ph_nether name ["",{"score":{"name":"Nether","objective":"PHFounded"},"color":"yellow"},{"text":" joueur","color":"green"},{"text":" ont été trouvé","color":"aqua"}]
bossbar set ph_nether visible true
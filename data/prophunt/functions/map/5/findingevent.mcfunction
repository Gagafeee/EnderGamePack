tag @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=finderwaiting] remove finderwaiting
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=finder] run gamemode adventure @s
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=finder] in ptemple run tp @s 29 -5 18 31 0
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=finder] run item replace entity @s container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"The Designator","bold":true,"color":"dark_red"}]',Lore:['[{"text":"Right ","color":"dark_red"},{"text":"click on ","color":"aqua"},{"text":"block ","color":"gold"},{"text":"or on a ","color":"aqua"},{"text":"fake ","color":"light_purple"},{"text":"block","color":"gold"}]']},Unbreakable:1,HideFlags:127} 1
scoreboard players set TempleGame PHTimerManager 1
bossbar set ph_temple players @a[scores={Location=3,PHIsInGame=1},tag=PHG.5]
bossbar set ph_temple name ["",{"score":{"name":"Forest","objective":"PHFounded"},"color":"yellow"},{"text":" joueur","color":"green"},{"text":" ont été trouvé","color":"aqua"}]
bossbar set ph_temple visible true
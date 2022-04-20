##generate aleatoire number
function amongus:randomgenerator
##attribut number
execute as @s[scores={Location=2}] if score rand AmongRandomTeam = zero number run function amongus:color/0
execute as @s[scores={Location=2}] if score rand AmongRandomTeam = un number run function amongus:color/1
execute as @s[scores={Location=2}] if score rand AmongRandomTeam = deux number run function amongus:color/2
execute as @s[scores={Location=2}] if score rand AmongRandomTeam = trois number run function amongus:color/3
execute as @s[scores={Location=2}] if score rand AmongRandomTeam = quatre number run function amongus:color/4
##if error
execute as @s[scores={Location=2}] unless score rand AmongRandomTeam matches 0..4 run function utils:spawnerror/amongspawnerror
#return error (couleur déja prise)
execute as @a[scores={Location=2,AmongColorIndex=0},tag=!amongselect] run function amongus:amongusrandomteamselector 
execute as @s[scores={Location=2}] if score @s AmongColorIndex = zero number unless entity @a[scores={Location=2,AmongColorIndex=1}] run function amongus:amongusrandomteamselector 
execute as @s[scores={Location=2}] if score @s AmongColorIndex = zero number unless entity @a[scores={Location=2,AmongColorIndex=2}] run function amongus:amongusrandomteamselector 
execute as @s[scores={Location=2}] if score @s AmongColorIndex = zero number unless entity @a[scores={Location=2,AmongColorIndex=3}] run function amongus:amongusrandomteamselector 
execute as @s[scores={Location=2}] if score @s AmongColorIndex = zero number unless entity @a[scores={Location=2,AmongColorIndex=4}] run function amongus:amongusrandomteamselector 

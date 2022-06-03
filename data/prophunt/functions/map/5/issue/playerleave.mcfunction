execute as @a[scores={Location=3,PHIsInGame=1}] run title @s times 20 100 20
execute as @a[scores={Location=3,PHIsInGame=1}] run title @s subtitle {"text":"Il n'y a plus assez de joueur","color":"red"}
execute as @a[scores={Location=3,PHIsInGame=1}] run title @s title {"text":"Oups...","color":"red"}
function prophunt:map/5/stop
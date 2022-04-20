##start Starting Component
scoreboard players set Starting AmongComponents 1
#Timer
    ##start timer
    scoreboard players set Timer AmongComponents 1
    ##execution du timer sur amongus:starttimer en toujour actif
   
    

#select imposteur(s)
    ##define impos
    execute as @r[limit=1] if score Second AmongTimer = douze number run tag @s add Imposteur
    ##tp
    execute if score Second AmongTimer = douze number run effect give @a[scores={Location=2}] slowness 3 255 true
    execute if score Second AmongTimer = douze number run effect give @a[scores={Location=2}] blindness 4 255 true
    execute if score Second AmongTimer = douze number in overworld run tp @a[scores={Location=2}]


##stop 
execute if score Second AmongTimer = 14 number run scoreboard players set Lunched AmongComponents 1
execute if score Second AmongTimer = 14 number run scoreboard players set Starting AmongComponents 0

##reset timer
    execute if score Second AmongTimer = 14 number run scoreboard players set Second AmongTimer 0
    execute if score Second AmongTimer = 14 number run scoreboard players set Tick AmongTimer 0
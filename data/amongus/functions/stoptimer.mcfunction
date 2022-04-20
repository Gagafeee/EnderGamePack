##stop timer
    scoreboard players set Timer AmongComponents 0
    scoreboard players set Lunched AmongComponents 0
    scoreboard players set Starting AmongComponents 0
##reset timer
    execute if score Second AmongTimer = treize number run scoreboard players set Tick AmongTimer 0
    execute if score Second AmongTimer = treize number run scoreboard players set Second AmongTimer 0
##title
    title @a[scores={Location=2}] times 20 40 20
    title @a[scores={Location=2}] subtitle {"text":"Not enough player !","color":"red"}
    title @a[scores={Location=2}] title {"text":"Error","color":"dark_red"}
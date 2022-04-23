scoreboard players remove Second PHTStart 1
execute if score Second PHTStart <= dix number run title @a[scores={Location=3,PHIsInGame=0}] times 00 100 00
execute if score Second PHTStart <= dix number run title @a[scores={Location=3,PHIsInGame=0}] subtitle {"score":{"name":"Second","objective":"PHTStart"},"color":"red"}
execute if score Second PHTStart <= dix number run title @a[scores={Location=3,PHIsInGame=0}] title {"text":"Starting...","color":"green"}
execute if score Second PHTStart = zero number run function prophunt:startnewgame
execute if score Second PHTStart = zero number run scoreboard players set Start PHTimerManager 0
execute if score Second PHTStart = zero number run scoreboard players set Second PHTStart 60


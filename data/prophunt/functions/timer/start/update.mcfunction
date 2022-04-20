scoreboard players remove Second PHTStart 1
execute if score Second PHTStart = 30 number run title @a times 20 100 20
execute if score Second PHTStart = 30 number run title @a subtitle {"score":{"name":"Second","objective":"PHTStart"},"color":"aqua"}
execute if score Second PHTStart = 30 number run title @a title {"text":"Starting...","color":"green"}
execute if score Second PHTStart = zero number run say start
execute if score Second PHTStart = zero number run scoreboard players set Start PHTimerManager 0
execute if score Second PHTStart = zero number run scoreboard players set Second PHTStart 30


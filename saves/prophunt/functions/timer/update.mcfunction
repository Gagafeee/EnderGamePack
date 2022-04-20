execute if score Timer prophuntmodul = un number run scoreboard players remove Tick prophunttimer 1
execute if score Timer prophuntmodul = un number if score Tick prophunttimer = zero number unless score Second prophunttimer = zero number run scoreboard players set Tick prophunttimer 25
#if sec
execute if score Timer prophuntmodul = un number if score Tick prophunttimer = 25 number run scoreboard players remove Second prophunttimer 1

##Tell
#tell 3
execute if score Timer prophuntmodul = un number if score Second prophunttimer = trois number run title @a[scores={Location=3},tag=!finder] times 0 20 0
execute if score Timer prophuntmodul = un number if score Second prophunttimer = trois number run title @a[scores={Location=3},tag=!finder] subtitle {"score":{"name":"Tick","objective":"prophunttimer"},"color":"gold"}
execute if score Timer prophuntmodul = un number if score Second prophunttimer = trois number run title @a[scores={Location=3},tag=!finder] title {"text":"3","color":"green"}
#tell 2
execute if score Timer prophuntmodul = un number if score Second prophunttimer = deux number run title @a[scores={Location=3},tag=!finder] times 0 20 0
execute if score Timer prophuntmodul = un number if score Second prophunttimer = deux number run title @a[scores={Location=3},tag=!finder] subtitle {"score":{"name":"Tick","objective":"prophunttimer"},"color":"gold"}
execute if score Timer prophuntmodul = un number if score Second prophunttimer = deux number run title @a[scores={Location=3},tag=!finder] title {"text":"2","color":"red"}
#tell 1
execute if score Timer prophuntmodul = un number if score Second prophunttimer = un number run title @a[scores={Location=3},tag=!finder] times 0 20 0
execute if score Timer prophuntmodul = un number if score Second prophunttimer = un number run title @a[scores={Location=3},tag=!finder] subtitle {"score":{"name":"Tick","objective":"prophunttimer"},"color":"gold"}
execute if score Timer prophuntmodul = un number if score Second prophunttimer = un number run title @a[scores={Location=3},tag=!finder] title {"text":"1","color":"dark_red"}
#tell 0
execute if score Timer prophuntmodul = un number if score Second prophunttimer = zero number run title @a[scores={Location=3},tag=!finder] times 0 20 0
execute if score Timer prophuntmodul = un number if score Second prophunttimer = zero number run title @a[scores={Location=3},tag=!finder] title {"score":{"name":"Tick","objective":"prophunttimer"},"color":"gold"}
execute if score Timer prophuntmodul = un number if score Second prophunttimer = zero number run title @a[scores={Location=3},tag=!finder] subtitle {"text": " "}
#if time left
execute if score Timer prophuntmodul = un number if score Minutes prophunttimer = zero number if score Second prophunttimer = zero number if score Tick prophunttimer = zero number run function prophunt:time/find
scoreboard players set Game PHTTemple -1
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder] run effect clear @s invisibility
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder,tag=!PHFOUNDED] run tag @s add PHB.DISABLED
execute as @a[scores={Location=3,PHIsInGame=1},tag=PHG.5,tag=!finder,tag=!PHFOUNDED] at @s run summon firework_rocket ~ ~2 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:1,Colors:[I;11250603,6719955,15790320],FadeColors:[I;2437522,2651799]}],Flight:0}}}}


#summon falling blocks
#map 0
    execute if score Started prophuntmodul = un number if score selectedmap prophuntmodul = zero number as @a[scores={Location=3,prophuntbloctype=0}] at @s align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:netherrack"},Time:-1,NoGravity:1}
    execute if score Started prophuntmodul = un number if score selectedmap prophuntmodul = zero number as @a[scores={Location=3,prophuntbloctype=1}] at @s align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:crimson_nylium"},Time:-1,NoGravity:1}
    execute if score Started prophuntmodul = un number if score selectedmap prophuntmodul = zero number as @a[scores={Location=3,prophuntbloctype=2}] at @s align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:warped_nylium"},Time:-1,NoGravity:1}
    execute if score Started prophuntmodul = un number if score selectedmap prophuntmodul = zero number as @a[scores={Location=3,prophuntbloctype=3}] at @s align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:glowstone"},Time:-1,NoGravity:1}
#map 1
    execute if score Started prophuntmodul = un number if score selectedmap prophuntmodul = un number as @a[scores={Location=3,prophuntbloctype=0}] at @s align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:orange_terracotta"},Time:-1,NoGravity:1}
    execute if score Started prophuntmodul = un number if score selectedmap prophuntmodul = un number as @a[scores={Location=3,prophuntbloctype=1}] at @s align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:sandstone_stairs"},Time:-1,NoGravity:1}
    execute if score Started prophuntmodul = un number if score selectedmap prophuntmodul = un number as @a[scores={Location=3,prophuntbloctype=2}] at @s align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:gold_block"},Time:-1,NoGravity:1}
    execute if score Started prophuntmodul = un number if score selectedmap prophuntmodul = un number as @a[scores={Location=3,prophuntbloctype=3}] at @s align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:blue_terracotta"},Time:-1,NoGravity:1}
#map 2
#map 3
#map 4
#map 5
#map 6
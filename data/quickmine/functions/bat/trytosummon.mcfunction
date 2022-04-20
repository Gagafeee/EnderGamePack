summon area_effect_cloud ~ ~1 ~ {Tags:["QuickMineGenerateRandomBat"],Age:1}
execute store result score spawn QMBatModule run data get entity @e[type=area_effect_cloud,tag=QuickMineGenerateRandomBat,limit=1] UUID[0]
scoreboard players operation spawn QMBatModule %= spawnmax QMBatModule
kill @e[type=area_effect_cloud,tag=QuickMineGenerateRandomBat]

execute if score spawn QMBatModule matches 700..1000 run summon area_effect_cloud ~ ~1 ~ {Tags:["QuickMineGenerateRandomBatSpawnablePoint"],Age:1}
execute if score spawn QMBatModule matches 700..1000 run execute store result score spawnablepoint QMBatModule run data get entity @e[type=area_effect_cloud,tag=QuickMineGenerateRandomBatSpawnablePoint,limit=1] UUID[0]
execute if score spawn QMBatModule matches 700..1000 run scoreboard players operation spawnablepoint QMBatModule %= spawnablepointmax QMBatModule
execute if score spawn QMBatModule matches 700..1000 run kill @e[type=area_effect_cloud,tag=QuickMineGenerateRandomBatSpawnablePoint]

execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 1 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint1] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 2 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint2] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 3 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint3] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 4 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint4] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 5 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint5] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 6 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint6] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 7 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint7] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 8 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint8] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 9 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint9] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 10 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint10] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 11 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint11] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 12 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint12] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 13 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint13] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 14 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint14] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 15 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint15] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 16 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint16] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 17 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint17] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 18 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint18] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 19 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint19] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 20 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint20] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 21 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint21] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 22 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint22] add QuickMineBatGeneratorSelectedSpawnablePoint
execute if score spawn QMBatModule matches 700..1000 if score spawnablepoint QMBatModule = 23 number run tag @e[type=armor_stand,tag=QuickmineBatGeneratorSpawnablePoint23] add QuickMineBatGeneratorSelectedSpawnablePoint




execute if score spawn QMBatModule matches 700..1000 as @e[tag=QuickMineBatGeneratorSelectedSpawnablePoint,type=armor_stand] at @s run function quickmine:bat/summon
execute if score spawn QMBatModule matches 700..1000 as @e[tag=QuickMineBatGeneratorSelectedSpawnablePoint,type=armor_stand] at @s run tag @e[tag=QuickMineBatGeneratorSelectedSpawnablePoint] remove QuickMineBatGeneratorSelectedSpawnablePoint

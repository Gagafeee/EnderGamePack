##autorisation pour un joueur normal
execute as @s[scores={JumpTrigger=1}] if entity @s if score Jump Games = un number if score @s Location = zero number run function jump:jumpenter
execute as @s[scores={AmongUSTrigger=1}] if entity @s if score AmongUS Games = un number if score @s Location = zero number run function amongus:amongusenter
execute as @s[scores={PropHuntTrigger=1}] if entity @s if score PropHunt Games = un number if score @s Location = zero number run function prophunt:enter
execute as @s[scores={QuickMineTrigger=1}] if entity @s if score QuickMine Games = un number if score @s Location = zero number run function quickmine:enter
##autorisation pour un admin ou un builder
execute as @s[scores={JumpTrigger=1},tag=admin] if entity @s if score Jump Games = deux number if score @s Location = zero number run function jump:jumpenter
execute as @s[scores={JumpTrigger=1},tag=builder] if entity @s if score Jump Games = deux number if score @s Location = zero number run function jump:jumpenter
execute as @s[scores={AmongUSTrigger=1},tag=admin] if entity @s if score AmongUS Games = deux number if score @s Location = zero number run function amongus:amongusenter
execute as @s[scores={AmongUSTrigger=1},tag=builder] if entity @s if score AmongUS Games = deux number if score @s Location = zero number run function amongus:amongusenter
execute as @s[scores={PropHuntTrigger=1},tag=admin] if entity @s if score PropHunt Games = deux number if score @s Location = zero number run function prophunt:enter
execute as @s[scores={PropHuntTrigger=1},tag=builder] if entity @s if score PropHunt Games = deux number if score @s Location = zero number run function prophunt:enter
execute as @s[scores={QuickMineTrigger=1},tag=admin] if entity @s if score QuickMine Games = deux number if score @s Location = zero number run function quickmine:enter
execute as @s[scores={QuickMineTrigger=1},tag=builder] if entity @s if score QuickMine Games = deux number if score @s Location = zero number run function quickmine:enter

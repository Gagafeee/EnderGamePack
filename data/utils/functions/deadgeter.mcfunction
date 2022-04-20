#execute as @a[scores={Dead=1..}] if entity @s run function utils:setitems
execute as @a[scores={Life=4..19,Location=0..1}] if entity @s run effect give @s regeneration 5 255 true 
#execute as @a[scores={Life=1..19,Location=0},nbt={Fire:300s}] if entity @s run function utils:clearfire


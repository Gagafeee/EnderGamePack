##Primary
scoreboard objectives add Dead minecraft.custom:minecraft.deaths
scoreboard objectives add Location dummy
scoreboard objectives add Respawn minecraft.custom:minecraft.leave_game
scoreboard objectives add Life health
    scoreboard objectives modify Life rendertype hearts
    scoreboard objectives setdisplay list Life
    scoreboard objectives setdisplay belowName Life
scoreboard objectives add EmeraldTrigger minecraft.dropped:minecraft.emerald
scoreboard objectives add Deplacement dummy
scoreboard objectives add SelectGameUI minecraft.dropped:minecraft.ender_pearl
scoreboard objectives add SelectGameUIQuit minecraft.dropped:minecraft.shears
scoreboard objectives add Games dummy
    scoreboard players set Jump Games 0
    scoreboard players set AmongUS Games 0
    scoreboard players set PropHunt Games 0
    scoreboard players set QuickMine Games 0
scoreboard objectives add Mode dummy
scoreboard objectives add GamePlayerNumber dummy
    scoreboard players set Jump GamePlayerNumber 0
    scoreboard players set AmongUS GamePlayerNumber 0
    scoreboard players set PropHunt GamePlayerNumber 0
    scoreboard players set QuickMine GamePlayerNumber 0
scoreboard objectives add GameStats dummy
    scoreboard players set Jump GameStats 0
    scoreboard players set AmongUS GameStats 0
    scoreboard players set PropHunt GameStats 0
    scoreboard players set QuickMine GameStats 0
scoreboard objectives add PlayerMTrigger minecraft.dropped:minecraft.iron_sword
##UISelect
scoreboard objectives add epearllunch minecraft.used:minecraft.ender_pearl
scoreboard objectives add EndCrystTrigger minecraft.dropped:minecraft.end_crystal
scoreboard objectives add BuilderMode minecraft.dropped:minecraft.grass_block
scoreboard objectives add JumpTrigger minecraft.dropped:white_concrete
scoreboard objectives add JumpCheckpoint dummy
scoreboard objectives add ObserverTrigger minecraft.dropped:minecraft.observer
scoreboard objectives add Energies dummy
scoreboard objectives add LightNumber dummy
scoreboard objectives add Border dummy
    scoreboard players set Under Border 1
##XP
scoreboard objectives add xp dummy
scoreboard objectives add xptrigger minecraft.dropped:minecraft.experience_bottle
scoreboard objectives add xptoadd dummy
scoreboard objectives add xpgive minecraft.used:minecraft.experience_bottle

##team
team add AmongUS
    team modify AmongUS nametagVisibility never
team add admin
    team modify admin color aqua
    team modify admin prefix ["",{"text":"[","color":"gold"},{"text":"Admin","color":"light_purple"},{"text":"] ","color":"gold"}]
team add Player {"text":"Player","color":"aqua"}
    team modify Player color white
    team modify Player prefix ["",{"text":"[","color":"dark_aqua"},{"text":"Player","color":"aqua"},{"text":"] ","color":"dark_aqua"}]
team add Builder
    team modify Builder prefix ["",{"text":"[","color":"dark_green"},{"text":"Builder","color":"green"},{"text":"] ","color":"dark_green"}]
team add PropHunt
    team modify Player prefix ["",{"text":"[","color":"gold"},{"text":"PropHunt","color":"yellow"},{"text":"]","color":"gold"}]
team add disconected
team add quickmine
team add quickminescore
    team modify quickminescore color aqua

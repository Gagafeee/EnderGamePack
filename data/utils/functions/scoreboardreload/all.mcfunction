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
    scoreboard players set PHSpawn GamePlayerNumber 0
    scoreboard players set PhForest GamePlayerNumber 0
    scoreboard players set QuickMine GamePlayerNumber 0
scoreboard objectives add GameStats dummy
    scoreboard players set Jump GameStats 0
    scoreboard players set AmongUS GameStats 0
    scoreboard players set PropHunt GameStats 0
    scoreboard players set QuickMine GameStats 0
scoreboard objectives add PlayerMTrigger minecraft.dropped:minecraft.iron_sword
#scoreboard objectives add brickTrigger minecraft.dropped:minecraft.brick
#scoreboard objectives add bedrockTrigger minecraft.dropped:minecraft.bedrock
scoreboard objectives add sneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add GLevelOperator dummy
scoreboard objectives add globalLevel dummy
##UISelect
scoreboard objectives add epearllunch minecraft.used:minecraft.ender_pearl
scoreboard objectives add EndCrystTrigger minecraft.dropped:minecraft.end_crystal
scoreboard objectives add BuilderMode minecraft.dropped:minecraft.grass_block
scoreboard objectives add JumpTrigger dummy
scoreboard objectives add ObserverTrigger minecraft.dropped:minecraft.observer
scoreboard objectives add Energies dummy
scoreboard objectives add LightNumber dummy
scoreboard objectives add Border dummy
    scoreboard players set Under Border 1
##Jump
scoreboard objectives add JumpCheckpoint dummy
scoreboard objectives add JumpPosSaver dummy
scoreboard objectives add JumpReloadTrigger trigger
#Jump Stat module
scoreboard objectives add JSBestCheckpoint dummy
scoreboard objectives add JSFailCount dummy
scoreboard objectives add JSTimer dummy
scoreboard objectives add JSTSecond dummy
##AmongUS
#scoreboard objectives add AmongUSTrigger minecraft.dropped:minecraft.red_concrete
#scoreboard objectives add AmongRandomTeam dummy
#    scoreboard players set max AmongRandomTeam 0
#    scoreboard players set rand AmongRandomTeam 0
#scoreboard objectives add AmongColorIndex dummy
#scoreboard objectives add AmongComponents dummy
#    scoreboard players set Timer AmongComponents 0
#    scoreboard players set Starting AmongComponents 0
#    scoreboard players set Lunched AmongComponents 0
#    scoreboard players set ComponentsView AmongComponents 0
#    scoreboard players set Lobby AmongComponents 1
#    scoreboard players set Camera AmongComponents 0
#scoreboard objectives add AmongTimer dummy
#scoreboard objectives add AmongImposteur dummy
#    scoreboard players set MaxImposteur AmongImposteur 1
#    scoreboard players set DiePlayer AmongImposteur 0
#    scoreboard players set Crewmate AmongImposteur 0
#    scoreboard players set Imposteur AmongImposteur 0
#scoreboard objectives add ACamera dummy
#scoreboard objectives add DispenserTrigger minecraft.dropped:minecraft.dispenser
#scoreboard objectives add ACameraIndex dummy
#    scoreboard players set Max ACameraIndex 1
#scoreboard objectives add ACameraQuit dummy
#scoreboard objectives add ANextCame minecraft.dropped:minecraft.spectral_arrow
#scoreboard objectives add APreviousCame minecraft.dropped:minecraft.arrow
#scoreboard objectives add PlayerHeadGeter minecraft.dropped:minecraft.player_head
#scoreboard objectives add ATask dummy
##PropHunt
scoreboard objectives add PropHuntTrigger dummy
scoreboard objectives add PHModule dummy
scoreboard objectives add PHIsInGame dummy
#timer
scoreboard objectives add PHTimerManager dummy
    scoreboard players set Start PHTimerManager 0
    scoreboard players set ForestWaiting PHTimerManager 0
    scoreboard players set ForestGame PHTimerManager 0
    
scoreboard objectives add PHTStart dummy
    scoreboard players set Second PHTStart 30
scoreboard objectives add PHMaps dummy
    scoreboard players set 0 PHMaps 0
    scoreboard players set 1 PHMaps 0
    scoreboard players set 2 PHMaps 0
    scoreboard players set 3 PHMaps 0
    scoreboard players set 4 PHMaps 0
    scoreboard players set 5 PHMaps 0
scoreboard objectives add PHTForest dummy
    scoreboard players set Waiting PHTForest 0
    scoreboard players set Game PHTForest 0
scoreboard objectives add PHTry dummy
scoreboard objectives add PHtarger dummy
scoreboard objectives add PHFounded dummy
    scoreboard players set Forest PHFounded 0
bossbar add ph_forest ["",{"score":{"name":"Forest","objective":"PHFounded"},"color":"yellow"},{"text":" Joueur ont été trouvé","color":"aqua"}]
bossbar add ph_ocean ["",{"score":{"name":"Ocean","objective":"PHFounded"},"color":"yellow"},{"text":" Joueur ont été trouvé","color":"aqua"}]
#scoreboard objectives add prophuntmodul dummy
#    scoreboard players set Started prophuntmodul 0
#    scoreboard players set selectedmap prophuntmodul 0
#    scoreboard players set mapindex prophuntmodul 0
#    scoreboard players set Timer prophuntmodul 0
#    scoreboard players set Time prophuntmodul 0
#    scoreboard players set devmode prophuntmodul 0
#scoreboard objectives add prophunttimer dummy
#    scoreboard players set timetofind prophunttimer 0
#    scoreboard players set Second prophunttimer 0
#    scoreboard players set Minutes prophunttimer 0
#    scoreboard players set Tick prophunttimer 0
#scoreboard objectives add prophuntkill dummy
#scoreboard objectives add prophuntclick minecraft.used:minecraft:carrot_on_a_stick
#scoreboard objectives add prophuntbloctype dummy
#    scoreboard players set index prophuntbloctype 4
#    scoreboard players set seed prophuntbloctype 0
#    scoreboard players set block prophuntbloctype 0
#    scoreboard players set founded prophuntbloctype 0
#    scoreboard players set try prophuntbloctype 0
#
#QuickMine
scoreboard objectives add QuickMineTrigger dummy
scoreboard objectives add QMModule dummy
    scoreboard players add blocktype QMModule 0
    scoreboard players add blocktypeindex QMModule 1000
scoreboard objectives add QMCopperTrigger minecraft.mined:copper_ore
scoreboard objectives add QMIronTrigger minecraft.mined:iron_ore
scoreboard objectives add QMGoldTrigger minecraft.mined:gold_ore
scoreboard objectives add QMEmeraldTrigger minecraft.mined:emerald_ore
scoreboard objectives add QMDiamondTrigger minecraft.mined:diamond_ore
scoreboard objectives add QMLapisTrigger minecraft.mined:lapis_ore
scoreboard objectives add QMRedstoTrigger minecraft.mined:redstone_ore
scoreboard objectives add QMScore dummy
scoreboard objectives add QMTimer dummy
scoreboard objectives add QMTTick dummy
scoreboard objectives add QMTSecond dummy
scoreboard objectives add QMTMinute dummy
scoreboard objectives add QMScoreSaver dummy
scoreboard objectives add QMScoreOp dummy
scoreboard objectives add QMMob dummy
    scoreboard players set CreeperIndex QMMob 1000
    scoreboard players set Creeper QMMob 0
scoreboard objectives add darkOakDoorTrigger minecraft.dropped:minecraft.dark_oak_door
scoreboard objectives add QMLevelValues dummy
scoreboard objectives add QMLift dummy
scoreboard objectives add QMBatModule dummy
    scoreboard players set actualnumber QMBatModule 0
    scoreboard players set rarity QMBatModule 0
    scoreboard players set raritymax QMBatModule 0
    scoreboard players set spawnmax QMBatModule 1000
    scoreboard players set spawn QMBatModule 0
    scoreboard players set spawnablepoint QMBatModule 0
    scoreboard players set spawnablepointmax QMBatModule 0
#QuickMine StatModule
scoreboard objectives add QMSTotXP dummy
scoreboard objectives add QMSCopper dummy
scoreboard objectives add QMSIron dummy
scoreboard objectives add QMSGold dummy
scoreboard objectives add QMSRedstone dummy
scoreboard objectives add QMSEmerald dummy
scoreboard objectives add QMSDiamond dummy
scoreboard objectives add QMSLapis dummy
scoreboard objectives add QMSPartiNum dummy


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

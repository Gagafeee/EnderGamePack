#QuickMine
scoreboard objectives add QuickMineTrigger minecraft.dropped:minecraft.light_gray_concrete
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
scoreboard objectives add QMLevel dummy
scoreboard objectives add QMZone dummy
scoreboard objectives add darkOakDoorTrigger minecraft.dropped:minecraft.dark_oak_door
scoreboard objectives add QMLevelValues dummy
scoreboard objectives add sneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add QMLift dummy
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add QMBatModule dummy
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
##AmongUS
scoreboard objectives add AmongUSTrigger minecraft.dropped:minecraft.red_concrete
scoreboard objectives add AmongRandomTeam dummy
    scoreboard players set max AmongRandomTeam 0
    scoreboard players set rand AmongRandomTeam 0
scoreboard objectives add AmongColorIndex dummy
scoreboard objectives add AmongComponents dummy
    scoreboard players set Timer AmongComponents 0
    scoreboard players set Starting AmongComponents 0
    scoreboard players set Lunched AmongComponents 0
    scoreboard players set ComponentsView AmongComponents 0
    scoreboard players set Lobby AmongComponents 1
    scoreboard players set Camera AmongComponents 0
scoreboard objectives add AmongTimer dummy
scoreboard objectives add AmongImposteur dummy
    scoreboard players set MaxImposteur AmongImposteur 1
    scoreboard players set DiePlayer AmongImposteur 0
    scoreboard players set Crewmate AmongImposteur 0
    scoreboard players set Imposteur AmongImposteur 0
scoreboard objectives add ACamera dummy
scoreboard objectives add DispenserTrigger minecraft.dropped:minecraft.dispenser
scoreboard objectives add ACameraIndex dummy
    scoreboard players set Max ACameraIndex 1
scoreboard objectives add ACameraQuit dummy
scoreboard objectives add ANextCame minecraft.dropped:minecraft.spectral_arrow
scoreboard objectives add APreviousCame minecraft.dropped:minecraft.arrow
scoreboard objectives add PlayerHeadGeter minecraft.dropped:minecraft.player_head
scoreboard objectives add ATask dummy

##reset scores
scoreboard players reset @a[scores={Location=2}] AmongColorIndex
scoreboard players set Imposteur AmongImposteur 0
scoreboard players set Crewmate AmongImposteur 0
scoreboard players reset @a[scores={Location=2}] AmongImposteur
##Open AmongUS
function amongus:stop
scoreboard players set AmongUS Games 1
##set gameplayernumber
scoreboard players remove AmongUS GamePlayerNumber 0
scoreboard players add AmongUS GamePlayerNumber 1
##set items
execute as @a[scores={Location=2}] run function amongus:amongusreloaditems
##tp amonglobby
scoreboard players set @a[scores={Location=2}] AmongUSTrigger 1
scoreboard players set @a[scores={Location=2}] EmeraldTrigger 1
##set title
title @a times 20 100 20
title @a subtitle {"text":"Not enough player !","color":"red"}
title @a title {"text":"Error","color":"dark_red"}
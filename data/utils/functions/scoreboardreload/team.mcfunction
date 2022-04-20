team add disconected
    team modify disconected color dark_red
    team modify disconected prefix ["",{"text":"[","color":"dark_red"},{"text":"Disconnected","color":"red"},{"text":"] \u0020","color":"dark_red"}]
team add admin
    team modify admin color white
    team modify admin prefix ["",{"text":"[","color":"gold"},{"text":"Admin","color":"light_purple"},{"text":"] ","color":"gold"}]
team add Player {"text":"Player","color":"aqua"}
    team modify Player color white
    team modify Player prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] \u0020","color":"dark_green"}]
team add Builder
    team modify Builder prefix ["",{"text":"[","color":"dark_green"},{"text":"Builder","color":"green"},{"text":"] ","color":"dark_green"}]

team add AmongUS
    team modify AmongUS nametagVisibility never
team add Jump
    team modify Jump prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"Jump","color":"light_purple"},{"text":"] ","color":"dark_aqua"},{"text":" ","color":"dark_green"}]
    team modify Jump collisionRule never
team add PropHunt
    team modify PropHunt prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"PropHunt","color":"green"},{"text":"]","color":"dark_aqua"},{"text":" \u0020","color":"dark_green"}]
    team modify PropHunt collisionRule never
    team modify PropHunt nametagVisibility never
    team modify PropHunt seeFriendlyInvisibles false
team add quickmine
    team modify quickmine prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"]","color":"dark_green"},{"text":" [","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"] ","color":"dark_aqua"}]
team add quickminescore
    team modify quickminescore prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"]","color":"dark_green"},{"text":" [","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"] ","color":"dark_aqua"}]
    team modify quickminescore color aqua
#[Depreciated]  
#team add QML.0
#team add QML.1
#team add QML.2
#team add QML.3
#team add QML.4
#team add QML.5
#team add QML.6
#team add QML.7
#team add QML.8
#
#team add QML.0Score
#team add QML.1Score
#team add QML.2Score
#team add QML.3Score
#team add QML.4Score
#team add QML.5Score
#team add QML.6Score
#team add QML.7Score
#team add QML.8Score
#
#team modify QML.0 prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[0]","color":"gray"},{"text":"]","color":"gold"}]
#team modify QML.1 prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[1]","color":"white"},{"text":"]","color":"gold"}]
#team modify QML.2 prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[2]","color":"aqua"},{"text":"]","color":"gold"}]
#team modify QML.3 prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[3]","color":"blue"},{"text":"]","color":"gold"}]
#team modify QML.4 prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[4]","color":"green"},{"text":"]","color":"gold"}]
#team modify QML.5 prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[5]","color":"yellow"},{"text":"]","color":"gold"}]
#team modify QML.6 prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[6]","color":"gold"},{"text":"]","color":"gold"}]
#team modify QML.7 prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[7]","color":"red"},{"text":"]","color":"gold"}]
#team modify QML.8 prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[8]","color":"light_purple"},{"text":"]","color":"gold"}]
#
#team modify QML.0Score prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[0]","color":"gray"},{"text":"]","color":"gold"}]
#team modify QML.1Score prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[1]","color":"white"},{"text":"]","color":"gold"}]
#team modify QML.2Score prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[2]","color":"aqua"},{"text":"]","color":"gold"}]
#team modify QML.3Score prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[3]","color":"blue"},{"text":"]","color":"gold"}]
#team modify QML.4Score prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[4]","color":"green"},{"text":"]","color":"gold"}]
#team modify QML.5Score prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[5]","color":"yellow"},{"text":"]","color":"gold"}]
#team modify QML.6Score prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[6]","color":"gold"},{"text":"]","color":"gold"}]
#team modify QML.7Score prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[7]","color":"red"},{"text":"]","color":"gold"}]
#team modify QML.8Score prefix ["",{"text":"[","color":"dark_green"},{"text":"Player","color":"green"},{"text":"] ","color":"dark_green"},{"text":"[","color":"dark_aqua"},{"text":"QuickMine","color":"aqua"},{"text":"]","color":"dark_aqua"},{"text":" [","color":"gold"},{"text":"Level:","color":"yellow"},{"text":"LEVEL_NAME[8]","color":"light_purple"},{"text":"]","color":"gold"}]
#team modify QML.0Score color aqua
#team modify QML.1Score color aqua
#team modify QML.2Score color aqua
#team modify QML.3Score color aqua
#team modify QML.4Score color aqua
#team modify QML.5Score color aqua
#team modify QML.6Score color aqua
#team modify QML.7Score color aqua
#team modify QML.8Score color aqua




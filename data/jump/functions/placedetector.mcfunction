#execute in spawn run summon area_effect_cloud -274.5 180 95.5 {Tags:["checkpoint1"],Duration:2147483647}
#execute in spawn run summon area_effect_cloud -223.5 184 82.5 {Tags:["checkpoint2"],Duration:2147483647}
#execute in spawn run summon area_effect_cloud -234.5 178 58.5 {Tags:["checkpoint3"],Duration:2147483647}
#execute in spawn run summon area_effect_cloud -265.5 178 41.5 {Tags:["checkpoint4"],Duration:2147483647}
#execute in spawn run summon area_effect_cloud -303.5 176 41.5 {Tags:["checkpoint5"],Duration:2147483647}
#execute in spawn run summon area_effect_cloud -331.5 180 57.5 {Tags:["checkpoint6"],Duration:2147483647}
tellraw @a[tag=dev] ["",{"text":"##","color":"dark_red"},{"text":" 'placedetector'","color":"aqua"},{"text":" is used but it not allowed","color":"red"},{"text":" e:","color":"light_purple"},{"text":"Java.DepreciatedExeption","color":"gold"}]
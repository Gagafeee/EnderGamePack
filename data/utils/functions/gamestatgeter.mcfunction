##Jump
    ##detection de joueur sur un jeu fermer
    execute as @a[tag=!admin,tag=!builder,scores={Location=1}] if entity @s unless score Jump Games = un number run function utils:spawn
##AmongUS
    #detection du Starting et fermeture du jeu (s'il n'est pas en maintence)
    execute if score Lobby AmongComponents = zero number unless score AmongUS Games = deux number run scoreboard players set AmongUS Games 3
##PropHunt
    #fermeture auto


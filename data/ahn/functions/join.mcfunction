##
 # join.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#hiding the players name (joining team)
team join ahn.hide @s[team=!ahn.hide]
#notifying the player
tellraw @s {"text":"Your name is now hidden!","color":"gold"}
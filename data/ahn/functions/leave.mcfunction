##
 # leave.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#unhiding the name by leaving team
team leave @s
#tagging that the player just left the team
tag @s add ahn.left
#notifying the player
tellraw @s {"text":"Your name is no longer hidden!","color":"gold"}


##
 # autohide.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#joining team to hide name for first time
team join ahn.hide @s
#marking player as having been processed for the first time
tag @s add ahn.processed
#setting trigger of this player to 0
scoreboard players set @s autohide.change_visibility 0
#notifying the player that their name is hidden now
tellraw @s {"text":"Your name is now hidden!","color":"gold"}
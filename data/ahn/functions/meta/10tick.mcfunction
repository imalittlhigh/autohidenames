##
 # tick.mcfunction
 # 
 #
 # Created by imalittlhigh
##
#recalling this
schedule function ahn:meta/10tick 10t

#hiding name if player hasent been processed by this pack
execute as @a[tag=!ahn.processed] run function ahn:autohide
#leaving team if player is in team and triggers the hide trigger
execute as @a[team=ahn.hide] unless score @s autohide.change_visibility matches 0 run function ahn:leave
#joining team if player is not in team and triggers hide trigger (if hasent left tream in this tick)
execute as @a[team=!ahn.hide,tag=!ahn.left] unless score @s autohide.change_visibility matches 0 run function ahn:join

#resetting the trigger for all players that triggered it
execute as @a unless score @s autohide.change_visibility matches 0 run scoreboard players set @s autohide.change_visibility 0
#removing the note that the player left the team this tick
tag @a remove ahn.left
#re-enableing the trigger for all players
scoreboard players enable @a autohide.change_visibility

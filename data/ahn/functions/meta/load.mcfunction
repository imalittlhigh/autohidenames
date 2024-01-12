##
 # load.mcfunction
 # 
 #
 # Created by imalittlhigh
##
#calling 10 tick function
function ahn:meta/10tick

#adding team to hide nameplate
team add ahn.hide
#setting team nameplate to be invisible
team modify ahn.hide nametagVisibility never

#adding scoreboard trigger to change visibility
scoreboard objectives add autohide.change_visibility trigger
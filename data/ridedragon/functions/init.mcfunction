#
# Description:  Create scoreboards
# Called by:    #main:init
# Entity @s:    None
#
# Create scoreboards
#
scoreboard objectives add rd_summon trigger
scoreboard objectives add rd_vanish trigger
#
# Resets triggers on reload
#
scoreboard players enable * rd_summon
scoreboard players enable * rd_vanish
#


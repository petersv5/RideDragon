#
# Description:  Create scoreboards
# Called by:    #main:init
# Entity @s:    None
#
# Create scoreboards
#
scoreboard objectives add rd_help trigger
scoreboard objectives add rd_summon trigger
scoreboard objectives add rd_vanish trigger
scoreboard objectives add rd_silence trigger
scoreboard objectives add rd_id dummy
# Cooldown timer per dragon, not player
scoreboard objectives add rd_fire_cooldown dummy

#
# Resets triggers on reload
# Also rerun in the z_enable repeating function
#
scoreboard players enable * rd_help
scoreboard players enable * rd_summon
scoreboard players enable * rd_vanish
scoreboard players enable * rd_silence
#

#
# Sets storage settings
#
execute unless data storage ridedragon:settings rd_admin.book_help run data modify storage ridedragon:settings rd_admin.book_help set value "Disabled"
execute unless data storage ridedragon:settings rd_admin.can_summon run data modify storage ridedragon:settings rd_admin.can_summon set value "Disabled"
execute unless data storage ridedragon:settings rd_admin.summon_without_book run data modify storage ridedragon:settings rd_admin.summon_without_book set value "Disabled"
execute unless data storage ridedragon:settings rd_admin.can_fire run data modify storage ridedragon:settings rd_admin.can_fire set value "Disabled"
execute unless data storage ridedragon:settings rd_admin.dragon_health run data modify storage ridedragon:settings rd_admin.dragon_health set value 5

# Schedule function to remove orphaned dragon components every 1 seconds (use a prime number of ticks)
schedule function ridedragon:z_dragon_cleanup 23t

# Schedule function to enable the scoreboard objectives for all players every 4 seconds (use a prime number of ticks)
schedule function ridedragon:z_enable 83t

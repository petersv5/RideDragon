# Extraction looking direction to compute motion for the fireball. Inspired by
# https://www.reddit.com/r/MinecraftCommands/wiki/questions/shootfacing/

# this function is executed as the marker entity, positioned at 0 0 0 and still rotated as the player
# (as that wasn't changed with the function call)

# teleport the entity forward by 0.2 block (based on the player rotation and the position 0 0 0).
# this will form the "acceleration_power" of the dragon fireball
tp @s ^ ^ ^0.1

# store the current position in the worlds NBT storage so we don't loose it
data modify storage ridedragon:tmp Motion set from entity @s Pos

# teleport the entity forward by another 0.6 block
# this will form the "motion" (direction) of the dragon fireball
tp @s ^ ^ ^0.6

# store the current position in the worlds NBT storage so we don't loose it
data modify storage ridedragon:tmp Motion2 set from entity @s Pos

# we don't need this entity anymore
kill @s

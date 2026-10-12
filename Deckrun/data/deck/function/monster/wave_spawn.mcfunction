# Spawn one wave of mobs around the player
# Run as/at the player
# Spawns 8-15 mobs in a 96-block radius around player

# Roll a wave size of 8-15
execute store result score #wave_size deck.temp run random value 8..15
function deck:monster/pick_spawn


# Spawn that many mobs

# Temporary solution - Spawn zombies as test

# Summon zombies at random positions in 96-block radius around player



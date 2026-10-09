# Random offset within 48 blocks of the player
execute store result storage deck:mob dx int 1 run random value -48..48
execute store result storage deck:mob dz int 1 run random value -48..48
function deck:monster/summon_zombie with storage deck:mob

# Repeat until the wave is full
scoreboard players remove #wave_size deck.temp 1
execute if score #wave_size deck.temp matches 1.. run function deck:monster/spawn_one_loop


# Pick a random marker in the forest list and a random offset from it


# One spawn try at a random forest marker
scoreboard players set #n deck.temp 0

execute store result score #n deck.temp run data get storage deck:zones forest

execute if score #n deck.temp matches 1.. store result score #pick deck.temp run random value 0..999
execute if score #n deck.temp matches 1.. run scoreboard players operation #pick deck.temp %= #n deck.temp
execute if score #n deck.temp matches 1.. store result storage deck:mob idx int 1 run scoreboard players get #pick deck.temp
execute if score #n deck.temp matches 1.. store result storage deck:mob dx int 1 run random value -6..6
execute if score #n deck.temp matches 1.. store result storage deck:mob dz int 1 run random value -6..6
execute if score #n deck.temp matches 1.. run function deck:monster/copy_marker with storage deck:mob

# Loop until the wave is used up
scoreboard players remove #wave_size deck.temp 1
execute if score #wave_size deck.temp matches 1.. run function deck:monster/pick_spawn
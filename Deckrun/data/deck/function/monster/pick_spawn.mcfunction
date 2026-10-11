# Pick a random marker in the forest list and a random offset from it
execute store result score #n deck.temp run data get storage deck:zones forest

execute if score #n deck.temp matches 1.. store result score #pick deck.temp run random value 0..999

execute if score #n deck.temp matches 1.. run scoreboard players operation #pick deck.temp %= #n deck.temp

execute if score #n deck.temp matches 1.. store result storage deck:mob idx int 1 run scoreboard players get #pick deck.temp
execute if score #n deck.temp matches 1.. store result storage deck:mob dx int 1 run random value -6..6
execute if score #n deck.temp matches 1.. store result storage deck:mob dz int 1 run random value -6..6

execute if score #n deck.temp matches 1.. run function deck:monster/copy_marker with storage deck:mob


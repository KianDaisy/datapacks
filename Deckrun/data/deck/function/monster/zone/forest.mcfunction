# Forest Pool, weighted roll: zombie 40, skeleton 25, creeper 20, spider 15

# Runs at the valid spot (~ ~ ~ is the mobs position)
scoreboard players set #roll deck.temp 0


execute store result score #roll deck.temp run random value 0..99


#execute if score #roll deck.temp matches ..100 run summon zombie ~ ~ ~ {Tags:["deck.mob","deck.zone_forest"],PersistenceRequired:1b,Attributes:[{id:"minecraft:spawn_reinforcements",base:0d},{id:"minecraft:follow_range",base:16d}]}

execute if score #roll deck.temp matches ..39 run summon zombie ~ ~ ~ {Tags:["deck.mob","deck.zone_forest"],PersistenceRequired:1b,Attributes:[{id:"minecraft:spawn_reinforcements",base:0d},{id:"minecraft:follow_range",base:16d}]}

execute if score #roll deck.temp matches 40..64 run summon skeleton ~ ~ ~ {Tags:["deck.mob","deck.zone_forest"],PersistenceRequired:1b,Attributes:[{id:"minecraft:spawn_reinforcements",base:0d},{id:"minecraft:follow_range",base:16d}]}

execute if score #roll deck.temp matches 65..84 run summon creeper ~ ~ ~ {Tags:["deck.mob","deck.zone_forest"],PersistenceRequired:1b,Attributes:[{id:"minecraft:spawn_reinforcements",base:0d},{id:"minecraft:follow_range",base:16d}]}

execute if score #roll deck.temp matches 85..99 run summon spider ~ ~ ~ {Tags:["deck.mob","deck.zone_forest"],PersistenceRequired:1b,Attributes:[{id:"minecraft:spawn_reinforcements",base:0d},{id:"minecraft:follow_range",base:16d}]}


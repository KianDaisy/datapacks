# Spawn one wave of mobs around the player
# Run as/at the player
# Spawns 8-15 mobs in a 96-block radius around player

# Randomize wave size (8-15 mobs)
execute store result score #wave_size deck.temp run random value 8..15

# Spawn that many mobs

# Temporary solution - Spawn zombies as test

# Summonz at random positions in 96-block radius around player



execute if score #wave_size deck.temp matches 1 run summon zombie ~0 ~ ~0 {Tags:["deck.mob","deck.zone_undead"],Health:20f,Attributes:[{Name:"generic.max_health",Base:20}]}

execute if score #wave_size deck.temp matches 2.. run summon zombie ~50 ~ ~50 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size deck.temp matches 3.. run summon zombie ~-45 ~ ~30 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size deck.temp matches 4.. run summon zombie ~35 ~ ~-40 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size deck.temp matches 5.. run summon zombie ~-60 ~ ~0 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size desk.temp matches 6.. run summon zombie ~20 ~ ~-60 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size deck.temp matches 7.. run summon zombie ~-30 ~ ~-45 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size deck.temp matches 8.. run summon zombie ~60 ~ ~-20 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size deck.temp matches 9.. run summon zombie ~-50 ~ ~50 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size deck.temp matches 10.. run summon zombie ~40 ~ ~60 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size deck.temp matches 11.. run summon zombie ~-70 ~ ~-30 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size deck.temp matches 12.. run summon zombie ~15 ~ ~70 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size deck.temp matches 13.. run summon zombie ~-25 ~ ~60 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size deck.temp matches 14.. run summon zombie ~55 ~ ~35 {Tags:["deck.mob","deck.zone_undead"],Health:20f}
execute if score #wave_size deck.temp matches 15.. run summon zombie ~-55 ~ ~-60 {Tags:["deck.mob","deck.zone_undead"],Health:20f}


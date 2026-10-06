# Passive energy regen. Runs every tick as each player.
# 40 ticks = 2 seconds per energy. Max energy = 10.

# At full energy, keep the timer at 0 and stop
execute if score @s deck.energy matches 10.. run scoreboard players set @s deck.regen_timer 0
execute if score @s deck.energy matches 10.. run return 0

# Count up, and when the timer hits 40 give 1 energy and reset it
scoreboard players add @s deck.regen_timer 1
execute if score @s deck.regen_timer matches 40.. run scoreboard players add @s deck.energy 1
execute if score @s deck.regen_timer matches 40.. run scoreboard players set @s deck.regen_timer 0
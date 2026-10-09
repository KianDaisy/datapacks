tellraw @a {"text":"[Deckrun] Pack loaded", "color":"green"}
# scoreboard objectives add deck.energy dummy

scoreboard objectives add deck.use_card minecraft.used:minecraft.carrot_on_a_stick

# For regen.mcfunction
scoreboard objectives add deck.regen_timer dummy



# --- Run State ---
scoreboard objectives add deck.state dummy
scoreboard objectives add deck.dread dummy
scoreboard objectives add deck.heat dummy
scoreboard objectives add deck.timer dummy
scoreboard objectives add deck.temp dummy


# --- Resources ---
scoreboard objectives add deck.fury dummy
scoreboard objectives add deck.focus dummy
scoreboard objectives add deck.greed dummy


# --- Monster System ---
scoreboard objectives add deck.mob_id dummy
scoreboard objectives add deck.mob_heat dummy
scoreboard objectives add deck.mob_alert dummy
scoreboard objectives add deck.spawn_count dummy

scoreboard objectives add deck.wave_timer dummy

# mob_id - Unique ID for each spawned mob (for tracking);
# mob_heat - How alerted this specific mob is
# mob_alert - Whether mob has seen the player (0 = not alerted, 1 = alerted) 
# spawn_count - How many mobs spawn per tier


# --- Zone System ---
scoreboard objectives add deck.zone_id dummy
scoreboard objectives add deck.zone_type dummy

# deck.zone_id - Which zone a spawn point is in
# deck.loot_tier - What rarity to drop (scales with Dread)


# --- Loot System ---
scoreboard objectives add deck.loot_tier dummy


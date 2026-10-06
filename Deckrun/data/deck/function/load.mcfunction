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

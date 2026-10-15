# Main tick: runs every game tick (called by tick.json)

# Card click detection
execute as @a[scores={deck.use_card=1..}] at @s run function deck:card/use

# Run state (only while a run is active)
execute if score #run deck.state matches 1 run function deck:state/tick
execute as @a run function deck:resource/clamp

execute if score #run deck.state matches 1 run function deck:state/count


# HUD
execute as @a run function deck:hud
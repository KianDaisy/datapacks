# Fireball: free to play, the price is Heat

# Stage 1: Spend the card (hand -> discard pile)
clear @s minecraft:carrot_on_a_stick[custom_data~{card_id:"fireball"}] 1
data modify storage deck:run discard append value "fireball"

# Stage 2: Pay in Heat and announce
scoreboard players add @s deck.heat 10
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1

# Stage 3: Effect
tag @s add deck.caster
execute anchored eyes positioned ^ ^ ^3 run particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.05 40
execute anchored eyes positioned ^ ^ ^3 as @e[type=!player,distance=..3] run damage @s 4 minecraft:on_fire by @p[tag=deck.caster]
tag @s remove deck.caster
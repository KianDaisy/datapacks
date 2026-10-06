# Blizzard: free to play, the price is Heat

# Stage 1: Spend the card (hand -> discard pile)
clear @s minecraft:carrot_on_a_stick[custom_data~{card_id:"blizzard"}] 1
data modify storage deck:run discard append value "blizzard"

# Stage 2: Pay in Heat and announce
scoreboard players add @s deck.heat 15
playsound minecraft:entity.breeze.idle_air player @a ~ ~ ~ 1 1

# Stage 3: Effect (3 blocks ahead, radius 3)
tag @s add deck.caster
execute anchored eyes positioned ^ ^ ^3 run particle minecraft:snowflake ~ ~ ~ 0.5 0.5 0.5 0.05 40
execute anchored eyes positioned ^ ^ ^3 as @e[type=!player,distance=..3] run data modify entity @s TicksFrozen set value 540
execute anchored eyes positioned ^ ^ ^3 as @e[type=!player,distance=..3] run damage @s 4 minecraft:freeze by @p[tag=deck.caster]
execute anchored eyes positioned ^ ^ ^3 as @e[type=!player,distance=..3] run effect give @s minecraft:slowness 10 3
tag @s remove deck.caster
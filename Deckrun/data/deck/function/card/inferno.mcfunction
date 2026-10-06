# Inferno: Cost 3 Fury. Big fire damage in a wide area.

# Stage 1: Check the cost (the card is NOT spent if you can't pay)
execute unless score @s deck.fury matches 3.. run title @s subtitle {text:"Need 3 Fury",color:"red"}
execute unless score @s deck.fury matches 3.. run title @s title {text:""}
execute unless score @s deck.fury matches 3.. run return 0

# Stage 2: Pay and spend the card
scoreboard players remove @s deck.fury 3
clear @s minecraft:carrot_on_a_stick[custom_data~{card_id:"inferno"}] 1
data modify storage deck:run discard append value "inferno"
scoreboard players add @s deck.heat 20
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.8

# Stage 3: Effect (4 blocks ahead, radius 4)
tag @s add deck.caster
execute anchored eyes positioned ^ ^ ^4 run particle minecraft:flame ~ ~ ~ 1 0.5 1 0.1 80
execute anchored eyes positioned ^ ^ ^4 run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
execute anchored eyes positioned ^ ^ ^4 as @e[type=!player,distance=..4] run damage @s 14 minecraft:on_fire by @p[tag=deck.caster]
tag @s remove deck.caster
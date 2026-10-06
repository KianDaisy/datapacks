# Rile Up: generator. Gain 2 Fury. Free to play.

# Spend the card (hand -> discard pile)
clear @s minecraft:carrot_on_a_stick[custom_data~{card_id:"rile_up"}] 1
data modify storage deck:run discard append value "rile_up"

# Effect
scoreboard players add @s deck.fury 2
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.6 1.5
particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.02 15
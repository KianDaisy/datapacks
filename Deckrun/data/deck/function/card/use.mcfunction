scoreboard players set @s deck.use_card 0

# Maps Card Item to Card function

execute if items entity @s weapon.mainhand *[custom_data~{card_id:"fireball"}] run function deck:card/fireball
execute if items entity @s weapon.mainhand *[custom_data~{card_id:"blizzard"}] run function deck:card/blizzard
execute if items entity @s weapon.mainhand *[custom_data~{card_id:"rile_up"}] run function deck:card/rile_up
execute if items entity @s weapon.mainhand *[custom_data~{card_id:"inferno"}] run function deck:card/inferno

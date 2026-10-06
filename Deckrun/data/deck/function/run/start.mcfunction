# Reset the run: build a starter deck, empty hand and discard
data modify storage deck:run deck set value ["blizzard","rile_up","rile_up","inferno","fireball","blizzard","rile_up","inferno","fireball"]
data modify storage deck:run hand set value []
data modify storage deck:run discard set value []
tellraw @s {text:"Run started. Deck ready.",color:"green"}


# Run State: 1 = run active
scoreboard players set #run deck.state 1
scoreboard players set #run deck.dread 0
scoreboard players set #run deck.timer 0
scoreboard players set #heat deck.timer 0
scoreboard players set @a deck.heat 0


# Dread boss bar
bossbar add deck:dread {text:"Dread"}
bossbar set deck:dread players @a
bossbar set deck:dread max 100
bossbar set deck:dread style notched_10

clear @a minecraft:carrot_on_a_stick

scoreboard players set #draw deck.timer 0

# Resources
scoreboard players set @a deck.fury 0
scoreboard players set @a deck.focus 0
scoreboard players set @a deck.greed 0
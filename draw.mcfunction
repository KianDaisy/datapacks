# Draw one card: deck -> a hotbar slot (or burned if all 5 card slots are full).
# Card slots are hotbar.0 to hotbar.4 (hotbar slots 1-5). Run as the player.

# Stop if the deck is empty
execute unless data storage deck:run deck[0] run tellraw @s {text:"Your deck is empty!",color:"red"}
execute unless data storage deck:run deck[0] run return 0

# Take the top card off the deck
data modify storage deck:run drawn set from storage deck:run deck[0]
data remove storage deck:run deck[0]

# Find the first empty card slot (-1 = none, so the hand is full)
# Card slots are hotbar.4 to hotbar.8 (hotbar slots 5-9)

scoreboard players set #slot deck.temp -1

execute if score #slot deck.temp matches -1 unless items entity @s hotbar.4 * run scoreboard players set #slot deck.temp 4
execute if score #slot deck.temp matches -1 unless items entity @s hotbar.5 * run scoreboard players set #slot deck.temp 5
execute if score #slot deck.temp matches -1 unless items entity @s hotbar.6 * run scoreboard players set #slot deck.temp 6
execute if score #slot deck.temp matches -1 unless items entity @s hotbar.7 * run scoreboard players set #slot deck.temp 7
execute if score #slot deck.temp matches -1 unless items entity @s hotbar.8 * run scoreboard players set #slot deck.temp 8

# No empty slot: burn the card
execute if score #slot deck.temp matches -1 run data modify storage deck:run discard append from storage deck:run drawn
execute if score #slot deck.temp matches -1 run tellraw @s {text:"Hand full! Card burned.",color:"red"}
execute if score #slot deck.temp matches -1 run playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 1 1
execute if score #slot deck.temp matches -1 run return 0

# Otherwise place the card in that slot (the macro uses the id and slot)
data modify storage deck:run args set value {}
data modify storage deck:run args.id set from storage deck:run drawn
execute store result storage deck:run args.slot int 1 run scoreboard players get #slot deck.temp
function deck:run/give_drawn with storage deck:run args
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1
tellraw @s [{text:"Drew: ",color:"gray"},{nbt:"drawn",storage:"deck:run"}]
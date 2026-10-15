# Count deployed players each tick. Used by spawn scaling and Dread

scoreboard players set #deployed deck.temp 0
execute store result score #deployed deck.temp if entity @a[scores={deck.pstate=1}]


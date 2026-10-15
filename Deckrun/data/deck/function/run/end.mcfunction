# End the run: stop state updates and hide the boss bar
scoreboard players set #run deck.state 0
bossbar remove deck:dread

# Return everyone to camp and clear the party count
execute as @a run scoreboard players set @s deck.pstate 0
scoreboard players set #party deck.party 0



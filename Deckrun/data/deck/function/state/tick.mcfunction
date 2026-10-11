# Runs every tick while a run is active (#run deck.state = 1)

# Dread: +1 every 10 seconds, capped at 100
scoreboard players add #run deck.timer 1
execute if score #run deck.timer matches 200.. run scoreboard players add #run deck.dread 1
execute if score #run deck.timer matches 200.. run scoreboard players set #run deck.timer 0
execute if score #run deck.dread matches 100.. run scoreboard players set #run deck.dread 100

# Boss bar value and color by tier
execute store result bossbar deck:dread value run scoreboard players get #run deck.dread
bossbar set deck:dread color white
execute if score #run deck.dread matches 25.. run bossbar set deck:dread color yellow
execute if score #run deck.dread matches 50.. run bossbar set deck:dread color red
execute if score #run deck.dread matches 75.. run bossbar set deck:dread color purple

# Heat: every second, every player cools down by 1
scoreboard players add #heat deck.timer 1
execute if score #heat deck.timer matches 20.. as @a[scores={deck.heat=1..}] run scoreboard players remove @s deck.heat 1
execute if score #heat deck.timer matches 20.. run scoreboard players set #heat deck.timer 0

# Draw timer: every 20 seconds (400 ticks) every player draws a card
scoreboard players add #draw deck.timer 1
execute if score #draw deck.timer matches 400.. as @a run function deck:run/draw
execute if score #draw deck.timer matches 400.. run scoreboard players set #draw deck.timer 0


# Wave spawn timer: spawn new mob waves every 1200 ticks (60 seconds)
scoreboard players add #wave_timer deck.timer 1
execute if score #wave_timer deck.timer matches 1200.. run function deck:monster/wave_spawn
execute if score #wave_timer deck.timer matches 1200.. run scoreboard players set #wave_timer deck.timer 0

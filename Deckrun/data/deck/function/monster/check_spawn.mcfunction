# Floor under the spot, two free blocks above it, open roof at +3,
# no player within 12 blocks, and at least one player within 64 blocks
$execute positioned $(x) $(y) $(z) positioned ~$(dx) ~ ~$(dz) if block ~ ~-1 ~ #deck:spawn_floor if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable if block ~ ~3 ~ #minecraft:replaceable unless entity @a[distance=..12] if entity @a[distance=..64] run summon zombie ~ ~ ~ {Tags:["deck.mob","deck.zone_forest"],Attributes:[{id:"minecraft:spawn_reinforcements",base:0d}]}

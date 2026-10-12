# Usage: /function deck:monster/marker_add {"zone:"zone_name"}
# Example usage: /function deck:monster/marker_add {"zone":"forest"}

$data modify storage deck:zones $(zone) append value {x:0d,y:0d,z:0d}
$execute store result storage deck:zones $(zone)[-1].x double 1 run data get entity @s Pos[0]
$execute store result storage deck:zones $(zone)[-1].y double 1 run data get entity @s Pos[1]
$execute store result storage deck:zones $(zone)[-1].z double 1 run data get entity @s Pos[2]


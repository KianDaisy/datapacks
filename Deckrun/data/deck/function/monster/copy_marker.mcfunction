$data modify storage deck:mob x set from storage deck:zones forest[$(idx)].x
$data modify storage deck:mob y set from storage deck:zones forest[$(idx)].y
$data modify storage deck:mob z set from storage deck:zones forest[$(idx)].z
function deck:monster/check_spawn with storage deck:mob


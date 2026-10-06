# The only function that writes to the actionbar. Run as each player.
execute store result score #deck deck.temp run data get storage deck:run deck

# Seconds until the next draw (rounded up)
scoreboard players set #left deck.temp 419
scoreboard players operation #left deck.temp -= #draw deck.timer
scoreboard players set #20 deck.temp 20
scoreboard players operation #left deck.temp /= #20 deck.temp

title @s actionbar [{text:"Deck ",color:"gray"},{score:{name:"#deck",objective:"deck.temp"},color:"white"},{text:"   Next ",color:"gray"},{score:{name:"#left",objective:"deck.temp"},color:"white"},{text:"s",color:"white"},{text:"   Heat ",color:"gold"},{score:{name:"@s",objective:"deck.heat"},color:"white"},{text:"     Fury ",color:"red"},{score:{name:"@s",objective:"deck.fury"},color:"white"},{text:"   Focus ",color:"aqua"},{score:{name:"@s",objective:"deck.focus"},color:"white"},{text:"   Greed ",color:"green"},{score:{name:"@s",objective:"deck.greed"},color:"white"}]


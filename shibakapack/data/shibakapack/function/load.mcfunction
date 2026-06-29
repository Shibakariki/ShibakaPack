# DeathCounter
scoreboard objectives add Infos dummy [{"text":"✎ Infos ✎","color":"gold","bold":true}]
scoreboard objectives add DeathDetect deathCount

scoreboard objectives add Deaths dummy
scoreboard objectives add DeathsPrev dummy

scoreboard objectives add PlayTime minecraft.custom:minecraft.play_time
scoreboard objectives add PlayMinutes dummy
scoreboard objectives add PlayHours dummy
scoreboard objectives add PlayHoursTemp dummy
scoreboard objectives add tick dummy

scoreboard objectives add Constantes dummy
scoreboard players set #20TPS Constantes 20
scoreboard players set #60 Constantes 60
scoreboard players set #timer tick 0

scoreboard objectives setdisplay sidebar Infos


# Home
scoreboard objectives add homeOpenSetDialog trigger
scoreboard objectives add homeSetIndex trigger
scoreboard objectives add homeTpIndex trigger
scoreboard objectives add homeDeleteIndex trigger
scoreboard objectives add homeSetMain trigger
scoreboard objectives add homeTpMain trigger
scoreboard objectives add homeList trigger
scoreboard objectives add listCounter dummy
# Change score to change the max slot number
scoreboard players set #max_slot listCounter 5 

scoreboard objectives add homeOpenRenameDialog trigger
scoreboard objectives add homeOpenRenameGive trigger
scoreboard objectives add homeRenameConfirm trigger
scoreboard objectives add homeRenamePending dummy
scoreboard objectives add homeWaitingRename dummy



tellraw @a [{"text":"[ShibakaPack] ","color":"green"},{"text":"Datapack was loaded successfully!","color":"white"}]
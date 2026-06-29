scoreboard players add #timer tick 1
execute if score #timer tick matches 20 as @a run function shibakapack:update
execute if score #timer tick matches 20 run scoreboard players set #timer tick 0

# Module deathcounter
execute if score #deathcounter config matches 1 as @a if score @s DeathDetect > @s DeathsPrev run function shibakapack:on_death
execute if score #deathcounter config matches 1 as @a run scoreboard players operation @s DeathsPrev = @s DeathDetect
execute if score #deathcounter config matches 0 run scoreboard objectives setdisplay sidebar
execute if score #deathcounter config matches 1 run scoreboard objectives setdisplay sidebar Infos

# Module homes — nettoyage si désactivé
execute if score #homes config matches 0 as @a run scoreboard players set @s homeList 0
execute if score #homes config matches 0 as @a run scoreboard players set @s homeOpenSetDialog 0
execute if score #homes config matches 0 as @a run scoreboard players set @s homeSetIndex 0
execute if score #homes config matches 0 as @a run scoreboard players set @s homeDeleteIndex 0
execute if score #homes config matches 0 as @a run scoreboard players set @s homeTpIndex 0
execute if score #homes config matches 0 as @a run scoreboard players set @s homeTpMain 0
execute if score #homes config matches 0 as @a run scoreboard players set @s homeSetMain 0
execute if score #homes config matches 0 as @a run scoreboard players set @s homeOpenRenameDialog 0
execute if score #homes config matches 0 as @a run scoreboard players set @s homeOpenRenameGive 0
execute if score #homes config matches 0 as @a run scoreboard players set @s homeRenameConfirm 0
execute if score #homes config matches 0 as @a run scoreboard players set @s homeWaitingRename 0

# Module homes — actif
execute if score #homes config matches 1 run scoreboard players enable @a listCounter

execute if score #homes config matches 1 run scoreboard players enable @a homeList
execute if score #homes config matches 1 as @a if score @s homeList matches 1.. run function shibakapack:home/list
execute if score #homes config matches 1 as @a if score @s homeList matches 1.. run scoreboard players set @s homeList 0

execute if score #homes config matches 1 run scoreboard players enable @a homeOpenSetDialog
execute if score #homes config matches 1 as @a if score @s homeOpenSetDialog matches 1.. run function shibakapack:home/open_set_dialog
execute if score #homes config matches 1 as @a if score @s homeOpenSetDialog matches 1.. run scoreboard players set @s homeOpenSetDialog 0

execute if score #homes config matches 1 run scoreboard players enable @a homeSetIndex
execute if score #homes config matches 1 as @a if score @s homeSetIndex matches 1.. run function shibakapack:home/set
execute if score #homes config matches 1 as @a if score @s homeSetIndex matches 1.. run scoreboard players set @s homeSetIndex 0

execute if score #homes config matches 1 run scoreboard players enable @a homeDeleteIndex
execute if score #homes config matches 1 as @a if score @s homeDeleteIndex matches 1.. run function shibakapack:home/delete
execute if score #homes config matches 1 as @a if score @s homeDeleteIndex matches 1.. run scoreboard players set @s homeDeleteIndex 0

execute if score #homes config matches 1 run scoreboard players enable @a homeTpIndex
execute if score #homes config matches 1 as @a if score @s homeTpIndex matches 1.. run function shibakapack:home/tp
execute if score #homes config matches 1 as @a if score @s homeTpIndex matches 1.. run scoreboard players set @s homeTpIndex 0

execute if score #homes config matches 1 run scoreboard players enable @a homeTpMain
execute if score #homes config matches 1 as @a if score @s homeTpMain matches 1.. run function shibakapack:home/tp_main
execute if score #homes config matches 1 as @a if score @s homeTpMain matches 1.. run scoreboard players set @s homeTpMain 0

execute if score #homes config matches 1 run scoreboard players enable @a homeSetMain
execute if score #homes config matches 1 as @a if score @s homeSetMain matches 1.. run function shibakapack:home/set_main
execute if score #homes config matches 1 as @a if score @s homeSetMain matches 1.. run scoreboard players set @s homeSetMain 0

execute if score #homes config matches 1 run scoreboard players enable @a homeOpenRenameDialog
execute if score #homes config matches 1 as @a if score @s homeOpenRenameDialog matches 1.. run function shibakapack:home/open_rename_dialog
execute if score #homes config matches 1 as @a if score @s homeOpenRenameDialog matches 1.. run scoreboard players set @s homeOpenRenameDialog 0

execute if score #homes config matches 1 run scoreboard players enable @a homeOpenRenameGive
execute if score #homes config matches 1 as @a if score @s homeOpenRenameGive matches 1.. run function shibakapack:home/rename_give
execute if score #homes config matches 1 as @a if score @s homeOpenRenameGive matches 1.. run scoreboard players operation @s homeRenamePending = @s homeOpenRenameGive
execute if score #homes config matches 1 as @a if score @s homeOpenRenameGive matches 1.. run scoreboard players set @s homeOpenRenameGive 0

execute if score #homes config matches 1 run scoreboard players enable @a homeRenameConfirm
execute if score #homes config matches 1 as @a if score @s homeWaitingRename matches 1 if score @s homeRenameConfirm matches 1.. run function shibakapack:home/rename
execute if score #homes config matches 1 as @a if score @s homeWaitingRename matches 1 if score @s homeRenameConfirm matches 1.. run scoreboard players set @s homeRenameConfirm 0
execute if score #homes config matches 1 as @a if score @s homeWaitingRename matches 1 if score @s homeRenameConfirm matches 1.. run scoreboard players set @s homeWaitingRename 0
scoreboard players add #timer tick 1
execute if score #timer tick matches 20 as @a run function shibakapack:update
execute if score #timer tick matches 20 run scoreboard players set #timer tick 0

execute as @a if score @s DeathDetect > @s DeathsPrev run function shibakapack:on_death
execute as @a run scoreboard players operation @s DeathsPrev = @s DeathDetect

scoreboard players enable @a listCounter

scoreboard players enable @a homeList
execute as @a if score @s homeList matches 1.. run function shibakapack:home/list
execute as @a if score @s homeList matches 1.. run scoreboard players set @s homeList 0

scoreboard players enable @a homeOpenSetDialog
execute as @a if score @s homeOpenSetDialog matches 1.. run function shibakapack:home/open_set_dialog
execute as @a if score @s homeOpenSetDialog matches 1.. run scoreboard players set @s homeOpenSetDialog 0

scoreboard players enable @a homeSetIndex
execute as @a if score @s homeSetIndex matches 1.. run function shibakapack:home/set
execute as @a if score @s homeSetIndex matches 1.. run scoreboard players set @s homeSetIndex 0

scoreboard players enable @a homeDeleteIndex
execute as @a if score @s homeTpIndex matches 1.. run function shibakapack:home/tp
execute as @a if score @s homeTpIndex matches 1.. run scoreboard players set @s homeTpIndex 0

scoreboard players enable @a homeTpMain
execute as @a if score @s homeTpMain matches 1.. run function shibakapack:home/tp_main
execute as @a if score @s homeTpMain matches 1.. run scoreboard players set @s homeTpMain 0

scoreboard players enable @a homeSetMain
execute as @a if score @s homeSetMain matches 1.. run function shibakapack:home/set_main
execute as @a if score @s homeSetMain matches 1.. run scoreboard players set @s homeSetMain 0

scoreboard players enable @a homeTpIndex
execute as @a if score @s homeDeleteIndex matches 1.. run function shibakapack:home/delete
execute as @a if score @s homeDeleteIndex matches 1.. run scoreboard players set @s homeDeleteIndex 0

scoreboard players enable @a homeOpenRenameDialog
execute as @a if score @s homeOpenRenameDialog matches 1.. run function shibakapack:home/open_rename_dialog
execute as @a if score @s homeOpenRenameDialog matches 1.. run scoreboard players set @s homeOpenRenameDialog 0

scoreboard players enable @a homeOpenRenameGive
execute as @a if score @s homeOpenRenameGive matches 1.. run function shibakapack:home/rename_give
execute as @a if score @s homeOpenRenameGive matches 1.. run scoreboard players operation @s homeRenamePending = @s homeOpenRenameGive
execute as @a if score @s homeOpenRenameGive matches 1.. run scoreboard players set @s homeOpenRenameGive 0

scoreboard players enable @a homeRenameConfirm
execute as @a if score @s homeWaitingRename matches 1 if score @s homeRenameConfirm matches 1.. run function shibakapack:home/rename
execute as @a if score @s homeWaitingRename matches 1 if score @s homeRenameConfirm matches 1.. run scoreboard players set @s homeRenameConfirm 0
execute as @a if score @s homeWaitingRename matches 1 if score @s homeRenameConfirm matches 1.. run scoreboard players set @s homeWaitingRename 0
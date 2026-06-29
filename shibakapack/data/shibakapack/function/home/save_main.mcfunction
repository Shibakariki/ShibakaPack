execute store result storage shibakapack:global_home home.x double 1 run data get entity @s Pos[0]
execute store result storage shibakapack:global_home home.y double 1 run data get entity @s Pos[1]
execute store result storage shibakapack:global_home home.z double 1 run data get entity @s Pos[2]
data modify storage shibakapack:global_home home.dimension set from entity @s Dimension
execute store result storage shibakapack:global_home home.yaw float 1 run data get entity @s Rotation[0]
execute store result storage shibakapack:global_home home.pitch float 1 run data get entity @s Rotation[1]
tellraw @s [{"text":"[Home] ","color":"green"},{"text":"Main home set !","color":"white"}]
$execute store result storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot).x double 1 run data get entity @s Pos[0]
$execute store result storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot).y double 1 run data get entity @s Pos[1]
$execute store result storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot).z double 1 run data get entity @s Pos[2]
$data modify storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot).dimension set from entity @s Dimension
$execute store result storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot).yaw float 1 run data get entity @s Rotation[0]
$execute store result storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot).pitch float 1 run data get entity @s Rotation[1]
$data modify storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot).name set value "Slot $(slot)"
$tellraw @s [{"text":"[Home] ","color":"green"},{"text":"Slot $(slot) saved !","color":"white"}]
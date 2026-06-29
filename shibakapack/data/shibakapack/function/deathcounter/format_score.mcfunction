data modify storage shibakapack:deathcounter player set value {name:"default"}
execute store result storage shibakapack:deathcounter player.deaths int 1 run scoreboard players get @s Deaths
execute store result storage shibakapack:deathcounter player.hours int 1 run scoreboard players get @s PlayHours
execute store result storage shibakapack:deathcounter player.minutes int 1 run scoreboard players get @s PlayMinutes
function shibakapack:deathcounter/apply_format with storage shibakapack:deathcounter player
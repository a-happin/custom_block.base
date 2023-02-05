#> custom_block.base:tick
#@within tag/function tick

#>
#@private
  #declare tag/function custom_block:tick

execute as @e[type=glow_item_frame,tag=custom_block] at @s run function #custom_block:tick

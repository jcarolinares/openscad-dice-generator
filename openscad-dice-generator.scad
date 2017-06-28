/*

Openscad dice generator

Created by Julián Caro Linares

jcarolinares@gmail.com
*/

//Openscad Dice Generator

//Parameters
dice_size=20;
border_diameter=dice_size/4;
draw_depth=1;


//General dice
difference()
{
//Raw Dice
dice(dice_size);

//Sides icons

//1
side_dice_icon("emoji1.dxf",dice_size,draw_depth);

//2
rotate([90,0,0])
side_dice_icon("emoji1.dxf",dice_size,draw_depth);

//3
rotate([0,90,0])
side_dice_icon("emoji1.dxf",dice_size,draw_depth);

//4
rotate([0,-90,0])
side_dice_icon("emoji1.dxf",dice_size,draw_depth);

//5
rotate([-90,0,0])
side_dice_icon("emoji1.dxf",dice_size,draw_depth);

//6
rotate([180,0,0])
side_dice_icon("emoji1.dxf",dice_size,draw_depth);
}



//Modules
module dice(dice_size=20, border_diameter=1/4)
{
border_diameter=dice_size*border_diameter;
intersection()
{
//Dice cube
cube([dice_size,dice_size,dice_size],center=true);

//Borders
sphere(d=dice_size*1.75-border_diameter, $fn=100);
}

}

module side_dice_icon(image_path="emoji1.dxf",dice_size=20,draw_depth=1)
{
translate([0,0,(dice_size/2)-draw_depth])
linear_extrude(height = 5, center = false, convexity = 10)
  import(image_path);

}

//Openscad Dice Generator

//Parameters
dice_size=20;
border_diameter=dice_size/4;


intersection()
{
//Dice cube
cube([dice_size,dice_size,dice_size],center=true);

//Borders 
sphere(d=dice_size*1.75-border_diameter, $fn=150);
}
include <global_parameters.scad>

use <engine_stage.scad>
use <payload_stage.scad>
use <recovery_stage.scad>


engine_stage();

translate([0, 0, stage_height - connection_lenght ])    // move the stage to the correct level at rocket body.
payload_stage();

translate([0, 0, 2*stage_height - 2*connection_lenght ])   // move the stage to the correct level at rocket body.
recovery_stage();

translate([0, 0, 3*stage_height - connection_lenght])   // move cone to the top of the rocket.
ogive_nose();
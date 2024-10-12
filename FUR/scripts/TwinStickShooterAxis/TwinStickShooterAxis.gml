function gamepad_axis_direction(device, stick, deadzone, lerp_amnt){
    
    static controller_stick_last_angle = 0;
    
    if (stick == 0){
        gp_axis_h = gp_axisrh;
        gp_axis_v = gp_axisrv;
    }else{
        gp_axis_h = gp_axislh;
        gp_axis_v = gp_axislv;    
    }
    
    var gp_h = gamepad_axis_value(device, gp_axis_h);
    var gp_v = gamepad_axis_value(device, gp_axis_v);
        
    if (abs(gp_h) <= deadzone) {
        gp_h = 0;    
    }
    if (abs(gp_v) <= deadzone) {
        gp_v = 0;    
    }
        
    if (abs(gp_h) <= deadzone && abs(gp_v) <= deadzone) {
        controller_stick_angle = controller_stick_last_angle;    
    } else {
        var angle = point_direction(0, 0, gp_h,gp_v);
        
        
        var max_angle = 360;
        var new_angle = ((angle - controller_stick_last_angle + max_angle + 180) % max_angle) - 180;
        controller_stick_angle = (controller_stick_last_angle + new_angle * lerp_amnt + max_angle) % max_angle;
    }

    controller_stick_last_angle = controller_stick_angle;
    
    return controller_stick_angle;
}
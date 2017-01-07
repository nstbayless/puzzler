var i = argument0;
var pow = argument1;

pc_power[i] = pow
power_name[i] = a_power_name[pow];
power_type[i] = a_power_type[pow];
power_cost[i] = a_power_cost[pow];
power_description[i] = a_power_description[pow];
power_script[i] = a_power_script[pow];
power_passive[i] = a_power_passive[pow];

if (power_passive[i]) {
    script_execute(power_script[i]);
}

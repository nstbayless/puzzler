var pc = argument0
if (power_cost[pc] <= gem_n) {
    suppress_show_power = true;
    gem_n -= power_cost[pc];
    script_execute(power_script[pc]);
}

/// @description Init variables

segment_counter = 0;
elapsed_time = 0;

max_micros_on = max_second_on * 1000000;
max_micros_off = max_second_off * 1000000;

micros_on = random(max_micros_on);
micros_off = random(max_micros_off);
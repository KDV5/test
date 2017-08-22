vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../led_lights.srcs/sources_1/ip/ctc8_0_1/ctc8.v" \
"../../../../led_lights.srcs/sources_1/ip/ctc8_0_1/sim/ctc8_0.v" \


vlog -work xil_defaultlib "glbl.v"


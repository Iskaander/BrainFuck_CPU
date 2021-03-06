transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/groun/Desktop/brainfuck_cpu {C:/Users/groun/Desktop/brainfuck_cpu/brainfuck_main.v}
vlog -vlog01compat -work work +incdir+C:/Users/groun/Desktop/brainfuck_cpu {C:/Users/groun/Desktop/brainfuck_cpu/seven_segment_controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/groun/Desktop/brainfuck_cpu {C:/Users/groun/Desktop/brainfuck_cpu/prog_ram.v}
vlog -vlog01compat -work work +incdir+C:/Users/groun/Desktop/brainfuck_cpu {C:/Users/groun/Desktop/brainfuck_cpu/uart_tx.v}
vlog -vlog01compat -work work +incdir+C:/Users/groun/Desktop/brainfuck_cpu {C:/Users/groun/Desktop/brainfuck_cpu/ram.v}
vlog -vlog01compat -work work +incdir+C:/Users/groun/Desktop/brainfuck_cpu {C:/Users/groun/Desktop/brainfuck_cpu/brainfuck_cpu.v}

vlog -vlog01compat -work work +incdir+C:/Users/groun/Desktop/brainfuck_cpu {C:/Users/groun/Desktop/brainfuck_cpu/brainfuck_cpu_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  brainfuck_cpu_tb

add wave *
view structure
view signals
run -all

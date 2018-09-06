transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Stack/Courses/KTH/Courses/01 - HDL/Laboratory/Lab0/tb_Ripple_Adder.vhd}
vcom -93 -work work {D:/Stack/Courses/KTH/Courses/01 - HDL/Laboratory/Lab0/tb_Full_Adder.vhd}
vcom -93 -work work {D:/Stack/Courses/KTH/Courses/01 - HDL/Laboratory/Lab0/Ripple_Adder.vhd}
vcom -93 -work work {D:/Stack/Courses/KTH/Courses/01 - HDL/Laboratory/Lab0/Full_Adder.vhd}
vcom -93 -work work {D:/Stack/Courses/KTH/Courses/01 - HDL/Laboratory/Lab0/tb_Two_comp.vhd}
vcom -93 -work work {D:/Stack/Courses/KTH/Courses/01 - HDL/Laboratory/Lab0/Two_comp.vhd}

vcom -93 -work work {D:/Stack/Courses/KTH/Courses/01 - HDL/Laboratory/Lab0/tb_Full_Adder.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_Full_Adder

add wave *
view structure
view signals
run 200 ns
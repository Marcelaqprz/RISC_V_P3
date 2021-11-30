onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /RISC_V_Single_Cycle_TB/reset_tb
add wave -noupdate /RISC_V_Single_Cycle_TB/clk_tb
add wave -noupdate -expand -group {Program Counter} -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/PROGRAM_COUNTER/PC_Value
add wave -noupdate -expand -group {Program Counter} -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/PROGRAM_COUNTER/Next_PC
add wave -noupdate -expand -group {Register File} -radix unsigned /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/select_register_w
add wave -noupdate -expand -group {Register File} /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Reg_Write_i
add wave -noupdate -expand -group {Register File} -radix unsigned /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Read_Register_2_i
add wave -noupdate -expand -group {Register File} -radix decimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Read_Register_1_i
add wave -noupdate -expand -group {Register File} -radix unsigned /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Read_Data_2_o
add wave -noupdate -expand -group {Register File} -radix unsigned /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Read_Data_1_o
add wave -noupdate -expand -group {Control Unit} -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/OP_i
add wave -noupdate -expand -group {Control Unit} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Reg_Write_o
add wave -noupdate -expand -group {Control Unit} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Mem_Write_o
add wave -noupdate -expand -group {Control Unit} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Mem_to_Reg_o
add wave -noupdate -expand -group {Control Unit} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Mem_Read_o
add wave -noupdate -expand -group {Control Unit} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/jalr_o
add wave -noupdate -expand -group {Control Unit} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/jal_o
add wave -noupdate -expand -group {Control Unit} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Branch_o
add wave -noupdate -expand -group {Control Unit} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/ALU_Src_o
add wave -noupdate -expand -group {Control Unit} /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/ALU_Op_o
add wave -noupdate -expand -group {Control Unit} /RISC_V_Single_Cycle_TB/DUV/EX_alu_op
add wave -noupdate -expand -group ALU_CONTROL /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/funct7_i
add wave -noupdate -expand -group ALU_CONTROL /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/funct3_i
add wave -noupdate -expand -group ALU_CONTROL /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/ALU_Operation_o
add wave -noupdate -expand -group ALU_CONTROL /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/ALU_Op_i
add wave -noupdate -expand -group Forward /RISC_V_Single_Cycle_TB/DUV/ForwardUnit/WB_WB
add wave -noupdate -expand -group Forward /RISC_V_Single_Cycle_TB/DUV/ForwardUnit/WB_MEM
add wave -noupdate -expand -group Forward -radix unsigned /RISC_V_Single_Cycle_TB/DUV/ForwardUnit/Rs2_EX
add wave -noupdate -expand -group Forward -radix unsigned /RISC_V_Single_Cycle_TB/DUV/ForwardUnit/Rs1_EX
add wave -noupdate -expand -group Forward -radix unsigned /RISC_V_Single_Cycle_TB/DUV/ForwardUnit/RD_WB
add wave -noupdate -expand -group Forward -radix unsigned /RISC_V_Single_Cycle_TB/DUV/ForwardUnit/RD_MEM
add wave -noupdate -expand -group Forward /RISC_V_Single_Cycle_TB/DUV/ForwardUnit/B
add wave -noupdate -expand -group Forward /RISC_V_Single_Cycle_TB/DUV/ForwardUnit/A
add wave -noupdate -expand -group ALU_A /RISC_V_Single_Cycle_TB/DUV/ALU_A/Selector
add wave -noupdate -expand -group ALU_A -radix unsigned /RISC_V_Single_Cycle_TB/DUV/ALU_A/MUX_Output
add wave -noupdate -expand -group ALU_A -radix unsigned /RISC_V_Single_Cycle_TB/DUV/ALU_A/MUX_Data0
add wave -noupdate -expand -group ALU_A -radix unsigned /RISC_V_Single_Cycle_TB/DUV/ALU_A/MUX_Data1
add wave -noupdate -expand -group ALU_A -radix unsigned /RISC_V_Single_Cycle_TB/DUV/ALU_A/MUX_Data2
add wave -noupdate -expand -group ALU -radix decimal /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/ALU_Operation_i
add wave -noupdate -expand -group ALU -radix decimal /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/A_i
add wave -noupdate -expand -group ALU -radix decimal /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/B_i
add wave -noupdate -expand -group ALU -radix decimal /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/Zero_o
add wave -noupdate -expand -group ALU -radix decimal /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/ALU_Result_o
add wave -noupdate -expand -group DataMemory -radix decimal /RISC_V_Single_Cycle_TB/DUV/DataMemory/Write_Data_i
add wave -noupdate -expand -group DataMemory -radix decimal /RISC_V_Single_Cycle_TB/DUV/DataMemory/Mem_Write_i
add wave -noupdate -expand -group DataMemory -radix decimal /RISC_V_Single_Cycle_TB/DUV/DataMemory/Mem_Read_i
add wave -noupdate -expand -group DataMemory -radix decimal /RISC_V_Single_Cycle_TB/DUV/DataMemory/Address_i
add wave -noupdate -expand -group DataMemory -radix decimal /RISC_V_Single_Cycle_TB/DUV/DataMemory/Read_Data_o
add wave -noupdate -expand -group {Register File WB} -radix unsigned /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Write_Register_i
add wave -noupdate -expand -group {Register File WB} -radix decimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Write_Data_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {38 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {41 ps} {69 ps}

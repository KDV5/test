# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tfgg484-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/ctc/ctc8/ctc8.cache/wt [current_project]
set_property parent.project_path E:/ctc/ctc8/ctc8.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths e:/ctc/ctc8/ctc8.srcs/sources_1/new [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib E:/ctc/ctc8/ctc8.srcs/sources_1/new/ctc8up.v
synth_design -top ctc8 -part xc7a100tfgg484-1
write_checkpoint -noxdef ctc8.dcp
catch { report_utilization -file ctc8_utilization_synth.rpt -pb ctc8_utilization_synth.pb }
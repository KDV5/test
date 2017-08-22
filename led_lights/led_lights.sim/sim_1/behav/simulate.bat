@echo off
set xv_path=E:\\Vivado\\Vivado\\2015.4\\bin
call %xv_path%/xsim led_sim_behav -key {Behavioral:sim_1:Functional:led_sim} -tclbatch led_sim.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

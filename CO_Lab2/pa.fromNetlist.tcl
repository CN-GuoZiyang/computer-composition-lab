
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name CO_Lab2 -dir "C:/Users/Ziyang Guo/Desktop/computer-composition-lab/CO_Lab2/planAhead_run_5" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Ziyang Guo/Desktop/computer-composition-lab/CO_Lab2/cpu_cs.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Ziyang Guo/Desktop/computer-composition-lab/CO_Lab2} }
set_property target_constrs_file "cpu.ucf" [current_fileset -constrset]
add_files [list {cpu.ucf}] -fileset [get_property constrset [current_run]]
link_design

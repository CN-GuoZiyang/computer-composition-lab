/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000516571897_1733832700_init();
    work_m_00000000002871083866_0757879789_init();
    work_m_00000000002443077802_0317860448_init();
    work_m_00000000003608705749_2251196330_init();
    work_m_00000000003824858070_0825842542_init();
    work_m_00000000002565764311_4157340400_init();
    work_m_00000000002009053299_2900020244_init();
    work_m_00000000000569730992_0349774727_init();
    work_m_00000000001891372286_2265805478_init();
    work_m_00000000003267197561_0886308060_init();
    work_m_00000000001650444576_3800541994_init();
    work_m_00000000003848087994_2356217838_init();
    work_m_00000000000255538609_1965594917_init();
    work_m_00000000002296996370_3508565487_init();
    work_m_00000000004294580348_1985558087_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004294580348_1985558087");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}

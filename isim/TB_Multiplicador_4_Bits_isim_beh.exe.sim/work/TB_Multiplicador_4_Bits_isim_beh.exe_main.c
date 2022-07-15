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

char *WORK_P_3459800979;
char *WORK_P_2654187855;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_4155859798;
char *WORK_P_2219335778;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_3459800979_init();
    work_p_4155859798_init();
    work_p_2219335778_init();
    work_p_2654187855_init();
    work_a_2735068677_3212880686_init();
    work_a_3112044328_3212880686_init();
    work_a_4077795545_3212880686_init();
    work_a_3397583900_3212880686_init();
    work_a_0827844839_3212880686_init();
    work_a_3483028865_2372691052_init();


    xsi_register_tops("work_a_3483028865_2372691052");

    WORK_P_3459800979 = xsi_get_engine_memory("work_p_3459800979");
    WORK_P_2654187855 = xsi_get_engine_memory("work_p_2654187855");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_4155859798 = xsi_get_engine_memory("work_p_4155859798");
    WORK_P_2219335778 = xsi_get_engine_memory("work_p_2219335778");

    return xsi_run_simulation(argc, argv);

}

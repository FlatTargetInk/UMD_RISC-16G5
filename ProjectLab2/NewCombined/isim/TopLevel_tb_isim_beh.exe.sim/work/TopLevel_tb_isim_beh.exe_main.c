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

char *IEEE_P_0774719531;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *STD_TEXTIO;
char *IEEE_P_3499444699;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_0774719531_init();
    work_a_2797637665_3852387523_init();
    work_a_3252683731_3852387523_init();
    work_a_0141124097_3852387523_init();
    std_textio_init();
    ieee_p_3564397177_init();
    xilinxcorelib_a_1975148188_2959432447_init();
    xilinxcorelib_a_2945921513_1709443946_init();
    xilinxcorelib_a_2786250493_0543512595_init();
    xilinxcorelib_a_0626408557_3212880686_init();
    work_a_3073701636_1075909370_init();
    work_a_3135851394_3852387523_init();
    work_a_1946587752_1181938964_init();
    work_a_0430427126_3852387523_init();
    work_a_2937698825_3852387523_init();
    work_a_2978613228_3212880686_init();
    work_a_1999619233_3212880686_init();
    xilinxcorelib_a_1203745346_2959432447_init();
    xilinxcorelib_a_1677950190_1709443946_init();
    xilinxcorelib_a_3001300418_0543512595_init();
    xilinxcorelib_a_3600195459_3212880686_init();
    work_a_0408172235_2320432267_init();
    work_a_1056326260_1181938964_init();
    work_a_2981415231_3990940387_init();
    work_a_3721117695_3889923918_init();
    work_a_3760980685_3212880686_init();
    work_a_1624926867_3990940387_init();
    work_a_0601391305_3212880686_init();
    work_a_3398445161_3212880686_init();
    work_a_0647224178_3212880686_init();
    xilinxcorelib_a_4172306344_2959432447_init();
    xilinxcorelib_a_3538612476_1709443946_init();
    xilinxcorelib_a_1600189650_0543512595_init();
    xilinxcorelib_a_2134119640_3212880686_init();
    work_a_3290160192_1943982004_init();
    work_a_3331116673_3212880686_init();
    work_a_3482728421_3212880686_init();
    work_a_3343819958_3212880686_init();
    work_a_0289100223_3212880686_init();
    work_a_4107293976_3212880686_init();
    work_a_1750261154_1181938964_init();
    work_a_2433312762_2372691052_init();


    xsi_register_tops("work_a_2433312762_2372691052");

    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}

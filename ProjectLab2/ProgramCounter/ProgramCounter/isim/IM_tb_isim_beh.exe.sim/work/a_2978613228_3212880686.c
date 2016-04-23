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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/robert/UMD_RISC-16G5/ProjectLab2/ProgramCounter/ProgramCounter/SH_PCREG.vhd";



static void work_a_2978613228_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    static char *nl0[] = {&&LAB18, &&LAB18, &&LAB17, &&LAB16, &&LAB18, &&LAB18, &&LAB18, &&LAB18, &&LAB18};

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t8 = xsi_signal_has_event(t1);
    if (t8 == 1)
        goto LAB12;

LAB13:    t4 = (unsigned char)0;

LAB14:    if (t4 == 1)
        goto LAB9;

LAB10:    t3 = (unsigned char)0;

LAB11:    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 3864);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t1 = xsi_get_transient_memory(15U);
    memset(t1, 0, 15U);
    t5 = t1;
    t6 = (5U * 1U);
    t7 = t5;
    memset(t7, (unsigned char)2, t6);
    t8 = (t6 != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3944);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 15U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(59, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)2, 5U);
    t5 = (t0 + 4008);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 5U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB5:    t9 = (15U / t6);
    xsi_mem_set_data(t5, t5, t6, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1672U);
    t10 = *((char **)t2);
    t19 = *((unsigned char *)t10);
    t2 = (char *)((nl0) + t19);
    goto **((char **)t2);

LAB9:    t2 = (t0 + 1512U);
    t7 = *((char **)t2);
    t17 = *((unsigned char *)t7);
    t18 = (t17 == (unsigned char)3);
    t3 = t18;
    goto LAB11;

LAB12:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t15 = *((unsigned char *)t5);
    t16 = (t15 == (unsigned char)3);
    t4 = t16;
    goto LAB14;

LAB15:    goto LAB3;

LAB16:    xsi_set_current_line(67, ng0);
    t11 = (t0 + 2152U);
    t12 = *((char **)t11);
    t20 = (1 - 0);
    t6 = (t20 * 1);
    t9 = (5U * t6);
    t21 = (0 + t9);
    t11 = (t12 + t21);
    t13 = (t0 + 3944);
    t14 = (t13 + 56U);
    t22 = *((char **)t14);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t11, 5U);
    xsi_driver_first_trans_delta(t13, 10U, 5U, 0LL);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t20 = (0 - 0);
    t6 = (t20 * 1);
    t9 = (5U * t6);
    t21 = (0 + t9);
    t1 = (t2 + t21);
    t5 = (t0 + 3944);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 5U);
    xsi_driver_first_trans_delta(t5, 5U, 5U, 0LL);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3944);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_delta(t1, 0U, 5U, 0LL);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4008);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB15;

LAB17:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t20 = (0 - 0);
    t6 = (t20 * 1);
    t9 = (5U * t6);
    t21 = (0 + t9);
    t1 = (t2 + t21);
    t5 = (t0 + 4008);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 5U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t20 = (1 - 0);
    t6 = (t20 * 1);
    t9 = (5U * t6);
    t21 = (0 + t9);
    t1 = (t2 + t21);
    t5 = (t0 + 3944);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 5U);
    xsi_driver_first_trans_delta(t5, 0U, 5U, 0LL);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t20 = (2 - 0);
    t6 = (t20 * 1);
    t9 = (5U * t6);
    t21 = (0 + t9);
    t1 = (t2 + t21);
    t5 = (t0 + 3944);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 5U);
    xsi_driver_first_trans_delta(t5, 5U, 5U, 0LL);
    xsi_set_current_line(77, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)2, 5U);
    t5 = (t0 + 3944);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 5U);
    xsi_driver_first_trans_delta(t5, 10U, 5U, 0LL);
    goto LAB15;

LAB18:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4008);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB15;

}


extern void work_a_2978613228_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2978613228_3212880686_p_0};
	xsi_register_didat("work_a_2978613228_3212880686", "isim/IM_tb_isim_beh.exe.sim/work/a_2978613228_3212880686.didat");
	xsi_register_executes(pe);
}

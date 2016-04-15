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
static const char *ng0 = "/home/robert/UMD_RISC-16G5/ProjectLab2/ProgramCounter/ProgramCounter/ProgramCounter.vhd";
extern char *IEEE_P_0774719531;

char *ieee_p_0774719531_sub_1496620905533649268_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_2255506239096166994_2162500114(char *, char *, char *, char *, int );


static void work_a_2560515675_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(32, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4312);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2560515675_3212880686_p_1(char *t0)
{
    char t31[16];
    char t35[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    int t20;
    char *t21;
    char *t22;
    int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t36;
    unsigned int t37;

LAB0:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 992U);
    t4 = xsi_signal_has_event(t3);
    if (t4 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t3 = (t0 + 4328);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(36, ng0);
    t5 = (t0 + 1352U);
    t12 = *((char **)t5);
    t5 = (t0 + 7557);
    t14 = xsi_mem_cmp(t5, t12, 2U);
    if (t14 == 1)
        goto LAB12;

LAB17:    t15 = (t0 + 7559);
    t17 = xsi_mem_cmp(t15, t12, 2U);
    if (t17 == 1)
        goto LAB13;

LAB18:    t18 = (t0 + 7561);
    t20 = xsi_mem_cmp(t18, t12, 2U);
    if (t20 == 1)
        goto LAB14;

LAB19:    t21 = (t0 + 7563);
    t23 = xsi_mem_cmp(t21, t12, 2U);
    if (t23 == 1)
        goto LAB15;

LAB20:
LAB16:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 2472U);
    t5 = *((char **)t3);
    t3 = (t0 + 7488U);
    t6 = ieee_p_0774719531_sub_2255506239096166994_2162500114(IEEE_P_0774719531, t31, t5, t3, 1);
    t9 = (t31 + 12U);
    t32 = *((unsigned int *)t9);
    t33 = (1U * t32);
    t1 = (5U != t33);
    if (t1 == 1)
        goto LAB28;

LAB29:    t12 = (t0 + 4472);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t6, 5U);
    xsi_driver_first_trans_fast(t12);

LAB11:    goto LAB3;

LAB5:    t5 = (t0 + 1192U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB7;

LAB8:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t2 = t8;
    goto LAB10;

LAB12:    xsi_set_current_line(37, ng0);
    t24 = xsi_get_transient_memory(5U);
    memset(t24, 0, 5U);
    t25 = t24;
    memset(t25, (unsigned char)2, 5U);
    t26 = (t0 + 4472);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t24, 5U);
    xsi_driver_first_trans_fast(t26);
    goto LAB11;

LAB13:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 2472U);
    t5 = *((char **)t3);
    t3 = (t0 + 7488U);
    t6 = ieee_p_0774719531_sub_2255506239096166994_2162500114(IEEE_P_0774719531, t31, t5, t3, 1);
    t9 = (t31 + 12U);
    t32 = *((unsigned int *)t9);
    t33 = (1U * t32);
    t1 = (5U != t33);
    if (t1 == 1)
        goto LAB22;

LAB23:    t12 = (t0 + 4472);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t6, 5U);
    xsi_driver_first_trans_fast(t12);
    goto LAB11;

LAB14:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 2152U);
    t5 = *((char **)t3);
    t3 = (t0 + 4536);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 5U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(41, ng0);
    t3 = (t0 + 1992U);
    t5 = *((char **)t3);
    t3 = (t0 + 4600);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 5U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1832U);
    t5 = *((char **)t3);
    t3 = (t0 + 4664);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 5U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(43, ng0);
    t3 = (t0 + 2472U);
    t5 = *((char **)t3);
    t3 = (t0 + 7488U);
    t6 = ieee_p_0774719531_sub_2255506239096166994_2162500114(IEEE_P_0774719531, t31, t5, t3, 1);
    t9 = (t31 + 12U);
    t32 = *((unsigned int *)t9);
    t33 = (1U * t32);
    t1 = (5U != t33);
    if (t1 == 1)
        goto LAB24;

LAB25:    t12 = (t0 + 4728);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t6, 5U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(44, ng0);
    t3 = (t0 + 2472U);
    t5 = *((char **)t3);
    t3 = (t0 + 7488U);
    t6 = (t0 + 1512U);
    t9 = *((char **)t6);
    t32 = (11 - 4);
    t33 = (t32 * 1U);
    t34 = (0 + t33);
    t6 = (t9 + t34);
    t12 = (t35 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 4;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - 4);
    t36 = (t14 * -1);
    t36 = (t36 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t36;
    t13 = ieee_p_0774719531_sub_1496620905533649268_2162500114(IEEE_P_0774719531, t31, t5, t3, t6, t35);
    t15 = (t31 + 12U);
    t36 = *((unsigned int *)t15);
    t37 = (1U * t36);
    t1 = (5U != t37);
    if (t1 == 1)
        goto LAB26;

LAB27:    t16 = (t0 + 4472);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    t21 = (t19 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 5U);
    xsi_driver_first_trans_fast(t16);
    goto LAB11;

LAB15:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 1832U);
    t5 = *((char **)t3);
    t3 = (t0 + 4472);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 5U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1992U);
    t5 = *((char **)t3);
    t3 = (t0 + 4728);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 5U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(48, ng0);
    t3 = (t0 + 2152U);
    t5 = *((char **)t3);
    t3 = (t0 + 4664);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 5U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(49, ng0);
    t3 = (t0 + 2312U);
    t5 = *((char **)t3);
    t3 = (t0 + 4600);
    t6 = (t3 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 5U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(50, ng0);
    t3 = xsi_get_transient_memory(5U);
    memset(t3, 0, 5U);
    t5 = t3;
    memset(t5, (unsigned char)2, 5U);
    t6 = (t0 + 4536);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t3, 5U);
    xsi_driver_first_trans_fast(t6);
    goto LAB11;

LAB21:;
LAB22:    xsi_size_not_matching(5U, t33, 0);
    goto LAB23;

LAB24:    xsi_size_not_matching(5U, t33, 0);
    goto LAB25;

LAB26:    xsi_size_not_matching(5U, t37, 0);
    goto LAB27;

LAB28:    xsi_size_not_matching(5U, t33, 0);
    goto LAB29;

}


extern void work_a_2560515675_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2560515675_3212880686_p_0,(void *)work_a_2560515675_3212880686_p_1};
	xsi_register_didat("work_a_2560515675_3212880686", "isim/IM_tb_isim_beh.exe.sim/work/a_2560515675_3212880686.didat");
	xsi_register_executes(pe);
}

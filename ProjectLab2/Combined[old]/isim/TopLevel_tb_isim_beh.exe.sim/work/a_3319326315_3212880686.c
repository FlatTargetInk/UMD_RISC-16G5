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
static const char *ng0 = "/home/robert/UMD_RISC-16G5/ProjectLab2/Combined/programCounter.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_17566845831527943093_3536714472(char *, char *, char *, char *, int );


static void work_a_3319326315_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(35, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3608);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3512);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3319326315_3212880686_p_1(char *t0)
{
    char t15[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3528);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t5 = t1;
    memset(t5, (unsigned char)2, 5U);
    t6 = (t0 + 3672);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)2);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t2 = (t0 + 5672U);
    t8 = ieee_p_3499444699_sub_17566845831527943093_3536714472(IEEE_P_3499444699, t15, t7, t2, 1);
    t9 = (t15 + 12U);
    t16 = *((unsigned int *)t9);
    t17 = (1U * t16);
    t18 = (5U != t17);
    if (t18 == 1)
        goto LAB13;

LAB14:    t10 = (t0 + 3672);
    t19 = (t10 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 5U);
    xsi_driver_first_trans_fast(t10);
    goto LAB11;

LAB13:    xsi_size_not_matching(5U, t17, 0);
    goto LAB14;

}


extern void work_a_3319326315_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3319326315_3212880686_p_0,(void *)work_a_3319326315_3212880686_p_1};
	xsi_register_didat("work_a_3319326315_3212880686", "isim/TopLevel_tb_isim_beh.exe.sim/work/a_3319326315_3212880686.didat");
	xsi_register_executes(pe);
}

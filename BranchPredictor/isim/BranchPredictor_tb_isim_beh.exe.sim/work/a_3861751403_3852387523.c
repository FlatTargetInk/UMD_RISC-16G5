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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//vnx-cifs/coefs/eng/shared/CPARKS1/Xilinx/BranchPredictor/BranchPredictor.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3861751403_3852387523_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    char *t21;
    char *t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    static char *nl0[] = {&&LAB24, &&LAB25};
    static char *nl1[] = {&&LAB29, &&LAB29, &&LAB27, &&LAB28, &&LAB29, &&LAB29, &&LAB29, &&LAB29, &&LAB29};
    static char *nl2[] = {&&LAB33, &&LAB33, &&LAB31, &&LAB32, &&LAB33, &&LAB33, &&LAB33, &&LAB33, &&LAB33};

LAB0:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3560);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(37, ng0);
    t11 = (t0 + 1512U);
    t12 = *((char **)t11);
    t11 = (t0 + 6051);
    t14 = 1;
    if (4U == 4U)
        goto LAB17;

LAB18:    t14 = 0;

LAB19:    if (t14 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3656);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB15:    goto LAB3;

LAB5:    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t4 = (t0 + 6047);
    t7 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t7 = 0;

LAB10:    t1 = t7;
    goto LAB7;

LAB8:    t8 = 0;

LAB11:    if (t8 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t9 = (t5 + t8);
    t10 = (t4 + t8);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB9;

LAB13:    t8 = (t8 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(38, ng0);
    t18 = (t0 + 1832U);
    t19 = *((char **)t18);
    t20 = *((unsigned char *)t19);
    t18 = (char *)((nl0) + t20);
    goto **((char **)t18);

LAB17:    t15 = 0;

LAB20:    if (t15 < 4U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t16 = (t12 + t15);
    t17 = (t11 + t15);
    if (*((unsigned char *)t16) != *((unsigned char *)t17))
        goto LAB18;

LAB22:    t15 = (t15 + 1);
    goto LAB20;

LAB23:    goto LAB15;

LAB24:    xsi_set_current_line(40, ng0);
    t21 = (t0 + 1192U);
    t22 = *((char **)t21);
    t23 = *((unsigned char *)t22);
    t21 = (char *)((nl1) + t23);
    goto **((char **)t21);

LAB25:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (char *)((nl2) + t1);
    goto **((char **)t2);

LAB26:    goto LAB23;

LAB27:    xsi_set_current_line(41, ng0);
    t24 = (t0 + 3656);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)0;
    xsi_driver_first_trans_fast(t24);
    goto LAB26;

LAB28:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3656);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB26;

LAB29:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3656);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);
    goto LAB26;

LAB30:    goto LAB23;

LAB31:    xsi_set_current_line(47, ng0);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t5);
    goto LAB30;

LAB32:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3656);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB30;

LAB33:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3656);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);
    goto LAB30;

}

static void work_a_3861751403_3852387523_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)1);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t17 = (t0 + 3720);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t22 = (t0 + 3576);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 3720);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB5:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t2 = (t0 + 6055);
    t8 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t8 = 0;

LAB10:    t1 = t8;
    goto LAB7;

LAB8:    t9 = 0;

LAB11:    if (t9 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t10 = (t6 + t9);
    t11 = (t2 + t9);
    if (*((unsigned char *)t10) != *((unsigned char *)t11))
        goto LAB9;

LAB13:    t9 = (t9 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}


extern void work_a_3861751403_3852387523_init()
{
	static char *pe[] = {(void *)work_a_3861751403_3852387523_p_0,(void *)work_a_3861751403_3852387523_p_1};
	xsi_register_didat("work_a_3861751403_3852387523", "isim/BranchPredictor_tb_isim_beh.exe.sim/work/a_3861751403_3852387523.didat");
	xsi_register_executes(pe);
}

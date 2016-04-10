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
static const char *ng0 = "/home/tj/Desktop/UMD_RISC-16G5/ProjectLab1/Poject_Lab01/Project1/arith_unit.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3499444699;
extern char *IEEE_P_0774719531;

unsigned char ieee_p_0774719531_sub_1306448836232530671_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_3488768497506413324_503743352(char *, unsigned char , unsigned char );
char *ieee_p_3499444699_sub_16710491788449111853_3536714472(char *, char *, char *, char *, char *, char *);
char *ieee_p_3499444699_sub_16710491788449183727_3536714472(char *, char *, char *, char *, char *, char *);


static void work_a_2797637665_3852387523_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 9464U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 16U);
    t7 = (17U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 5976);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 17U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 5768);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t6, 0);
    goto LAB6;

}

static void work_a_2797637665_3852387523_p_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 9480U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 16U);
    t7 = (17U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 6040);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 17U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 5784);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t6, 0);
    goto LAB6;

}

static void work_a_2797637665_3852387523_p_2(char *t0)
{
    char t12[16];
    char t27[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    t1 = (t0 + 3960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 9690);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB8:    t6 = (t0 + 9693);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB5;

LAB9:    t9 = (t0 + 9696);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB6;

LAB10:
LAB7:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 9699);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t27 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 0;
    t9 = (t7 + 4U);
    *((int *)t9) = 15;
    t9 = (t7 + 8U);
    *((int *)t9) = 1;
    t5 = (15 - 0);
    t19 = (t5 * 1);
    t19 = (t19 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t19;
    t4 = xsi_base_array_concat(t4, t12, t6, (char)99, (unsigned char)2, (char)97, t2, t27, (char)101);
    t19 = (1U + 16U);
    t21 = (17U != t19);
    if (t21 == 1)
        goto LAB16;

LAB17:    t9 = (t0 + 6104);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t4, 17U);
    xsi_driver_first_trans_fast(t9);

LAB4:    xsi_set_current_line(53, ng0);

LAB20:    t2 = (t0 + 5800);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB21;

LAB1:    return;
LAB5:    xsi_set_current_line(55, ng0);
    t13 = (t0 + 1832U);
    t14 = *((char **)t13);
    t13 = (t0 + 9544U);
    t15 = (t0 + 1992U);
    t16 = *((char **)t15);
    t15 = (t0 + 9544U);
    t17 = ieee_p_3499444699_sub_16710491788449111853_3536714472(IEEE_P_3499444699, t12, t14, t13, t16, t15);
    t18 = (t12 + 12U);
    t19 = *((unsigned int *)t18);
    t20 = (1U * t19);
    t21 = (17U != t20);
    if (t21 == 1)
        goto LAB12;

LAB13:    t22 = (t0 + 6104);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t17, 17U);
    xsi_driver_first_trans_fast(t22);
    goto LAB4;

LAB6:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 9544U);
    t4 = (t0 + 1992U);
    t6 = *((char **)t4);
    t4 = (t0 + 9544U);
    t7 = ieee_p_3499444699_sub_16710491788449183727_3536714472(IEEE_P_3499444699, t12, t3, t2, t6, t4);
    t9 = (t12 + 12U);
    t19 = *((unsigned int *)t9);
    t20 = (1U * t19);
    t21 = (17U != t20);
    if (t21 == 1)
        goto LAB14;

LAB15:    t10 = (t0 + 6104);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 17U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB11:;
LAB12:    xsi_size_not_matching(17U, t20, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(17U, t20, 0);
    goto LAB15;

LAB16:    xsi_size_not_matching(17U, t19, 0);
    goto LAB17;

LAB18:    t3 = (t0 + 5800);
    *((int *)t3) = 0;
    goto LAB2;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

}

static void work_a_2797637665_3852387523_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (15 - 16);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6168);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_delta(t8, 0U, 1, 0LL);

LAB2:    t13 = (t0 + 5816);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2797637665_3852387523_p_4(char *t0)
{
    char t6[16];
    char t12[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t13;
    char *t14;
    int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (16 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 15;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 15);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t0 + 9715);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 31;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (31 - 0);
    t10 = (t15 * 1);
    t10 = (t10 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t10;
    t16 = ieee_p_0774719531_sub_1306448836232530671_2162500114(IEEE_P_0774719531, t1, t6, t8, t12);
    if (t16 != 0)
        goto LAB3;

LAB4:
LAB5:    t21 = (t0 + 6232);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)2;
    xsi_driver_first_trans_delta(t21, 1U, 1, 0LL);

LAB2:    t26 = (t0 + 5832);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t14 = (t0 + 6232);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_delta(t14, 1U, 1, 0LL);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_2797637665_3852387523_p_5(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (16 - 16);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t10 = (15 - 16);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 6296);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t15;
    xsi_driver_first_trans_delta(t16, 2U, 1, 0LL);

LAB2:    t21 = (t0 + 5848);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2797637665_3852387523_p_6(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(62, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (16 - 16);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6360);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_delta(t8, 3U, 1, 0LL);

LAB2:    t13 = (t0 + 5864);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2797637665_3852387523_p_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 6424);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5880);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2797637665_3852387523_p_8(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(65, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (16 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 6488);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 5896);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2797637665_3852387523_init()
{
	static char *pe[] = {(void *)work_a_2797637665_3852387523_p_0,(void *)work_a_2797637665_3852387523_p_1,(void *)work_a_2797637665_3852387523_p_2,(void *)work_a_2797637665_3852387523_p_3,(void *)work_a_2797637665_3852387523_p_4,(void *)work_a_2797637665_3852387523_p_5,(void *)work_a_2797637665_3852387523_p_6,(void *)work_a_2797637665_3852387523_p_7,(void *)work_a_2797637665_3852387523_p_8};
	xsi_register_didat("work_a_2797637665_3852387523", "isim/TopLevel_tb_isim_beh.exe.sim/work/a_2797637665_3852387523.didat");
	xsi_register_executes(pe);
}

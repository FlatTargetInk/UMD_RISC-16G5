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
static const char *ng0 = "/home/tj/Desktop/UMD_RISC-16G5/ProjectLab1/Poject_Lab01/Project1/logical_unit.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_16439767405979520975_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3252683731_3852387523_p_0(char *t0)
{
    char t15[16];
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
    char *t12;
    char *t13;
    int t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 3144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 7084);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 7087);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 7090);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 7093);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6928U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 6944U);
    t7 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t15, t3, t2, t6, t4);
    t9 = (t15 + 12U);
    t22 = *((unsigned int *)t9);
    t23 = (1U * t22);
    t24 = (16U != t23);
    if (t24 == 1)
        goto LAB21;

LAB22:    t10 = (t0 + 4336);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t16 = (t13 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 16U);
    xsi_driver_first_trans_fast(t10);

LAB4:    xsi_set_current_line(49, ng0);

LAB25:    t2 = (t0 + 4208);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(51, ng0);
    t16 = (t0 + 1032U);
    t17 = *((char **)t16);
    t16 = (t0 + 6928U);
    t18 = (t0 + 1192U);
    t19 = *((char **)t18);
    t18 = (t0 + 6944U);
    t20 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t15, t17, t16, t19, t18);
    t21 = (t15 + 12U);
    t22 = *((unsigned int *)t21);
    t23 = (1U * t22);
    t24 = (16U != t23);
    if (t24 == 1)
        goto LAB15;

LAB16:    t25 = (t0 + 4336);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t20, 16U);
    xsi_driver_first_trans_fast(t25);
    goto LAB4;

LAB6:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6928U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 6944U);
    t7 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t15, t3, t2, t6, t4);
    t9 = (t15 + 12U);
    t22 = *((unsigned int *)t9);
    t23 = (1U * t22);
    t24 = (16U != t23);
    if (t24 == 1)
        goto LAB17;

LAB18:    t10 = (t0 + 4336);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t16 = (t13 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 16U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB7:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6928U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 6944U);
    t7 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t15, t3, t2, t6, t4);
    t9 = (t15 + 12U);
    t22 = *((unsigned int *)t9);
    t23 = (1U * t22);
    t24 = (16U != t23);
    if (t24 == 1)
        goto LAB19;

LAB20:    t10 = (t0 + 4336);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t16 = (t13 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 16U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB8:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4336);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB14:;
LAB15:    xsi_size_not_matching(16U, t23, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(16U, t23, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(16U, t23, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(16U, t23, 0);
    goto LAB22;

LAB23:    t3 = (t0 + 4208);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}

static void work_a_3252683731_3852387523_p_1(char *t0)
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

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
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
    t8 = (t0 + 7096);
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
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t6, t8, t12);
    if (t16 != 0)
        goto LAB3;

LAB4:
LAB5:    t21 = (t0 + 4400);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)2;
    xsi_driver_first_trans_fast(t21);

LAB2:    t26 = (t0 + 4224);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t14 = (t0 + 4400);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast(t14);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3252683731_3852387523_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4464);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4240);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3252683731_3852387523_p_3(char *t0)
{
    char t4[16];
    char t9[16];
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t5;
    char *t6;
    char *t8;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t5 = ((IEEE_P_2592010699) + 4000);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)99, (unsigned char)2, (char)99, t3, (char)101);
    t6 = (t0 + 7128);
    t10 = ((IEEE_P_2592010699) + 4000);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (1 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t8 = xsi_base_array_concat(t8, t9, t10, (char)97, t1, t4, (char)97, t6, t11, (char)101);
    t15 = (1U + 1U);
    t16 = (t15 + 2U);
    t17 = (4U != t16);
    if (t17 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 4528);
    t18 = (t13 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 4U);
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t22 = (t0 + 4256);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t16, 0);
    goto LAB6;

}


extern void work_a_3252683731_3852387523_init()
{
	static char *pe[] = {(void *)work_a_3252683731_3852387523_p_0,(void *)work_a_3252683731_3852387523_p_1,(void *)work_a_3252683731_3852387523_p_2,(void *)work_a_3252683731_3852387523_p_3};
	xsi_register_didat("work_a_3252683731_3852387523", "isim/TopLevel_tb_isim_beh.exe.sim/work/a_3252683731_3852387523.didat");
	xsi_register_executes(pe);
}

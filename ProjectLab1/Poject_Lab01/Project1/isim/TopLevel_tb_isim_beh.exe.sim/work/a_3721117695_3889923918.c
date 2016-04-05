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
static const char *ng0 = "/home/robert/UMD_RISC-16G5/ProjectLab1/Poject_Lab01/Project1/DC_CTL.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3721117695_3889923918_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4600);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 1512U);
    t5 = *((char **)t3);
    t6 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t6 = 0;

LAB10:    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t2 = 1;
    if (4U == 4U)
        goto LAB16;

LAB17:    t2 = 0;

LAB18:    if (t2 != 0)
        goto LAB14;

LAB15:    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t2 = 1;
    if (4U == 4U)
        goto LAB24;

LAB25:    t2 = 0;

LAB26:    if (t2 != 0)
        goto LAB22;

LAB23:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 7571);
    t4 = (t0 + 4712);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t4);

LAB6:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t2 = 1;
    if (4U == 4U)
        goto LAB33;

LAB34:    t2 = 0;

LAB35:    if (t2 != 0)
        goto LAB30;

LAB32:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t2 = 1;
    if (4U == 4U)
        goto LAB41;

LAB42:    t2 = 0;

LAB43:    if (t2 != 0)
        goto LAB39;

LAB40:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t2 = 1;
    if (4U == 4U)
        goto LAB49;

LAB50:    t2 = 0;

LAB51:    if (t2 != 0)
        goto LAB47;

LAB48:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 7579);
    t4 = (t0 + 4776);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t4);

LAB31:    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t9 = (t0 + 7565);
    t11 = (t0 + 4712);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 2U);
    xsi_driver_first_trans_fast(t11);
    goto LAB6;

LAB8:    t7 = 0;

LAB11:    if (t7 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t3 = (t4 + t7);
    t8 = (t5 + t7);
    if (*((unsigned char *)t3) != *((unsigned char *)t8))
        goto LAB9;

LAB13:    t7 = (t7 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(59, ng0);
    t8 = (t0 + 7567);
    t10 = (t0 + 4712);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 2U);
    xsi_driver_first_trans_fast(t10);
    goto LAB6;

LAB16:    t7 = 0;

LAB19:    if (t7 < 4U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t1 = (t3 + t7);
    t5 = (t4 + t7);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB17;

LAB21:    t7 = (t7 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(61, ng0);
    t8 = (t0 + 7569);
    t10 = (t0 + 4712);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 2U);
    xsi_driver_first_trans_fast(t10);
    goto LAB6;

LAB24:    t7 = 0;

LAB27:    if (t7 < 4U)
        goto LAB28;
    else
        goto LAB26;

LAB28:    t1 = (t3 + t7);
    t5 = (t4 + t7);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB25;

LAB29:    t7 = (t7 + 1);
    goto LAB27;

LAB30:    xsi_set_current_line(67, ng0);
    t8 = (t0 + 7573);
    t10 = (t0 + 4776);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 2U);
    xsi_driver_first_trans_fast(t10);
    goto LAB31;

LAB33:    t7 = 0;

LAB36:    if (t7 < 4U)
        goto LAB37;
    else
        goto LAB35;

LAB37:    t1 = (t3 + t7);
    t5 = (t4 + t7);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB34;

LAB38:    t7 = (t7 + 1);
    goto LAB36;

LAB39:    xsi_set_current_line(69, ng0);
    t8 = (t0 + 7575);
    t10 = (t0 + 4776);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 2U);
    xsi_driver_first_trans_fast(t10);
    goto LAB31;

LAB41:    t7 = 0;

LAB44:    if (t7 < 4U)
        goto LAB45;
    else
        goto LAB43;

LAB45:    t1 = (t3 + t7);
    t5 = (t4 + t7);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB42;

LAB46:    t7 = (t7 + 1);
    goto LAB44;

LAB47:    xsi_set_current_line(71, ng0);
    t8 = (t0 + 7577);
    t10 = (t0 + 4776);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 2U);
    xsi_driver_first_trans_fast(t10);
    goto LAB31;

LAB49:    t7 = 0;

LAB52:    if (t7 < 4U)
        goto LAB53;
    else
        goto LAB51;

LAB53:    t1 = (t3 + t7);
    t5 = (t4 + t7);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB50;

LAB54:    t7 = (t7 + 1);
    goto LAB52;

}

static void work_a_3721117695_3889923918_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(80, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4840);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4616);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3721117695_3889923918_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 4280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 7581);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB7:    t6 = (t0 + 7585);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB5;

LAB8:    t9 = (t0 + 7589);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB5;

LAB9:    t12 = (t0 + 7593);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB5;

LAB10:    t15 = (t0 + 7597);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB5;

LAB11:    t18 = (t0 + 7601);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB5;

LAB12:
LAB6:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 4904);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 2U);
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(82, ng0);

LAB16:    t2 = (t0 + 4632);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB17;

LAB1:    return;
LAB5:    xsi_set_current_line(83, ng0);
    t21 = (t0 + 7605);
    t23 = (t0 + 4904);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t21, 2U);
    xsi_driver_first_trans_fast_port(t23);
    goto LAB4;

LAB13:;
LAB14:    t3 = (t0 + 4632);
    *((int *)t3) = 0;
    goto LAB2;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

}


extern void work_a_3721117695_3889923918_init()
{
	static char *pe[] = {(void *)work_a_3721117695_3889923918_p_0,(void *)work_a_3721117695_3889923918_p_1,(void *)work_a_3721117695_3889923918_p_2};
	xsi_register_didat("work_a_3721117695_3889923918", "isim/TopLevel_tb_isim_beh.exe.sim/work/a_3721117695_3889923918.didat");
	xsi_register_executes(pe);
}

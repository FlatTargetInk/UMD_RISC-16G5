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



static void work_a_3721117695_3889923918_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4712);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4600);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3721117695_3889923918_p_1(char *t0)
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

LAB0:    t1 = (t0 + 4032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 7565);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB7:    t6 = (t0 + 7569);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB5;

LAB8:    t9 = (t0 + 7573);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB5;

LAB9:    t12 = (t0 + 7577);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB5;

LAB10:    t15 = (t0 + 7581);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB5;

LAB11:    t18 = (t0 + 7585);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB5;

LAB12:
LAB6:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 4776);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 2U);
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(58, ng0);

LAB16:    t2 = (t0 + 4616);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB17;

LAB1:    return;
LAB5:    xsi_set_current_line(59, ng0);
    t21 = (t0 + 7589);
    t23 = (t0 + 4776);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t21, 2U);
    xsi_driver_first_trans_fast_port(t23);
    goto LAB4;

LAB13:;
LAB14:    t3 = (t0 + 4616);
    *((int *)t3) = 0;
    goto LAB2;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

}

static void work_a_3721117695_3889923918_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4632);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t4 = (t0 + 1512U);
    t9 = *((char **)t4);
    t10 = 1;
    if (4U == 4U)
        goto LAB11;

LAB12:    t10 = 0;

LAB13:    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t1 = 1;
    if (4U == 4U)
        goto LAB19;

LAB20:    t1 = 0;

LAB21:    if (t1 != 0)
        goto LAB17;

LAB18:    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t1 = 1;
    if (4U == 4U)
        goto LAB27;

LAB28:    t1 = 0;

LAB29:    if (t1 != 0)
        goto LAB25;

LAB26:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 7597);
    t5 = (t0 + 4840);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 2U);
    xsi_driver_first_trans_fast(t5);

LAB9:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t1 = 1;
    if (4U == 4U)
        goto LAB36;

LAB37:    t1 = 0;

LAB38:    if (t1 != 0)
        goto LAB33;

LAB35:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t1 = 1;
    if (4U == 4U)
        goto LAB44;

LAB45:    t1 = 0;

LAB46:    if (t1 != 0)
        goto LAB42;

LAB43:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t1 = 1;
    if (4U == 4U)
        goto LAB52;

LAB53:    t1 = 0;

LAB54:    if (t1 != 0)
        goto LAB50;

LAB51:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 7605);
    t5 = (t0 + 4904);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 2U);
    xsi_driver_first_trans_fast(t5);

LAB34:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(67, ng0);
    t13 = (t0 + 7591);
    t15 = (t0 + 4840);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 2U);
    xsi_driver_first_trans_fast(t15);
    goto LAB9;

LAB11:    t11 = 0;

LAB14:    if (t11 < 4U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t4 = (t8 + t11);
    t12 = (t9 + t11);
    if (*((unsigned char *)t4) != *((unsigned char *)t12))
        goto LAB12;

LAB16:    t11 = (t11 + 1);
    goto LAB14;

LAB17:    xsi_set_current_line(69, ng0);
    t9 = (t0 + 7593);
    t13 = (t0 + 4840);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 2U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB19:    t11 = 0;

LAB22:    if (t11 < 4U)
        goto LAB23;
    else
        goto LAB21;

LAB23:    t2 = (t4 + t11);
    t8 = (t5 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t8))
        goto LAB20;

LAB24:    t11 = (t11 + 1);
    goto LAB22;

LAB25:    xsi_set_current_line(71, ng0);
    t9 = (t0 + 7595);
    t13 = (t0 + 4840);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 2U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB27:    t11 = 0;

LAB30:    if (t11 < 4U)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t2 = (t4 + t11);
    t8 = (t5 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t8))
        goto LAB28;

LAB32:    t11 = (t11 + 1);
    goto LAB30;

LAB33:    xsi_set_current_line(77, ng0);
    t9 = (t0 + 7599);
    t13 = (t0 + 4904);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 2U);
    xsi_driver_first_trans_fast(t13);
    goto LAB34;

LAB36:    t11 = 0;

LAB39:    if (t11 < 4U)
        goto LAB40;
    else
        goto LAB38;

LAB40:    t2 = (t4 + t11);
    t8 = (t5 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t8))
        goto LAB37;

LAB41:    t11 = (t11 + 1);
    goto LAB39;

LAB42:    xsi_set_current_line(79, ng0);
    t9 = (t0 + 7601);
    t13 = (t0 + 4904);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 2U);
    xsi_driver_first_trans_fast(t13);
    goto LAB34;

LAB44:    t11 = 0;

LAB47:    if (t11 < 4U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t2 = (t4 + t11);
    t8 = (t5 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t8))
        goto LAB45;

LAB49:    t11 = (t11 + 1);
    goto LAB47;

LAB50:    xsi_set_current_line(81, ng0);
    t9 = (t0 + 7603);
    t13 = (t0 + 4904);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 2U);
    xsi_driver_first_trans_fast(t13);
    goto LAB34;

LAB52:    t11 = 0;

LAB55:    if (t11 < 4U)
        goto LAB56;
    else
        goto LAB54;

LAB56:    t2 = (t4 + t11);
    t8 = (t5 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t8))
        goto LAB53;

LAB57:    t11 = (t11 + 1);
    goto LAB55;

}


extern void work_a_3721117695_3889923918_init()
{
	static char *pe[] = {(void *)work_a_3721117695_3889923918_p_0,(void *)work_a_3721117695_3889923918_p_1,(void *)work_a_3721117695_3889923918_p_2};
	xsi_register_didat("work_a_3721117695_3889923918", "isim/TopLevel_tb_isim_beh.exe.sim/work/a_3721117695_3889923918.didat");
	xsi_register_executes(pe);
}

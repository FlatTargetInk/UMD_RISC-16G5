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
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t4 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t4 = 1;
    if (4U == 4U)
        goto LAB13;

LAB14:    t4 = 0;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t4 = 1;
    if (4U == 4U)
        goto LAB21;

LAB22:    t4 = 0;

LAB23:    if (t4 != 0)
        goto LAB19;

LAB20:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 7571);
    t3 = (t0 + 4712);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t3);

LAB3:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t4 = 1;
    if (4U == 4U)
        goto LAB30;

LAB31:    t4 = 0;

LAB32:    if (t4 != 0)
        goto LAB27;

LAB29:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t4 = 1;
    if (4U == 4U)
        goto LAB38;

LAB39:    t4 = 0;

LAB40:    if (t4 != 0)
        goto LAB36;

LAB37:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t4 = 1;
    if (4U == 4U)
        goto LAB46;

LAB47:    t4 = 0;

LAB48:    if (t4 != 0)
        goto LAB44;

LAB45:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 7579);
    t3 = (t0 + 4776);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t3);

LAB28:    t1 = (t0 + 4600);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t7 = (t0 + 7565);
    t9 = (t0 + 4712);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 2U);
    xsi_driver_first_trans_fast(t9);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t1 = (t2 + t5);
    t6 = (t3 + t5);
    if (*((unsigned char *)t1) != *((unsigned char *)t6))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(60, ng0);
    t7 = (t0 + 7567);
    t9 = (t0 + 4712);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 2U);
    xsi_driver_first_trans_fast(t9);
    goto LAB3;

LAB13:    t5 = 0;

LAB16:    if (t5 < 4U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t1 = (t2 + t5);
    t6 = (t3 + t5);
    if (*((unsigned char *)t1) != *((unsigned char *)t6))
        goto LAB14;

LAB18:    t5 = (t5 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(63, ng0);
    t7 = (t0 + 7569);
    t9 = (t0 + 4712);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 2U);
    xsi_driver_first_trans_fast(t9);
    goto LAB3;

LAB21:    t5 = 0;

LAB24:    if (t5 < 4U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t1 = (t2 + t5);
    t6 = (t3 + t5);
    if (*((unsigned char *)t1) != *((unsigned char *)t6))
        goto LAB22;

LAB26:    t5 = (t5 + 1);
    goto LAB24;

LAB27:    xsi_set_current_line(72, ng0);
    t7 = (t0 + 7573);
    t9 = (t0 + 4776);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 2U);
    xsi_driver_first_trans_fast(t9);
    goto LAB28;

LAB30:    t5 = 0;

LAB33:    if (t5 < 4U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t1 = (t2 + t5);
    t6 = (t3 + t5);
    if (*((unsigned char *)t1) != *((unsigned char *)t6))
        goto LAB31;

LAB35:    t5 = (t5 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(74, ng0);
    t7 = (t0 + 7575);
    t9 = (t0 + 4776);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 2U);
    xsi_driver_first_trans_fast(t9);
    goto LAB28;

LAB38:    t5 = 0;

LAB41:    if (t5 < 4U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t1 = (t2 + t5);
    t6 = (t3 + t5);
    if (*((unsigned char *)t1) != *((unsigned char *)t6))
        goto LAB39;

LAB43:    t5 = (t5 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(76, ng0);
    t7 = (t0 + 7577);
    t9 = (t0 + 4776);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 2U);
    xsi_driver_first_trans_fast(t9);
    goto LAB28;

LAB46:    t5 = 0;

LAB49:    if (t5 < 4U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t1 = (t2 + t5);
    t6 = (t3 + t5);
    if (*((unsigned char *)t1) != *((unsigned char *)t6))
        goto LAB47;

LAB51:    t5 = (t5 + 1);
    goto LAB49;

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

LAB0:    xsi_set_current_line(85, ng0);

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
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    t1 = (t0 + 4280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 7581);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB8:    t6 = (t0 + 7585);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB5;

LAB9:    t9 = (t0 + 7589);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB5;

LAB10:    t12 = (t0 + 7593);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB5;

LAB11:    t15 = (t0 + 7597);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB5;

LAB12:    t18 = (t0 + 7601);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB6;

LAB13:    t21 = (t0 + 7605);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB6;

LAB14:    t24 = (t0 + 7609);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB6;

LAB15:    t27 = (t0 + 7613);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB6;

LAB16:    t30 = (t0 + 7617);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB6;

LAB17:    t33 = (t0 + 7621);
    t35 = xsi_mem_cmp(t33, t3, 4U);
    if (t35 == 1)
        goto LAB6;

LAB18:
LAB7:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 7627);
    t4 = (t0 + 4904);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(87, ng0);

LAB22:    t2 = (t0 + 4632);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB23;

LAB1:    return;
LAB5:    xsi_set_current_line(88, ng0);
    t36 = (t0 + 2632U);
    t37 = *((char **)t36);
    t36 = (t0 + 4904);
    t38 = (t36 + 56U);
    t39 = *((char **)t38);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    memcpy(t41, t37, 2U);
    xsi_driver_first_trans_fast_port(t36);
    goto LAB4;

LAB6:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 7625);
    t4 = (t0 + 4904);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB19:;
LAB20:    t3 = (t0 + 4632);
    *((int *)t3) = 0;
    goto LAB2;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

}


extern void work_a_3721117695_3889923918_init()
{
	static char *pe[] = {(void *)work_a_3721117695_3889923918_p_0,(void *)work_a_3721117695_3889923918_p_1,(void *)work_a_3721117695_3889923918_p_2};
	xsi_register_didat("work_a_3721117695_3889923918", "isim/TopLevel_tb_isim_beh.exe.sim/work/a_3721117695_3889923918.didat");
	xsi_register_executes(pe);
}

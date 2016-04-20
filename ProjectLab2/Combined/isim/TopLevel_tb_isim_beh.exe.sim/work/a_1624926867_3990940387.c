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
static const char *ng0 = "/home/robert/UMD_RISC-16G5/ProjectLab2/Combined/IMSEL.vhd";



static void work_a_1624926867_3990940387_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3168);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3072);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1624926867_3990940387_p_1(char *t0)
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
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    t1 = (t0 + 2752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4917);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB7:    t6 = (t0 + 4921);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB5;

LAB8:    t9 = (t0 + 4925);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB5;

LAB9:    t12 = (t0 + 4929);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB5;

LAB10:    t15 = (t0 + 4933);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB5;

LAB11:    t18 = (t0 + 4937);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB5;

LAB12:
LAB6:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3232);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(42, ng0);

LAB16:    t2 = (t0 + 3088);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB17;

LAB1:    return;
LAB5:    xsi_set_current_line(43, ng0);
    t21 = (t0 + 3232);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)3;
    xsi_driver_first_trans_fast(t21);
    goto LAB4;

LAB13:;
LAB14:    t3 = (t0 + 3088);
    *((int *)t3) = 0;
    goto LAB2;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

}


extern void work_a_1624926867_3990940387_init()
{
	static char *pe[] = {(void *)work_a_1624926867_3990940387_p_0,(void *)work_a_1624926867_3990940387_p_1};
	xsi_register_didat("work_a_1624926867_3990940387", "isim/TopLevel_tb_isim_beh.exe.sim/work/a_1624926867_3990940387.didat");
	xsi_register_executes(pe);
}

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
static const char *ng0 = "/home/robert/Github/UMD_RISC-16G5/ProjectLab2/Combined/ProjLab01.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1750261154_1181938964_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(92, ng0);

LAB3:    t1 = (t0 + 11752U);
    t2 = *((char **)t1);
    t1 = (t0 + 14944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 14784);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1750261154_1181938964_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(93, ng0);

LAB3:    t1 = (t0 + 8552U);
    t2 = *((char **)t1);
    t1 = (t0 + 15008);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 14800);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1750261154_1181938964_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 13720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(379, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 29152);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(380, ng0);
    t2 = (t0 + 8072U);
    t3 = *((char **)t2);
    t2 = (t0 + 15072);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 16U);
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(379, ng0);

LAB11:    t2 = (t0 + 14816);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(380, ng0);
    t6 = (t0 + 11112U);
    t7 = *((char **)t6);
    t6 = (t0 + 15072);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 16U);
    xsi_driver_first_trans_fast(t6);
    goto LAB4;

LAB8:;
LAB9:    t3 = (t0 + 14816);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}

static void work_a_1750261154_1181938964_p_3(char *t0)
{
    char t9[16];
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 13968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(435, ng0);
    t2 = (t0 + 7592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(435, ng0);

LAB11:    t2 = (t0 + 14832);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(436, ng0);
    t5 = (t0 + 29156);
    t7 = (t0 + 4872U);
    t8 = *((char **)t7);
    t10 = ((IEEE_P_2592010699) + 4000);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 7;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (7 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t0 + 28344U);
    t7 = xsi_base_array_concat(t7, t9, t10, (char)97, t5, t11, (char)97, t8, t13, (char)101);
    t15 = (8U + 8U);
    t16 = (16U != t15);
    if (t16 == 1)
        goto LAB7;

LAB8:    t17 = (t0 + 15136);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t7, 16U);
    xsi_driver_first_trans_fast(t17);
    goto LAB4;

LAB6:    xsi_set_current_line(436, ng0);
    t2 = (t0 + 6632U);
    t3 = *((char **)t2);
    t2 = (t0 + 15136);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_size_not_matching(16U, t15, 0);
    goto LAB8;

LAB9:    t3 = (t0 + 14832);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}

static void work_a_1750261154_1181938964_p_4(char *t0)
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
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 14216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(506, ng0);
    t2 = (t0 + 11912U);
    t3 = *((char **)t2);
    t2 = (t0 + 29164);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 29166);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB10:    t9 = (t0 + 29168);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(507, ng0);
    t2 = (t0 + 8712U);
    t3 = *((char **)t2);
    t2 = (t0 + 15200);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(506, ng0);

LAB15:    t2 = (t0 + 14848);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(507, ng0);
    t12 = (t0 + 8072U);
    t13 = *((char **)t12);
    t12 = (t0 + 15200);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 16U);
    xsi_driver_first_trans_fast(t12);
    goto LAB4;

LAB6:    xsi_set_current_line(507, ng0);
    t2 = (t0 + 9352U);
    t3 = *((char **)t2);
    t2 = (t0 + 15200);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(507, ng0);
    t2 = (t0 + 9512U);
    t3 = *((char **)t2);
    t2 = (t0 + 15200);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB12:;
LAB13:    t3 = (t0 + 14848);
    *((int *)t3) = 0;
    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}

static void work_a_1750261154_1181938964_p_5(char *t0)
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
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 14464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(512, ng0);
    t2 = (t0 + 12072U);
    t3 = *((char **)t2);
    t2 = (t0 + 29170);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 29172);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB10:    t9 = (t0 + 29174);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(513, ng0);
    t2 = (t0 + 8872U);
    t3 = *((char **)t2);
    t2 = (t0 + 15264);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(512, ng0);

LAB15:    t2 = (t0 + 14864);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(513, ng0);
    t12 = (t0 + 8072U);
    t13 = *((char **)t12);
    t12 = (t0 + 15264);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 16U);
    xsi_driver_first_trans_fast(t12);
    goto LAB4;

LAB6:    xsi_set_current_line(513, ng0);
    t2 = (t0 + 9352U);
    t3 = *((char **)t2);
    t2 = (t0 + 15264);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(513, ng0);
    t2 = (t0 + 9512U);
    t3 = *((char **)t2);
    t2 = (t0 + 15264);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB12:;
LAB13:    t3 = (t0 + 14864);
    *((int *)t3) = 0;
    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}


extern void work_a_1750261154_1181938964_init()
{
	static char *pe[] = {(void *)work_a_1750261154_1181938964_p_0,(void *)work_a_1750261154_1181938964_p_1,(void *)work_a_1750261154_1181938964_p_2,(void *)work_a_1750261154_1181938964_p_3,(void *)work_a_1750261154_1181938964_p_4,(void *)work_a_1750261154_1181938964_p_5};
	xsi_register_didat("work_a_1750261154_1181938964", "isim/Combined_tb_isim_beh.exe.sim/work/a_1750261154_1181938964.didat");
	xsi_register_executes(pe);
}

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
static const char *ng0 = "//vnx-cifs/coefs/eng/shared/CPARKS1/Xilinx/BranchPredictor/BranchPredictor_tb.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_3785335384_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3785335384_2372691052_p_1(char *t0)
{
    char t13[16];
    char t14[16];
    char t15[16];
    char t17[16];
    char t21[16];
    char t23[16];
    char t27[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    int64 t10;
    int t11;
    int t12;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned char t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    int t46;
    int t47;
    int t48;
    int t49;
    int t50;

LAB0:    t1 = (t0 + 3200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 6264);
    t4 = (t0 + 3648);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 6268);
    t4 = (t0 + 3712);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t10 = (t9 * 2);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t10);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 6272);
    *((int *)t2) = 0;
    t3 = (t0 + 6276);
    *((int *)t3) = 1;
    t11 = 0;
    t12 = 1;

LAB8:    if (t11 <= t12)
        goto LAB9;

LAB11:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 6304);
    t4 = (t0 + 3648);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 6308);
    t4 = (t0 + 3712);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 3776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(112, ng0);

LAB50:    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(91, ng0);
    t4 = (t0 + 6272);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t13, *((int *)t4), 1);
    t6 = (t0 + 6272);
    t7 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, *((int *)t6), 1);
    t16 = ((IEEE_P_2592010699) + 4024);
    t8 = xsi_base_array_concat(t8, t15, t16, (char)97, t5, t13, (char)97, t7, t14, (char)101);
    t18 = (t0 + 6272);
    t19 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, *((int *)t18), 1);
    t22 = ((IEEE_P_2592010699) + 4024);
    t20 = xsi_base_array_concat(t20, t21, t22, (char)97, t8, t15, (char)97, t19, t17, (char)101);
    t24 = (t0 + 6272);
    t25 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t23, *((int *)t24), 1);
    t28 = ((IEEE_P_2592010699) + 4024);
    t26 = xsi_base_array_concat(t26, t27, t28, (char)97, t20, t21, (char)97, t25, t23, (char)101);
    t29 = (t13 + 12U);
    t30 = *((unsigned int *)t29);
    t30 = (t30 * 1U);
    t31 = (t14 + 12U);
    t32 = *((unsigned int *)t31);
    t32 = (t32 * 1U);
    t33 = (t30 + t32);
    t34 = (t17 + 12U);
    t35 = *((unsigned int *)t34);
    t35 = (t35 * 1U);
    t36 = (t33 + t35);
    t37 = (t23 + 12U);
    t38 = *((unsigned int *)t37);
    t38 = (t38 * 1U);
    t39 = (t36 + t38);
    t40 = (4U != t39);
    if (t40 == 1)
        goto LAB12;

LAB13:    t41 = (t0 + 3712);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t26, 4U);
    xsi_driver_first_trans_fast(t41);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 6280);
    *((int *)t2) = 0;
    t3 = (t0 + 6284);
    *((int *)t3) = 1;
    t46 = 0;
    t47 = 1;

LAB14:    if (t46 <= t47)
        goto LAB15;

LAB17:
LAB10:    t2 = (t0 + 6272);
    t11 = *((int *)t2);
    t3 = (t0 + 6276);
    t12 = *((int *)t3);
    if (t11 == t12)
        goto LAB11;

LAB47:    t46 = (t11 + 1);
    t11 = t46;
    t4 = (t0 + 6272);
    *((int *)t4) = t11;
    goto LAB8;

LAB12:    xsi_size_not_matching(4U, t39, 0);
    goto LAB13;

LAB15:    xsi_set_current_line(93, ng0);
    t4 = (t0 + 6280);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t13, *((int *)t4), 1);
    t6 = (t0 + 6280);
    t7 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, *((int *)t6), 1);
    t16 = ((IEEE_P_2592010699) + 4024);
    t8 = xsi_base_array_concat(t8, t15, t16, (char)97, t5, t13, (char)97, t7, t14, (char)101);
    t18 = (t0 + 6280);
    t19 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, *((int *)t18), 1);
    t22 = ((IEEE_P_2592010699) + 4024);
    t20 = xsi_base_array_concat(t20, t21, t22, (char)97, t8, t15, (char)97, t19, t17, (char)101);
    t24 = (t0 + 6280);
    t25 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t23, *((int *)t24), 1);
    t28 = ((IEEE_P_2592010699) + 4024);
    t26 = xsi_base_array_concat(t26, t27, t28, (char)97, t20, t21, (char)97, t25, t23, (char)101);
    t29 = (t13 + 12U);
    t30 = *((unsigned int *)t29);
    t30 = (t30 * 1U);
    t31 = (t14 + 12U);
    t32 = *((unsigned int *)t31);
    t32 = (t32 * 1U);
    t33 = (t30 + t32);
    t34 = (t17 + 12U);
    t35 = *((unsigned int *)t34);
    t35 = (t35 * 1U);
    t36 = (t33 + t35);
    t37 = (t23 + 12U);
    t38 = *((unsigned int *)t37);
    t38 = (t38 * 1U);
    t39 = (t36 + t38);
    t40 = (4U != t39);
    if (t40 == 1)
        goto LAB18;

LAB19:    t41 = (t0 + 3648);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t26, 4U);
    xsi_driver_first_trans_fast(t41);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 6288);
    *((int *)t2) = 0;
    t3 = (t0 + 6292);
    *((int *)t3) = 2;
    t48 = 0;
    t49 = 2;

LAB20:    if (t48 <= t49)
        goto LAB21;

LAB23:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 6296);
    *((int *)t2) = 0;
    t3 = (t0 + 6300);
    *((int *)t3) = 2;
    t48 = 0;
    t49 = 2;

LAB33:    if (t48 <= t49)
        goto LAB34;

LAB36:
LAB16:    t2 = (t0 + 6280);
    t46 = *((int *)t2);
    t3 = (t0 + 6284);
    t47 = *((int *)t3);
    if (t46 == t47)
        goto LAB17;

LAB46:    t48 = (t46 + 1);
    t46 = t48;
    t4 = (t0 + 6280);
    *((int *)t4) = t46;
    goto LAB14;

LAB18:    xsi_size_not_matching(4U, t39, 0);
    goto LAB19;

LAB21:    xsi_set_current_line(95, ng0);
    t4 = (t0 + 3776);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t9);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB22:    t2 = (t0 + 6288);
    t48 = *((int *)t2);
    t3 = (t0 + 6292);
    t49 = *((int *)t3);
    if (t48 == t49)
        goto LAB23;

LAB32:    t50 = (t48 + 1);
    t48 = t50;
    t4 = (t0 + 6288);
    *((int *)t4) = t48;
    goto LAB20;

LAB24:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 3776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t9);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    goto LAB22;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB34:    xsi_set_current_line(101, ng0);
    t4 = (t0 + 3776);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t10 = (t9 * 2);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t10);

LAB39:    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB35:    t2 = (t0 + 6296);
    t48 = *((int *)t2);
    t3 = (t0 + 6300);
    t49 = *((int *)t3);
    if (t48 == t49)
        goto LAB36;

LAB45:    t50 = (t48 + 1);
    t48 = t50;
    t4 = (t0 + 6296);
    *((int *)t4) = t48;
    goto LAB33;

LAB37:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t10 = (t9 * 2);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t10);

LAB43:    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB38:    goto LAB37;

LAB40:    goto LAB38;

LAB41:    goto LAB35;

LAB42:    goto LAB41;

LAB44:    goto LAB42;

LAB48:    goto LAB2;

LAB49:    goto LAB48;

LAB51:    goto LAB49;

}


extern void work_a_3785335384_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3785335384_2372691052_p_0,(void *)work_a_3785335384_2372691052_p_1};
	xsi_register_didat("work_a_3785335384_2372691052", "isim/BranchPredictor_tb_isim_beh.exe.sim/work/a_3785335384_2372691052.didat");
	xsi_register_executes(pe);
}

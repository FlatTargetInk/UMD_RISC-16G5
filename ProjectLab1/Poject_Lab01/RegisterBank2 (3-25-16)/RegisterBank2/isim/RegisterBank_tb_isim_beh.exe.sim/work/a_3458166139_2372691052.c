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
static const char *ng0 = "//vnx-cifs/coefs/eng/shared/tdoucette/ECE 368/Poject_Lab01/RegisterBank2 (3-25-16)/RegisterBank2/RegisterBank_tb.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_3458166139_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3400);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3400);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3458166139_2372691052_p_1(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    unsigned int t22;

LAB0:    t1 = (t0 + 3840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(102, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2608U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4288);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2608U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 8072);
    *((int *)t2) = 0;
    t4 = (t0 + 8076);
    *((int *)t4) = 15;
    t9 = 0;
    t10 = 15;

LAB16:    if (t9 <= t10)
        goto LAB17;

LAB19:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 4288);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 4480);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 2608U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t3);

LAB31:    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    xsi_set_current_line(112, ng0);
    t6 = (t0 + 8072);
    t7 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, *((int *)t6), 4);
    t8 = (t0 + 4352);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2608U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB18:    t2 = (t0 + 8072);
    t9 = *((int *)t2);
    t4 = (t0 + 8076);
    t10 = *((int *)t4);
    if (t9 == t10)
        goto LAB19;

LAB28:    t16 = (t9 + 1);
    t9 = t16;
    t6 = (t0 + 8072);
    *((int *)t6) = t9;
    goto LAB16;

LAB20:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 8072);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, *((int *)t2), 16);
    t6 = (t0 + 4416);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 2608U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t3);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    goto LAB18;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB29:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 8080);
    *((int *)t2) = 0;
    t4 = (t0 + 8084);
    *((int *)t4) = 14;
    t9 = 0;
    t10 = 14;

LAB33:    if (t9 <= t10)
        goto LAB34;

LAB36:    xsi_set_current_line(129, ng0);

LAB60:    *((char **)t1) = &&LAB61;
    goto LAB1;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

LAB34:    xsi_set_current_line(123, ng0);
    t6 = (t0 + 8080);
    t7 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, *((int *)t6), 4);
    t8 = (t0 + 4544);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 8080);
    t16 = *((int *)t2);
    t17 = (t16 + 1);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, t17, 4);
    t6 = (t0 + 4608);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 2608U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t3);

LAB39:    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB35:    t2 = (t0 + 8080);
    t9 = *((int *)t2);
    t4 = (t0 + 8084);
    t10 = *((int *)t4);
    if (t9 == t10)
        goto LAB36;

LAB57:    t16 = (t9 + 1);
    t9 = t16;
    t6 = (t0 + 8080);
    *((int *)t6) = t9;
    goto LAB33;

LAB37:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t18 = (15 - 3);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t21 = 1;
    if (4U == 4U)
        goto LAB43;

LAB44:    t21 = 0;

LAB45:    if (t21 == 0)
        goto LAB41;

LAB42:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t18 = (15 - 3);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t21 = 1;
    if (4U == 4U)
        goto LAB51;

LAB52:    t21 = 0;

LAB53:    if (t21 == 0)
        goto LAB49;

LAB50:    goto LAB35;

LAB38:    goto LAB37;

LAB40:    goto LAB38;

LAB41:    t12 = (t0 + 8088);
    xsi_report(t12, 11U, (unsigned char)2);
    goto LAB42;

LAB43:    t22 = 0;

LAB46:    if (t22 < 4U)
        goto LAB47;
    else
        goto LAB45;

LAB47:    t6 = (t2 + t22);
    t8 = (t7 + t22);
    if (*((unsigned char *)t6) != *((unsigned char *)t8))
        goto LAB44;

LAB48:    t22 = (t22 + 1);
    goto LAB46;

LAB49:    t12 = (t0 + 8099);
    xsi_report(t12, 11U, (unsigned char)2);
    goto LAB50;

LAB51:    t22 = 0;

LAB54:    if (t22 < 4U)
        goto LAB55;
    else
        goto LAB53;

LAB55:    t6 = (t2 + t22);
    t8 = (t7 + t22);
    if (*((unsigned char *)t6) != *((unsigned char *)t8))
        goto LAB52;

LAB56:    t22 = (t22 + 1);
    goto LAB54;

LAB58:    goto LAB2;

LAB59:    goto LAB58;

LAB61:    goto LAB59;

}


extern void work_a_3458166139_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3458166139_2372691052_p_0,(void *)work_a_3458166139_2372691052_p_1};
	xsi_register_didat("work_a_3458166139_2372691052", "isim/RegisterBank_tb_isim_beh.exe.sim/work/a_3458166139_2372691052.didat");
	xsi_register_executes(pe);
}
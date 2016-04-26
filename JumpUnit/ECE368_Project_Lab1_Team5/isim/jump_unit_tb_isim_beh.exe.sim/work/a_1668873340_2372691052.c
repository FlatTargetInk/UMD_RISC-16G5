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
static const char *ng0 = "/home/robert/UMD_RISC-16G5/JumpUnit/ECE368_Project_Lab1_Team5/jump_unit_tb.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );


static void work_a_1668873340_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3736);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2912);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3736);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2912);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1668873340_2372691052_p_1(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    char *t14;
    char *t15;
    int t16;
    int t17;
    int t18;
    int t19;
    unsigned char t20;
    unsigned char t21;
    unsigned int t22;
    unsigned char t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned char t27;
    unsigned char t28;
    unsigned char t30;
    int t31;

LAB0:    t1 = (t0 + 3352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 * 10);
    t2 = (t0 + 3160);
    xsi_process_wait(t2, t5);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 6464);
    t6 = (t0 + 3800);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 6468);
    t6 = (t0 + 3864);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 6472);
    t6 = (t0 + 3928);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3160);
    xsi_process_wait(t2, t4);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 6476);
    *((int *)t2) = 0;
    t3 = (t0 + 6480);
    *((int *)t3) = 15;
    t11 = 0;
    t12 = 15;

LAB12:    if (t11 <= t12)
        goto LAB13;

LAB15:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 6727);
    t6 = (t0 + 3800);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 6731);
    t6 = (t0 + 3864);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 6735);
    t6 = (t0 + 3928);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(126, ng0);

LAB101:    *((char **)t1) = &&LAB102;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(101, ng0);
    t6 = (t0 + 6476);
    t7 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t13, *((int *)t6), 4);
    t8 = (t0 + 3800);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3160);
    xsi_process_wait(t2, t4);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    t2 = (t0 + 6476);
    t11 = *((int *)t2);
    t3 = (t0 + 6480);
    t12 = *((int *)t3);
    if (t11 == t12)
        goto LAB15;

LAB98:    t16 = (t11 + 1);
    t11 = t16;
    t6 = (t0 + 6476);
    *((int *)t6) = t11;
    goto LAB12;

LAB16:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 6484);
    *((int *)t2) = 0;
    t3 = (t0 + 6488);
    *((int *)t3) = 3;
    t16 = 0;
    t17 = 3;

LAB20:    if (t16 <= t17)
        goto LAB21;

LAB23:    goto LAB14;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    xsi_set_current_line(104, ng0);
    t6 = (t0 + 6484);
    t7 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t13, *((int *)t6), 4);
    t8 = (t0 + 3864);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3160);
    xsi_process_wait(t2, t4);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB22:    t2 = (t0 + 6484);
    t16 = *((int *)t2);
    t3 = (t0 + 6488);
    t17 = *((int *)t3);
    if (t16 == t17)
        goto LAB23;

LAB97:    t18 = (t16 + 1);
    t16 = t18;
    t6 = (t0 + 6484);
    *((int *)t6) = t16;
    goto LAB20;

LAB24:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 6492);
    *((int *)t2) = 0;
    t3 = (t0 + 6496);
    *((int *)t3) = 3;
    t18 = 0;
    t19 = 3;

LAB28:    if (t18 <= t19)
        goto LAB29;

LAB31:    goto LAB22;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB29:    xsi_set_current_line(107, ng0);
    t6 = (t0 + 6492);
    t7 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t13, *((int *)t6), 4);
    t8 = (t0 + 3928);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3160);
    xsi_process_wait(t2, t4);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB30:    t2 = (t0 + 6492);
    t18 = *((int *)t2);
    t3 = (t0 + 6496);
    t19 = *((int *)t3);
    if (t18 == t19)
        goto LAB31;

LAB96:    t31 = (t18 + 1);
    t18 = t31;
    t6 = (t0 + 6492);
    *((int *)t6) = t18;
    goto LAB28;

LAB32:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t21 = 1;
    if (4U == 4U)
        goto LAB42;

LAB43:    t21 = 0;

LAB44:    if (t21 == 1)
        goto LAB39;

LAB40:    t20 = (unsigned char)0;

LAB41:    if (t20 != 0)
        goto LAB36;

LAB38:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t21 = 1;
    if (4U == 4U)
        goto LAB61;

LAB62:    t21 = 0;

LAB63:    if (t21 == 1)
        goto LAB58;

LAB59:    t20 = (unsigned char)0;

LAB60:    if (t20 != 0)
        goto LAB56;

LAB57:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t21 = 1;
    if (4U == 4U)
        goto LAB80;

LAB81:    t21 = 0;

LAB82:    t23 = (!(t21));
    if (t23 == 1)
        goto LAB77;

LAB78:    t20 = (unsigned char)0;

LAB79:    if (t20 != 0)
        goto LAB75;

LAB76:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t20 = *((unsigned char *)t3);
    t21 = (t20 == (unsigned char)2);
    if (t21 == 0)
        goto LAB94;

LAB95:
LAB37:    goto LAB30;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    xsi_set_current_line(111, ng0);
    t25 = (t0 + 1832U);
    t26 = *((char **)t25);
    t27 = *((unsigned char *)t26);
    t28 = (t27 == (unsigned char)3);
    if (t28 == 0)
        goto LAB54;

LAB55:    goto LAB37;

LAB39:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 6500);
    t23 = 1;
    if (4U == 4U)
        goto LAB48;

LAB49:    t23 = 0;

LAB50:    t20 = t23;
    goto LAB41;

LAB42:    t22 = 0;

LAB45:    if (t22 < 4U)
        goto LAB46;
    else
        goto LAB44;

LAB46:    t2 = (t3 + t22);
    t7 = (t6 + t22);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB43;

LAB47:    t22 = (t22 + 1);
    goto LAB45;

LAB48:    t24 = 0;

LAB51:    if (t24 < 4U)
        goto LAB52;
    else
        goto LAB50;

LAB52:    t14 = (t9 + t24);
    t15 = (t8 + t24);
    if (*((unsigned char *)t14) != *((unsigned char *)t15))
        goto LAB49;

LAB53:    t24 = (t24 + 1);
    goto LAB51;

LAB54:    t25 = (t0 + 6504);
    xsi_report(t25, 52U, (unsigned char)2);
    goto LAB55;

LAB56:    xsi_set_current_line(113, ng0);
    t25 = (t0 + 1832U);
    t26 = *((char **)t25);
    t28 = *((unsigned char *)t26);
    t30 = (t28 == (unsigned char)2);
    if (t30 == 0)
        goto LAB73;

LAB74:    goto LAB37;

LAB58:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 6556);
    t23 = 1;
    if (4U == 4U)
        goto LAB67;

LAB68:    t23 = 0;

LAB69:    t27 = (!(t23));
    t20 = t27;
    goto LAB60;

LAB61:    t22 = 0;

LAB64:    if (t22 < 4U)
        goto LAB65;
    else
        goto LAB63;

LAB65:    t2 = (t3 + t22);
    t7 = (t6 + t22);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB62;

LAB66:    t22 = (t22 + 1);
    goto LAB64;

LAB67:    t24 = 0;

LAB70:    if (t24 < 4U)
        goto LAB71;
    else
        goto LAB69;

LAB71:    t14 = (t9 + t24);
    t15 = (t8 + t24);
    if (*((unsigned char *)t14) != *((unsigned char *)t15))
        goto LAB68;

LAB72:    t24 = (t24 + 1);
    goto LAB70;

LAB73:    t25 = (t0 + 6560);
    xsi_report(t25, 54U, (unsigned char)2);
    goto LAB74;

LAB75:    xsi_set_current_line(115, ng0);
    t25 = (t0 + 1832U);
    t26 = *((char **)t25);
    t28 = *((unsigned char *)t26);
    t30 = (t28 == (unsigned char)2);
    if (t30 == 0)
        goto LAB92;

LAB93:    goto LAB37;

LAB77:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 6614);
    t27 = 1;
    if (4U == 4U)
        goto LAB86;

LAB87:    t27 = 0;

LAB88:    t20 = t27;
    goto LAB79;

LAB80:    t22 = 0;

LAB83:    if (t22 < 4U)
        goto LAB84;
    else
        goto LAB82;

LAB84:    t2 = (t3 + t22);
    t7 = (t6 + t22);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB81;

LAB85:    t22 = (t22 + 1);
    goto LAB83;

LAB86:    t24 = 0;

LAB89:    if (t24 < 4U)
        goto LAB90;
    else
        goto LAB88;

LAB90:    t14 = (t9 + t24);
    t15 = (t8 + t24);
    if (*((unsigned char *)t14) != *((unsigned char *)t15))
        goto LAB87;

LAB91:    t24 = (t24 + 1);
    goto LAB89;

LAB92:    t25 = (t0 + 6618);
    xsi_report(t25, 54U, (unsigned char)2);
    goto LAB93;

LAB94:    t2 = (t0 + 6672);
    xsi_report(t2, 55U, (unsigned char)2);
    goto LAB95;

LAB99:    goto LAB2;

LAB100:    goto LAB99;

LAB102:    goto LAB100;

}


extern void work_a_1668873340_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1668873340_2372691052_p_0,(void *)work_a_1668873340_2372691052_p_1};
	xsi_register_didat("work_a_1668873340_2372691052", "isim/jump_unit_tb_isim_beh.exe.sim/work/a_1668873340_2372691052.didat");
	xsi_register_executes(pe);
}

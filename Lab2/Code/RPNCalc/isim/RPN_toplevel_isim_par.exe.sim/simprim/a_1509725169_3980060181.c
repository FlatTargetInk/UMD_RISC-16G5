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



static void simprim_a_1509725169_3980060181_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:
LAB3:    t1 = (t0 + 2704);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void simprim_a_1509725169_3980060181_4259052524_init()
{
	static char *pe[] = {(void *)simprim_a_1509725169_3980060181_p_0};
	xsi_register_didat("simprim_a_1509725169_3980060181_4259052524", "isim/RPN_toplevel_isim_par.exe.sim/simprim/a_1509725169_3980060181_4259052524.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1509725169_3980060181_3920765062_init()
{
	static char *pe[] = {(void *)simprim_a_1509725169_3980060181_p_0};
	xsi_register_didat("simprim_a_1509725169_3980060181_3920765062", "isim/RPN_toplevel_isim_par.exe.sim/simprim/a_1509725169_3980060181_3920765062.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1509725169_3980060181_0370172253_init()
{
	static char *pe[] = {(void *)simprim_a_1509725169_3980060181_p_0};
	xsi_register_didat("simprim_a_1509725169_3980060181_0370172253", "isim/RPN_toplevel_isim_par.exe.sim/simprim/a_1509725169_3980060181_0370172253.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1509725169_3980060181_0232794887_init()
{
	static char *pe[] = {(void *)simprim_a_1509725169_3980060181_p_0};
	xsi_register_didat("simprim_a_1509725169_3980060181_0232794887", "isim/RPN_toplevel_isim_par.exe.sim/simprim/a_1509725169_3980060181_0232794887.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1509725169_3980060181_4007439925_init()
{
	static char *pe[] = {(void *)simprim_a_1509725169_3980060181_p_0};
	xsi_register_didat("simprim_a_1509725169_3980060181_4007439925", "isim/RPN_toplevel_isim_par.exe.sim/simprim/a_1509725169_3980060181_4007439925.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1509725169_3980060181_0433961640_init()
{
	static char *pe[] = {(void *)simprim_a_1509725169_3980060181_p_0};
	xsi_register_didat("simprim_a_1509725169_3980060181_0433961640", "isim/RPN_toplevel_isim_par.exe.sim/simprim/a_1509725169_3980060181_0433961640.didat");
	xsi_register_executes(pe);
}

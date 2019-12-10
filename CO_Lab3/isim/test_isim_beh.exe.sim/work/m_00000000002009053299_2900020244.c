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
static const char *ng0 = "C:/Users/Ziyang Guo/Desktop/CO_Lab3/CO_Lab3/EXTEND.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {32U, 0U};
static int ng3[] = {16, 0};
static unsigned int ng4[] = {33U, 0U};
static unsigned int ng5[] = {48U, 0U};
static int ng6[] = {2, 0};
static unsigned int ng7[] = {49U, 0U};
static int ng8[] = {4, 0};



static void Initial_30_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(30, ng0);

LAB2:    xsi_set_current_line(31, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Always_33_1(char *t0)
{
    char t7[8];
    char t10[8];
    char t13[8];
    char t22[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3416);
    *((int *)t2) = 1;
    t3 = (t0 + 3128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(35, ng0);

LAB18:    xsi_set_current_line(36, ng0);
    t8 = (t0 + 1208U);
    t9 = *((char **)t8);
    t8 = ((char*)((ng3)));
    t11 = (t0 + 1208U);
    t12 = *((char **)t11);
    memset(t13, 0, 8);
    t11 = (t13 + 4);
    t14 = (t12 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 15);
    t17 = (t16 & 1);
    *((unsigned int *)t13) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 >> 15);
    t20 = (t19 & 1);
    *((unsigned int *)t11) = t20;
    xsi_vlog_mul_concat(t10, 16, 1, t8, 1U, t13, 1);
    xsi_vlogtype_concat(t7, 32, 32, 2U, t10, 16, t9, 16);
    t21 = (t0 + 1928);
    xsi_vlogvar_assign_value(t21, t7, 0, 0, 32);
    goto LAB17;

LAB9:    xsi_set_current_line(38, ng0);

LAB19:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t8 = (t0 + 1208U);
    t9 = *((char **)t8);
    memset(t13, 0, 8);
    t8 = (t13 + 4);
    t11 = (t9 + 4);
    t15 = *((unsigned int *)t9);
    t16 = (t15 >> 15);
    t17 = (t16 & 1);
    *((unsigned int *)t13) = t17;
    t18 = *((unsigned int *)t11);
    t19 = (t18 >> 15);
    t20 = (t19 & 1);
    *((unsigned int *)t8) = t20;
    xsi_vlog_mul_concat(t10, 16, 1, t3, 1U, t13, 1);
    xsi_vlogtype_concat(t7, 32, 32, 2U, t10, 16, t4, 16);
    t12 = (t0 + 1928);
    xsi_vlogvar_assign_value(t12, t7, 0, 0, 32);
    goto LAB17;

LAB11:    xsi_set_current_line(41, ng0);

LAB20:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t8 = (t0 + 1208U);
    t9 = *((char **)t8);
    memset(t13, 0, 8);
    t8 = (t13 + 4);
    t11 = (t9 + 4);
    t15 = *((unsigned int *)t9);
    t16 = (t15 >> 15);
    t17 = (t16 & 1);
    *((unsigned int *)t13) = t17;
    t18 = *((unsigned int *)t11);
    t19 = (t18 >> 15);
    t20 = (t19 & 1);
    *((unsigned int *)t8) = t20;
    xsi_vlog_mul_concat(t10, 16, 1, t3, 1U, t13, 1);
    xsi_vlogtype_concat(t7, 32, 32, 2U, t10, 16, t4, 16);
    t12 = (t0 + 1928);
    xsi_vlogvar_assign_value(t12, t7, 0, 0, 32);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t8 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_lshift(t7, 32, t4, 32, t8, 32);
    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t7, 0, 0, 32);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t8 = (t0 + 1528U);
    t9 = *((char **)t8);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t4, 32, t9, 32);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB17;

LAB13:    xsi_set_current_line(46, ng0);

LAB21:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng6)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_lshift(t10, 26, t4, 26, t3, 32);
    t8 = ((char*)((ng8)));
    t9 = (t0 + 1528U);
    t11 = *((char **)t9);
    memset(t22, 0, 8);
    t9 = (t22 + 4);
    t12 = (t11 + 4);
    t15 = *((unsigned int *)t11);
    t16 = (t15 >> 31);
    t17 = (t16 & 1);
    *((unsigned int *)t22) = t17;
    t18 = *((unsigned int *)t12);
    t19 = (t18 >> 31);
    t20 = (t19 & 1);
    *((unsigned int *)t9) = t20;
    xsi_vlog_mul_concat(t13, 4, 1, t8, 1U, t22, 1);
    xsi_vlogtype_concat(t7, 32, 30, 2U, t13, 4, t10, 26);
    t14 = (t0 + 1928);
    xsi_vlogvar_assign_value(t14, t7, 0, 0, 32);
    goto LAB17;

}


extern void work_m_00000000002009053299_2900020244_init()
{
	static char *pe[] = {(void *)Initial_30_0,(void *)Always_33_1};
	xsi_register_didat("work_m_00000000002009053299_2900020244", "isim/test_isim_beh.exe.sim/work/m_00000000002009053299_2900020244.didat");
	xsi_register_executes(pe);
}

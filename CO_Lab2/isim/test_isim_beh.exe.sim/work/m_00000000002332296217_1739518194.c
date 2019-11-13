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
static const char *ng0 = "C:/Users/guo/Desktop/computer-composition-lab/CO_Lab2/extender.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {15, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {65535U, 0U};
static int ng5[] = {31, 0};
static int ng6[] = {16, 0};
static unsigned int ng7[] = {1U, 0U};
static int ng8[] = {25, 0};
static unsigned int ng9[] = {63U, 0U};
static int ng10[] = {26, 0};



static void Always_27_0(char *t0)
{
    char t9[8];
    char t10[8];
    char t11[8];
    char t46[8];
    char t47[8];
    char t48[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    int t19;
    char *t20;
    unsigned int t21;
    int t22;
    int t23;
    char *t24;
    unsigned int t25;
    int t26;
    int t27;
    unsigned int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t49;
    char *t50;
    unsigned int t51;
    char *t52;
    unsigned int t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t4, 1);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t2, 1);
    if (t6 == 1)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(29, ng0);

LAB12:    xsi_set_current_line(30, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    t7 = (t0 + 1768);
    t12 = (t0 + 1768);
    t13 = (t12 + 72U);
    t14 = *((char **)t13);
    t15 = ((char*)((ng2)));
    t16 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t9, t10, t11, ((int*)(t14)), 2, t15, 32, 1, t16, 32, 1);
    t17 = (t9 + 4);
    t18 = *((unsigned int *)t17);
    t19 = (!(t18));
    t20 = (t10 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (!(t21));
    t23 = (t19 && t22);
    t24 = (t11 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (!(t25));
    t27 = (t23 && t26);
    if (t27 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t18 = *((unsigned int *)t3);
    t21 = (t18 >> 15);
    t25 = (t21 & 1);
    *((unsigned int *)t11) = t25;
    t28 = *((unsigned int *)t4);
    t30 = (t28 >> 15);
    t31 = (t30 & 1);
    *((unsigned int *)t2) = t31;
    memset(t10, 0, 8);
    t7 = (t11 + 4);
    t34 = *((unsigned int *)t7);
    t35 = (~(t34));
    t36 = *((unsigned int *)t11);
    t37 = (t36 & t35);
    t38 = (t37 & 1U);
    if (t38 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t7) != 0)
        goto LAB17;

LAB18:    t12 = (t10 + 4);
    t39 = *((unsigned int *)t10);
    t40 = *((unsigned int *)t12);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB19;

LAB20:    t42 = *((unsigned int *)t10);
    t43 = (~(t42));
    t44 = *((unsigned int *)t12);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t12) > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t10) > 0)
        goto LAB25;

LAB26:    memcpy(t9, t14, 8);

LAB27:    t15 = (t0 + 1768);
    t16 = (t0 + 1768);
    t17 = (t16 + 72U);
    t20 = *((char **)t17);
    t24 = ((char*)((ng5)));
    t49 = ((char*)((ng6)));
    xsi_vlog_convert_partindices(t46, t47, t48, ((int*)(t20)), 2, t24, 32, 1, t49, 32, 1);
    t50 = (t46 + 4);
    t51 = *((unsigned int *)t50);
    t6 = (!(t51));
    t52 = (t47 + 4);
    t53 = *((unsigned int *)t52);
    t19 = (!(t53));
    t22 = (t6 && t19);
    t54 = (t48 + 4);
    t55 = *((unsigned int *)t54);
    t23 = (!(t55));
    t26 = (t22 && t23);
    if (t26 == 1)
        goto LAB28;

LAB29:    goto LAB11;

LAB9:    xsi_set_current_line(33, ng0);

LAB30:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1768);
    t7 = (t0 + 1768);
    t8 = (t7 + 72U);
    t12 = *((char **)t8);
    t13 = ((char*)((ng8)));
    t14 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t9, t10, t11, ((int*)(t12)), 2, t13, 32, 1, t14, 32, 1);
    t15 = (t9 + 4);
    t18 = *((unsigned int *)t15);
    t19 = (!(t18));
    t16 = (t10 + 4);
    t21 = *((unsigned int *)t16);
    t22 = (!(t21));
    t23 = (t19 && t22);
    t17 = (t11 + 4);
    t25 = *((unsigned int *)t17);
    t26 = (!(t25));
    t27 = (t23 && t26);
    if (t27 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t18 = *((unsigned int *)t3);
    t21 = (t18 >> 25);
    t25 = (t21 & 1);
    *((unsigned int *)t11) = t25;
    t28 = *((unsigned int *)t4);
    t30 = (t28 >> 25);
    t31 = (t30 & 1);
    *((unsigned int *)t2) = t31;
    memset(t10, 0, 8);
    t7 = (t11 + 4);
    t34 = *((unsigned int *)t7);
    t35 = (~(t34));
    t36 = *((unsigned int *)t11);
    t37 = (t36 & t35);
    t38 = (t37 & 1U);
    if (t38 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t7) != 0)
        goto LAB35;

LAB36:    t12 = (t10 + 4);
    t39 = *((unsigned int *)t10);
    t40 = *((unsigned int *)t12);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB37;

LAB38:    t42 = *((unsigned int *)t10);
    t43 = (~(t42));
    t44 = *((unsigned int *)t12);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t12) > 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t10) > 0)
        goto LAB43;

LAB44:    memcpy(t9, t14, 8);

LAB45:    t15 = (t0 + 1768);
    t16 = (t0 + 1768);
    t17 = (t16 + 72U);
    t20 = *((char **)t17);
    t24 = ((char*)((ng5)));
    t49 = ((char*)((ng10)));
    xsi_vlog_convert_partindices(t46, t47, t48, ((int*)(t20)), 2, t24, 32, 1, t49, 32, 1);
    t50 = (t46 + 4);
    t51 = *((unsigned int *)t50);
    t6 = (!(t51));
    t52 = (t47 + 4);
    t53 = *((unsigned int *)t52);
    t19 = (!(t53));
    t22 = (t6 && t19);
    t54 = (t48 + 4);
    t55 = *((unsigned int *)t54);
    t23 = (!(t55));
    t26 = (t22 && t23);
    if (t26 == 1)
        goto LAB46;

LAB47:    goto LAB11;

LAB13:    t28 = *((unsigned int *)t11);
    t29 = (t28 + 0);
    t30 = *((unsigned int *)t9);
    t31 = *((unsigned int *)t10);
    t32 = (t30 - t31);
    t33 = (t32 + 1);
    xsi_vlogvar_assign_value(t7, t8, t29, *((unsigned int *)t10), t33);
    goto LAB14;

LAB15:    *((unsigned int *)t10) = 1;
    goto LAB18;

LAB17:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB18;

LAB19:    t13 = ((char*)((ng4)));
    goto LAB20;

LAB21:    t14 = ((char*)((ng1)));
    goto LAB22;

LAB23:    xsi_vlog_unsigned_bit_combine(t9, 16, t13, 16, t14, 16);
    goto LAB27;

LAB25:    memcpy(t9, t13, 8);
    goto LAB27;

LAB28:    t56 = *((unsigned int *)t48);
    t27 = (t56 + 0);
    t57 = *((unsigned int *)t46);
    t58 = *((unsigned int *)t47);
    t29 = (t57 - t58);
    t32 = (t29 + 1);
    xsi_vlogvar_assign_value(t15, t9, t27, *((unsigned int *)t47), t32);
    goto LAB29;

LAB31:    t28 = *((unsigned int *)t11);
    t29 = (t28 + 0);
    t30 = *((unsigned int *)t9);
    t31 = *((unsigned int *)t10);
    t32 = (t30 - t31);
    t33 = (t32 + 1);
    xsi_vlogvar_assign_value(t3, t4, t29, *((unsigned int *)t10), t33);
    goto LAB32;

LAB33:    *((unsigned int *)t10) = 1;
    goto LAB36;

LAB35:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB36;

LAB37:    t13 = ((char*)((ng9)));
    goto LAB38;

LAB39:    t14 = ((char*)((ng1)));
    goto LAB40;

LAB41:    xsi_vlog_unsigned_bit_combine(t9, 6, t13, 6, t14, 6);
    goto LAB45;

LAB43:    memcpy(t9, t13, 8);
    goto LAB45;

LAB46:    t56 = *((unsigned int *)t48);
    t27 = (t56 + 0);
    t57 = *((unsigned int *)t46);
    t58 = *((unsigned int *)t47);
    t29 = (t57 - t58);
    t32 = (t29 + 1);
    xsi_vlogvar_assign_value(t15, t9, t27, *((unsigned int *)t47), t32);
    goto LAB47;

}


extern void work_m_00000000002332296217_1739518194_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000002332296217_1739518194", "isim/test_isim_beh.exe.sim/work/m_00000000002332296217_1739518194.didat");
	xsi_register_executes(pe);
}

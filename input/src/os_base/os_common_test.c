#include <stdio.h>

#include "..\os_base\os_sput.h"

static void test_os_set_sw_bug(void)
{
   /* OS_SET_SW_BUG can not be tested */
}

static void test_os_get_current_time(void)
{
   /* TODO */
}

static void test_os_updatecurrenttime(void)
{
   /* TODO */
}

static void test_os_read_and_reset_current_time(void)
{
   /* TODO */
}

static void test_int_div(void)
{
   /* TODO */
}

static void test_int_mul(void)
{
   /* TODO */
}

static void test_int_add(void)
{
   /* TODO */
}

static void test_int_sub(void)
{
   /* TODO */
}

static void test_is_less(void)
{
   /* TODO */
}

static void test_is_less_or_equal(void)
{
   /* TODO */
}

static void test_is_equal(void)
{
   /* TODO */
}

static void test_is_greater_or_equal(void)
{
   /* TODO */
}

static void test_is_greater(void)
{
   /* TODO */
}

static void test_assign(void)
{
   /* TODO */
}

static void test_assign_null(void)
{
   /* TODO */
}

static void test_assign_uint32(void)
{
   /* TODO */
}

static void test_shift_left(void)
{
   /* TODO */
}

static void test_get_uint32_of_4_uint8(void)
{
   /* TODO */
}

static void test_set_4_uint8_to_uint32(void)
{
   /* TODO */
}

int main(int argc, char *argv[])
{
   sput_start_testing();

   sput_enter_suite("os common test");
   sput_run_test(test_os_set_sw_bug);
   sput_run_test(test_os_get_current_time);
   sput_run_test(test_os_updatecurrenttime);
   sput_run_test(test_os_read_and_reset_current_time);
   sput_run_test(test_int_div);
   sput_run_test(test_int_mul);
   sput_run_test(test_int_add);
   sput_run_test(test_int_sub);
   sput_run_test(test_is_less);
   sput_run_test(test_is_less_or_equal);
   sput_run_test(test_is_equal);
   sput_run_test(test_is_greater_or_equal);
   sput_run_test(test_is_greater);
   sput_run_test(test_assign);
   sput_run_test(test_assign_null);
   sput_run_test(test_assign_uint32);
   sput_run_test(test_shift_left);
   sput_run_test(test_get_uint32_of_4_uint8);
   sput_run_test(test_set_4_uint8_to_uint32);
   sput_finish_testing();

   return sput_get_return_value();
}

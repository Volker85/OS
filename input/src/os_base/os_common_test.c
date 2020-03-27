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

static void test_OS_UPDATE_CURRENT_TIME(void)
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

static void test_GET_UINT32_OF_4_UINT8(void)
{
   /* TODO */
}

static void test_SET_4_UINT8_TO_UINT32(void)
{
   /* TODO */
}

int main(int argc, char *argv[])
{
   sput_start_testing();

   sput_enter_suite("os common test");
   sput_run_test(test_os_set_sw_bug);
   sput_run_test(test_os_get_current_time);
   sput_run_test(test_OS_UPDATE_CURRENT_TIME);
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
   sput_run_test(test_GET_UINT32_OF_4_UINT8);
   sput_run_test(test_SET_4_UINT8_TO_UINT32);
   sput_finish_testing();

   return sput_get_return_value();
}

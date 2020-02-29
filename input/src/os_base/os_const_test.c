#include <stdio.h>

#include "..\os_base\os_sput.h"

static void test_dummy(void)
{
   /* OS_SET_SW_BUG can not be tested */
}

int main(int argc, char *argv[])
{
   sput_start_testing();

   sput_enter_suite("os const test");
   sput_run_test(test_dummy);
   sput_finish_testing();

   return sput_get_return_value();
}

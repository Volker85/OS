#include <stdio.h>

#include "..\os_base\os_sput.h"

static void test_os_init_task_system(void)
{
   //TODO
}

int main(int argc, char *argv[])
{
   sput_start_testing();
   sput_enter_suite("os exception test");
   sput_run_test(test_os_init_task_system);
   sput_finish_testing();

   return sput_get_return_value();
}

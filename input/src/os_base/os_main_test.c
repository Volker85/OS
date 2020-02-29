#include <stdio.h>

#include "..\os_base\os_sput.h"

static void test_os_determine_next_task_activation(void)
{
   //TODO
}

static void test_os_state_handler(void)
{
   //TODO
}

int main(int argc, char *argv[])
{
   sput_start_testing();
   sput_enter_suite("os main test");
   sput_run_test(test_os_determine_next_task_activation);
   sput_run_test(test_os_state_handler);
   sput_finish_testing();

   return sput_get_return_value();
}

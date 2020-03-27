#include <stdio.h>

#include "..\os_base\os_sput.h"

static void test_os_calloc(void)
{
   //TODO
}

static void test_os_realloc(void)
{
   //TODO
}

static void test_os_malloc(void)
{
   //TODO
}

static void test_OS_FREE(void)
{
   //TODO
}

int main(int argc, char *argv[])
{
   sput_start_testing();
   sput_enter_suite("os heap test");
   sput_run_test(test_os_calloc);
   sput_run_test(test_os_realloc);
   sput_run_test(test_os_malloc);
   sput_run_test(test_OS_FREE);
   sput_finish_testing();

   return sput_get_return_value();
}

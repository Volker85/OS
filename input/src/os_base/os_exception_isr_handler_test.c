#include <stdio.h>

#include "..\os_base\os_sput.h"

static void test_os_isrhandlerc0(void)
{
   //TODO
}


int main(int argc, char *argv[])
{
   sput_start_testing();

   sput_enter_suite("os exception isr handler test");
   sput_finish_testing();

   return sput_get_return_value();
}

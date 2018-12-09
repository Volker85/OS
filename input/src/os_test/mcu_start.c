#include <stdio.h>
#include "..\os_base\os_exception_isr_handler.h"
#include "sput.h"

static void test_01_start_os()
{
    /*sput_fail_unless(count_vowels("book")  == 2, "book == 2v");*/
    OS_Exception_RESET();
    while(1)
    {
       OS_Exception_Systick();   
    }   
    
}


int main(int argc, char *argv[])
{
    sput_start_testing();

    sput_run_test(test_01_start_os);  
    
    sput_finish_testing();

    return sput_get_return_value();
}

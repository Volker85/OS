#include <stdio.h>

#include "..\os_base\os_sput.h"

static void test_os_exception_read_status_registers(void)
{
   //TODO
}

static void test_os_exception_nmi(void)
{
   //TODO
}

static void test_os_exception_hardfault(void)
{
   //TODO
}

static void test_os_exception_mem_manag_fault(void)
{
   //TODO
}

static void test_os_exception_bus_fault(void)
{
   //TODO
}

static void test_os_exception_usage_fault(void)
{
   //TODO
}

static void test_os_exception_debug(void)
{
   //TODO
}

static void test_os_exception_pend_sv(void)
{
   //TODO
}

static void test_os_exception_systick(void)
{
   //TODO
}

static void test_os_exception_irq(void)
{
   //TODO
}

int main(int argc, char *argv[])
{
   sput_start_testing();
   sput_enter_suite("os exception test");
   sput_run_test(test_os_exception_read_status_registers);
   sput_run_test(test_os_exception_nmi);
   sput_run_test(test_os_exception_hardfault);
   sput_run_test(test_os_exception_mem_manag_fault);
   sput_run_test(test_os_exception_bus_fault);
   sput_run_test(os_exception_usage_fault);
   sput_run_test(test_os_exception_debug);
   sput_run_test(test_os_exception_pend_sv);
   sput_run_test(test_os_exception_systick);
   sput_run_test(test_os_exception_irq);
   sput_finish_testing();

   return sput_get_return_value();
}

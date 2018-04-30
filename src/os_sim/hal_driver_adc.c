#include "..\os_base\os_firstinc.h"
#include "hal_driver_adc.h"
unsigned_int16_t GET_RAW_ADC_VALUE(adc_channel_t adc_channel)
{
   ReferenceUnusedParameter(adc_channel);
   /*#warn "GET_RAW_ADC_VALUE not supported on windows"*/
   return 0;
}
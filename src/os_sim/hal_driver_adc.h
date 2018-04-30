#ifndef _hal_driver_adc_h_
#define _hal_driver_adc_h_
#include "..\os_base\os_firstinc.h"
typedef unsigned_int16_t adc_channel_t;
extern unsigned_int16_t GET_RAW_ADC_VALUE(adc_channel_t adc_channel);
#endif /* _mcu_config_h_ */
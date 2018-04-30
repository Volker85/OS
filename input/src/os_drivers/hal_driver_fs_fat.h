#ifndef _hal_driver_fs_fat_h_
#define _hal_driver_fs_fat_h_
#include "..\os_base\os_firstinc.h"

typedef struct file_s
{
   unsigned mode_r     : 1;
   unsigned mode_w     : 1;
   unsigned mode_a     : 1;
   unsigned mode_rplus : 1;
   unsigned mode_wplus : 1;
   unsigned mode_aplus : 1;
   unsigned free       : 2;
   unsigned max_file_name_size;
   unsigned used_file_name_size;
   unsigned_char_t name[256];
   uint8*   file_content;
} FILE;

#endif /* _hal_driver_fs_fat_h_ */
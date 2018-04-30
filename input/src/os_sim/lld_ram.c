#include "..\os_base\os_firstinc.h"
void LLF_CLEAR_ALL_RAM(void)
{
   /* this function is called only for device ARM and not in simulation because c library guarantees 0 initialized RAM at startup */
}
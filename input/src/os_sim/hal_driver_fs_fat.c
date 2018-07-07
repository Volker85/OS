#include "..\os_base\os_firstinc.h"
#include "..\os_drivers\hal_driver_fs_fat.h"

#define NR_OF_FILE_HANDLERS 5

FILE* FILE_HANDLER_POOL[NR_OF_FILE_HANDLERS];
static unsigned FILE_HANDLER_POOL_USED[NR_OF_FILE_HANDLERS];
Local FILE* fopen(const char *filename, const char *mode);
Local int fclose(FILE* file_ptr);

FILE* fopen(const char *filename, const char *mode)
{
   uint32 i;
   FILE* file_ptr = 0;
   uint32 current_file_obj_number = 0;

   for(i = 0; i < NR_OF_FILE_HANDLERS; i++)
   {
      if(FILE_HANDLER_POOL_USED[i] == False)
      {
         /* get the next free object number */
         FILE_HANDLER_POOL_USED[i] = True;
         current_file_obj_number   = i;

         /* get the next free object (via ptr)*/
         file_ptr = FILE_HANDLER_POOL[current_file_obj_number];

         /* set the mode:
         "r"	Textdatei zum lesen und er�ffnen
         "w"	Textdatei zum Schreiben erzeugen; gegebenenfalls alten Inhalt wegwerfen
         "a"	anf�gen; Textdatei zum Schreiben am Dateiende er�ffnen oder erzeugen
         "r+"	Textdatei zum �ndern er�ffnen (Lesen und Schreiben)
         "w+"	Textdatei zum �ndern erzeugen; gegebenenfalls alten Inhalt wegwerfen
         "a+"	anf�gen; Textdatei zum �ndern er�ffnen oder erzeugen, Schreiben am Ende*/
         switch(*mode)
         {
         case 'r':
            if(*(mode+1) == '+')
            {
               file_ptr->mode_rplus = True;
            }
            else
            {
               file_ptr->mode_r = True;
            }
            break;
         case 'w':
            if(*(mode+1) == '+')
            {
               file_ptr->mode_wplus = True;
            }
            else
            {
               file_ptr->mode_w = True;
            }
            break;
         case 'a':
            if(*(mode+1) == '+')
            {
               file_ptr->mode_aplus = True;
            }
            else
            {
               file_ptr->mode_a = True;
            }
            break;
         default:
            break;
         }
         /* copy the file name */
         for(i = 0; (i < file_ptr->max_file_name_size); i++ )
         {
            if( *(filename+i)=='\0' )
            {
               file_ptr->used_file_name_size = i+1;
               break;
            }
         }
         for(i = 0; (i < file_ptr->used_file_name_size); i++ )
         {
            *(file_ptr->name+i) = *(filename+i);
         }
         if(1/*FS_FILE_EXISTS(file_ptr) == False*/)
         {
            file_ptr = 0;
         }
      }
   }
   return file_ptr;
}
FILE* freopen(const char *filename, const char *mode, FILE *stream)
{
   fclose(stream);
   return fopen(filename, mode);
}
int fflush(FILE* stream)
{
   /* no buffering implemented -> no need for flush */
   return 0;
}
int fclose(FILE* file_ptr)
{
   uint8 i = 0;

   file_ptr->mode_r = False;
   file_ptr->mode_w = False;
   file_ptr->mode_a = False;
   file_ptr->mode_rplus = False;
   file_ptr->mode_wplus = False;
   file_ptr->mode_aplus = False;
   for(i = 0; (i < file_ptr->max_file_name_size); i++ )
   {
      *(file_ptr->name+i) = 0x00;
   }
   file_ptr->used_file_name_size = 0;
   file_ptr = 0;
   return 0;
}
int remove(const char *filename)
{
   /*#warn "fopen"*/
   return 0;
}
int rename(const char *oldname, const char *newname)
{
   /*#warn "fopen"*/
   return 0;
}
uint32 fread(void *ptr, uint32 size, uint32 nobj, FILE *stream)
{
   /*#warn "fopen"*/
   return 0;
}
uint32 fwrite(const void *ptr, uint32 size, uint32 nobj, FILE *stream)
{
   /*#warn "fopen"*/
   return 0;
}

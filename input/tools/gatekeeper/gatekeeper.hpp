#include <string>
#include <cstdlib>
#include <iostream>

class build_t
{
   public:
   std::string Get_toollocation_size(void)         { return this->tool_dir__size;    }
   std::string Get_toollocation_astyle(void)       { return this->tool_dir__astyle;  }
   std::string Get_toollocation_code_analysis(void){ return this->tool_dir__code_analysis;    }
   std::string Get_toollocation_compile(void)      { return this->tool_dir__compile; }
   std::string Get_toollocation_link(void)         { return this->tool_dir__link;    }
   std::string Get_toollocation_cunit(void)        { return this->tool_dir__cunit;   }
   
   std::string Get_base_dir(void)            { return this->base_dir;          }
   std::string Get_repro_dir(void)           { return this->repro_dir;         }
   std::string Get_git_dir(void)             { return this->git_dir;           }
   unsigned    Get_failed(void)              { return this->failed;            }
   std::string GetCommitMessage(void)        { return this->commit_message;    }
   void        Call_build_targets_bat(void)  
   {
      std::string temp = "call " + this->build_bat_path;
      system(temp.c_str());
   };
   
   
   void Set_base_dir(std::string dir)          { base_dir          = dir;                 }
   void Set_repro_dir(std::string dir)         { repro_dir         = dir;                 } 
   void Set_git_dir(std::string dir)           { git_dir           = dir;                 } 
   void Set_build_bat(std::string path)        { build_bat_path    = path;                }
   void Set_failed(void)                       { failed            = true;                }
   void Set_commit_message(std::string msg)    { commit_message    = msg;                 }
   void Add_to_commit_message(std::string msg) { commit_message    = commit_message + msg;}
   void Set_tool_dir__size(std::string dir)    { tool_dir__size    = dir;                 }
   void Set_tool_dir__astyle(std::string dir)  { tool_dir__astyle  = dir;                 }
   void Set_tool_dir__code_analysis(std::string dir)    { tool_dir__code_analysis    = dir;                 }
   void Set_tool_dir__compile(std::string dir) { tool_dir__compile = dir;                 }
   void Set_tool_dir__link(std::string dir)    { tool_dir__link    = dir;                 }
   void Set_tool_dir__cunit(std::string dir)   { tool_dir__cunit   = dir;                 }
   
   private:
   std::string base_dir;
   std::string repro_dir;
   std::string git_dir;
   std::string build_bat_path;
   bool        failed;
   std::string commit_message;
   std::string tool_dir__size;
   std::string tool_dir__astyle;
   std::string tool_dir__code_analysis;
   std::string tool_dir__compile;
   std::string tool_dir__link;
   std::string tool_dir__cunit;   
};

#include "gatekeeper.hpp"

int main(int argc, char* argv[])
{
   argc = argc;
   *argv = *argv;
   
   build_t build;
   std::string temp = "";
   
   //TODO build initialisation
   build.Set_commit_message("");
   
   /* set the base directory */
   build.Set_base_dir("E:\\NeuOrga\\Programmieren\\c_cpp\\git_repro__os");
   build.Set_git_dir("C:\\Program Files (x86)\\SmartGit\\git\\bin");
   build.Set_repro_dir(build.Get_base_dir() + "\\input");
   build.Set_build_bat(build.Get_repro_dir() + "\\tools\\build_targets.bat");
   build.Set_tool_dir__size(build.Get_repro_dir() +"\\tools\\size.bat");
   build.Set_tool_dir__code_analysis(build.Get_repro_dir() +"\\tools\\code_analysis.bat");
   build.Set_tool_dir__astyle(build.Get_repro_dir()+"\\tools\\astyle.bat")
   /*
   1. clean
   2. compile + link + preprocess for all targets
   3. check for output files (elf/exe)
   */
   build.Call_build_targets_bat();

   // check existance of all ppc / o / elf / exe files... TODO

   
   /*
   4. check Quality metric (size, LINT warnings, compile warnings, link warnings)
   */ 
   //call astyle
   temp = "call " + build.Get_toollocation_astyle();
   system(temp.c_str());
   
   //check size TODO
   temp = "call " + build.Get_toollocation_size();
   system(temp.c_str());

   //check code_analysis TODO
   temp = "call " + build.Get_toollocation_code_analysis();
   system(temp.c_str());
   
   //check compile TODO
   temp = "call " + build.Get_toollocation_compile();
   system(temp.c_str());

   //check link TODO
   temp = "call " + build.Get_toollocation_link();
   system(temp.c_str());   

   //check cunit TODO
   temp = "call " + build.Get_toollocation_code_analysis();
   system(temp.c_str());  
   
   //check cunit TODO
   temp = "call " + build.Get_toollocation_cunit();
   system(temp.c_str());   
   
   
   if(build.Get_failed() != false)
   {
      std::cout<<"Commit Message:";
      std::cin>>temp;
      build.Set_commit_message(temp);
   }
   if(build.failed_target_arm != false)
   {
      build.Add_to_commit_message("[ARM_FAILED]");
   }      
   if(build.failed_target_x86 != false)
   {
      build.Add_to_commit_message("[X86_FAILED]");
   }  
   if(build.failed_target_cunit != false)
   {
      build.Add_to_commit_message("[CUNIT_FAILED]");
   }     
   if(build.failed_target_targettests != false)
   {
      build.Add_to_commit_message("[TARGETTESTS_FAILED]");
   }
   
   return 0;
}



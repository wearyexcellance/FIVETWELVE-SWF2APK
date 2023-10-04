var actionScript3 = "actionScript3=\"true\"";
var actionScript2 = "actionScript3=\"false\"";
if file_exists((output_dest)+string("//AVMtest.xml"))
{
ProcessExecute(meta_shell)
show_debug_message(("")+string(meta_dir))
var txt = text_load(("")+string(meta_dir))



var width = real(crop_string(txt, "Xmax=\"", "\" Xmi"))/20
var height = real(crop_string(txt, "Ymax=\"", "\" Ymi"))/20

var_info = string("Detected resolution : ")+string(width)+string(" x ")+string(height)+string(" px \n")+string(swf_dest)
//show_debug_message(txt)
if string_has_substring(actionScript2,txt)
{
var_status = "Your SWF is coded in Actionscript 2 (AVM1)"
}
else
if string_has_substring(actionScript3,txt)
{
var_status = "Your SWF is coded in Actionscript 3 (AVM2)"
}

}
else
alarm[0] = 10

ini_open("data");
output_dest = "C://Users//"+string(global.username)+string("//Documents//SWF2APK")
swf_dest =string_replace_all(ini_read_string("data","swf_dest","Eh"),"\\","//")
 execution = (global.dir+string("JavaPath//jre8u382//bin//java.exe -jar ")+string(global.dir)+string("JPEXS//ffdec.jar ")+string("-swf2xml "+string(swf_dest)+string(" ")+string(output_dest)+string("//AVMtest.xml")))
 meta_shell = global.dir + string("Agents//metadata_load.bat ") + string((output_dest)+string("//AVMtest.xml"))+ string(" ")+string(output_dest)+string("//Meta.txt")
 meta_dir =string(output_dest)+string("//Meta.txt")

ProcessExecute(execution)
show_debug_message(execution)
alarm[0] = 10
var_status = "Checking your SWF's Actionscript Version"
var_info = ""
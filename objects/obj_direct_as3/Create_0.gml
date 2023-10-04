ini_open("data")
package_type = ini_read_string("data","package","RUFFLE")
swf_dest = string_replace_all(ini_read_string("data","swf_dest","Eh"),"\\","//")
var_status = "Deploying APK Data"
show_debug_message("Entered Deploying screen")
alarm[0] = 3
unsigned_status = ""

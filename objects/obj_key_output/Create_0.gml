ini_open("data")
package_type = ini_read_string("data","package","RUFFLE")
swf_dest = string_replace_all(ini_read_string("data","swf_dest","Eh"),"\\","//")

if package_type = "RUFFLE"
{
}
else
if package_type = "AIR"
{
}
file = ""
var_status=  "Open SWF file"
output_dest = "C://Users//"+string(global.username)+string("//Documents//SWF2APK")

output_dest = "C://Users//"+string(global.username)+string("//Documents//SWF2APK")
if directory_exists(output_dest)
{
directory_destroy(output_dest)
directory_create(output_dest)
}

/*
if file_exists(string(output_dest)+string("//Meta.txt"))
{
file_delete(string(output_dest)+string("//Meta.txt"))
show_debug_message("Old meta File Successfully cleared")
}
if file_exists(string(output_dest)+string("//AVMtest.xml"))
{
file_delete(string(output_dest)+string("//AVMtest.xml"))
show_debug_message("Old meta File Successfully cleared")
}
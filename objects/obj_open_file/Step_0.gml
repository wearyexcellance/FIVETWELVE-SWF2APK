
if file !="" 
{
ini_open("data")
ini_write_string("data","swf_dest",file)
var_status= "Loading... This might take a while"
room_goto(screen_detect)
}
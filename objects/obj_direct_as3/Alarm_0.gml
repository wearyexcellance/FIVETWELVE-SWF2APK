

//show_debug_message(directory_copy(global.dir+string("AVMdata//as2adaptfle"),string("C://Users//")+string(global.username)+string("//Documents//SWF2APK//as2adaptfle")))
//file_copy(swf_dest,string("C://Users//")+string(global.username)+string("//Documents//SWF2APK//as2adaptfle//")+string("assets//www//as2game.swf"))
if package_type = "RUFFLE"

{
var gameas3dir = global.dir+string("AVMdata//as2adaptfle")
var new_gameas3dir = "C://Users//"+string(global.username)+string("//Documents//SWF2APK//as2adaptfle")
var new_swf_dest = string(global.username)+string("//Documents//SWF2APK//gameas3")+string("//assets//www//as2game.swf")
var unsignedapk_dest =   "C://Users//"+string(global.username)+string("//Documents//SWF2APK//")+string("Output//apk_unsigned.apk")
var signedapk_dest =   "C://Users//"+string(global.username)+string("//Documents//SWF2APK//")+string("Output//signed_as2.apk")
var recompilation = (global.dir+string("JavaPath//jre8u382//bin//java.exe -jar \"")+string(global.dir)+string("Agents//apktool.jar\" ")+string("b \"")+string(new_gameas3dir)+string("\" -o \"")+string(unsignedapk_dest)+string("\"")+string(" --use-aapt2")+string(" > RECOMP.txt"))
var signing = global.dir+string("JavaPath//jre8u382//bin//java.exe -jar ")+string(global.dir)+string("Agents//signapk.jar ")+string(global.dir)+string("Agents//certificate.pem ")+string(global.dir)+string("Agents//key.pk8")+string(" ")+string(unsignedapk_dest)+string("  ")+string(signedapk_dest)+string("")

show_debug_message(string("xcopy \"")+string(gameas3dir)+string("\" \"")+string(new_gameas3dir)+string("\"  /E /I /H /Y"))

ProcessExecute(string("xcopy \"")+string(gameas3dir)+string("\" \"")+string(new_gameas3dir)+string("\"  /E /I /H /Y"))
ProcessExecute(string("copy \"")+string(swf_dest)+string("\"")+string(" \"")+string(new_swf_dest)+string("\""))
show_debug_message(string("copy \"")+string(swf_dest)+string("\"")+string(" \"")+string(new_swf_dest)+string("\""))
file_copy(swf_dest,string("C://Users//")+string(global.username)+string("//Documents//SWF2APK//as2adaptfle")+string("//assets//www//as2game.swf"))
show_debug_message(recompilation)
show_debug_message("RECOMPILING")
ProcessExecute(recompilation)
if file_exists(unsignedapk_dest)
{
unsigned_status = "An Unsigned apk was successfully made. Waiting for signing apk"
ProcessExecute(signing)
show_debug_message(signing)
}
if file_exists(unsignedapk_dest)
{
show_message("APK signed! ")
ProcessExecute(string("explorer ")+string(unsignedapk_dest))
}

}

else
if package_type = "AIR"
{
var gameas3dir = global.dir+string("AVMdata//gameas3")
var new_gameas3dir = "C://Users//"+string(global.username)+string("//Documents//SWF2APK//gameas3")
var new_swf_dest = string(global.username)+string("//Documents//SWF2APK//gameas3")+string("//assets//AS3Wrapper.swf")
var unsignedapk_dest =   "C://Users//"+string(global.username)+string("//Documents//SWF2APK//")+string("Output//apk_unsigned.apk")
var signedapk_dest =   "C://Users//"+string(global.username)+string("//Documents//SWF2APK//")+string("Output//apk_signed_as3.apk")
var recompilation = (global.dir+string("JavaPath//jre8u382//bin//java.exe -jar \"")+string(global.dir)+string("Agents//apktool.jar\" ")+string("b \"")+string(new_gameas3dir)+string("\" -o \"")+string(unsignedapk_dest)+string("\"")+string("")+string(""))
var signing = global.dir+string("JavaPath//jre8u382//bin//java.exe -jar ")+string(global.dir)+string("Agents//signapk.jar ")+string(global.dir)+string("Agents//certificate.pem ")+string(global.dir)+string("Agents//key.pk8")+string(" ")+string(unsignedapk_dest)+string("  ")+string(signedapk_dest)+string("")

show_debug_message(string("xcopy \"")+string(gameas3dir)+string("\" \"")+string(new_gameas3dir)+string("\"  /E /I /H /Y"))

ProcessExecute(string("xcopy \"")+string(gameas3dir)+string("\" \"")+string(new_gameas3dir)+string("\"  /E /I /H /Y"))
ProcessExecute(string("copy \"")+string(swf_dest)+string("\"")+string(" \"")+string(new_swf_dest)+string("\""))
show_debug_message(string("copy \"")+string(swf_dest)+string("\"")+string(" \"")+string(new_swf_dest)+string("\""))
file_copy(swf_dest,string("C://Users//")+string(global.username)+string("//Documents//SWF2APK//gameas3")+string("//assets//AS3Wrapper.swf"))
show_debug_message(recompilation)
ProcessExecute(recompilation)
if file_exists(unsignedapk_dest)
{
unsigned_status = "An Unsigned apk was successfully made. Waiting for signing apk"
ProcessExecute(signing)
show_debug_message(signing)
}
if file_exists(unsignedapk_dest)
{
show_message("APK signed! ")
ProcessExecute(string("explorer ")+string(unsignedapk_dest))
}
}



//old
//directory_copy(global.dir+string("AVMdata//gameas3"),"C://Users//"+string(global.username)+string("//Documents//SWF2APK//gameas3"))
//file_copy(swf_dest,string("C://Users//")+string(global.username)+string("//Documents//SWF2APK//gameas3")+string("//assets//AS3Wrapper.swf"))
//file_copy(swf_dest,string("C://Users//")+string(global.username)+string("//Documents//SWF2APK//gameas3")+string("//assets//AS3Wrapper.swf"))

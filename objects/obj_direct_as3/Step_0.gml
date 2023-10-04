if package_type = "RUFFLE"
{
directory_exists(string("C://Users//")+string(global.username)+string("//Documents//SWF2APK//as2adaptfle"))
	{
	var_status = "Ruffle APK data successfully deployed"
	}
}
else
if package_type = "AIR"
{
if directory_exists("C://Users//"+string(global.username)+string("//Documents//SWF2APK//gameas3"))
	{
	var_status = "AIR APK data successfully deployed"
	}
}
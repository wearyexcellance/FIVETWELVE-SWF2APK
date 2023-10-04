global.username = environment_get_variable("USERNAME");
output_dest = "C://Users//"+string(global.username)+string("//Documents//SWF2APK")
global.dir = "C://Users//ASUS//Documents//GameMakerStudio2//FIVETWELVE-SWF2APK//FULLDATA//"
directory_destroy(output_dest)
directory_create(output_dest)


/// read_first_5_lines(file_path)
/// Reads the first 5 lines of a text file and returns them as an array.
/// Returns an empty array if the file doesn't exist or contains fewer than 5 lines.

function text_load(file_path)
{
    var lines = ""

    var file = file_text_open_read(file_path);
    
    if (file != -1)
    {
        for (var i = 0; i < 5; i++)
        {
            var line = file_text_readln(file);
            if (line != "")
            {
				lines = string(lines)+string(line)
       
            }
            else
            {
                break; // Stop reading if we encounter an empty line.
            }
        }

        file_text_close(file);
    }
    
    return lines;
}


function pass(argument0){

var file_buffer = buffer_load(argument0);
var s = buffer_read(file_buffer, buffer_string);
buffer_delete(file_buffer);
return(s);
}

function string_has_substring(substr,str)
{
 substr  = argument0
str =  argument1

var firstchar = string_char_at(substr,1);
var str_len = string_length(str);

for(var i = 1; i <= str_len; ++i)
{
if(string_char_at(str,i)==firstchar)
{
var j = 0;
while(j + i <= str_len){
if(string_char_at(str,i+j) == string_char_at(substr,j+1)){
j++;
if(j==string_length(substr)){return true;}
}else{
i += j;
break;
}
}
}
}
return false;


}


function crop_string(input_string, from_string, to_string)
{
    var from_index = string_pos(from_string, input_string);
    var to_index = string_pos(to_string, input_string);
    
    if (from_index == 0 || to_index == 0)
    {
        // Either 'from_string' or 'to_string' is not found in 'input_string'.
        return "";
    }

    // Adjust indices to point to the beginning of the desired substrings.
    from_index += string_length(from_string) - 1;
    to_index += string_length(to_string) - 1;

    // Crop the substring.
   var output = string_copy(input_string, from_index, to_index - from_index + 1);
   	output = string_replace_all(output,from_string,"")
	output = string_replace_all(output,to_string,"")
	output = string_replace_all(output,"\"","")

    return (output)
}
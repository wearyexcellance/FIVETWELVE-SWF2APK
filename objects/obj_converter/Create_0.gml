/*
swf_file = get_open_filename("swf*.swf", "");



var file_handle = file_bin_open(swf_file, 0);
var size = buffer_create(8,buffer_fixed,0)
if (file_handle != -1) {
    //Read the first byte of the SWF file to check the version
    var version_byte = file_bin_read_byte(file_handle);
	show_message(version_byte)
    // Check the version byte
    if (version_byte == 6) {
        show_message("This SWF file uses AVM1 (ActionScript 1/2)");
    } else if (version_byte >= 9) {
        show_message("This SWF file uses AVM2 (ActionScript 3 or later)");
    } else {
        show_message("Unknown SWF version");
    }

    // Close the file
    file_bin_close(file_handle);
} else {
    show_message("Failed to open SWF file.");
}

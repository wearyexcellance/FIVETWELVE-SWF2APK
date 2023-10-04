/// @description Run external files, games, or applications ...

// Run Microsoft Notepad and Calculator ...

if (os_type == os_windows) {
    // Not all commmands will be recognized - i.e. the Windows-specific "start" command will not work
    execute_shell("\"C:\\Windows\\System32\\notepad.exe\" \"" + working_directory + "\\example.txt\"", false); // Open file
    
    // Open a batch file if you need to use more commands 
    execute_shell("\"C:\\Windows\\System32\\calc.exe\"", true); // Run program
}

// The Mac OS X equivalent ...

if (os_type == os_macosx) {
    // The Mac-specific "open" command allows for opening non-executable files but ignores wait param
    execute_shell("open \"/System/Applications/TextEdit.app\" \"" + working_directory + "/example.txt\"", false); // Open file
    
    // Under "[App-Name-Here].app/Contents/MacOS/" is the app's run-able executable
    execute_shell("\"/System/Applications/Calculator.app/Contents/MacOS/Calculator\"", true); // Run program 
}

// The Ubuntu equivalent ...

if (os_type == os_linux) {
    // This example is for Ubuntu - i.e. Xubuntu and others will not have these apps
    execute_shell("\"/usr/bin/gedit\" \"" + working_directory + "/example.txt\"", false); // Open file
    
    // Try running apps that you know exist on your OS
    execute_shell("\"/usr/bin/gnome-calculator\"", true); // Run program
}

game_end();
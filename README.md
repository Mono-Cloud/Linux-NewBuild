# Linux-NewBuild
A script to install commonly used programs and config files for new Linux VM's

Copy from your scripts folder and drag across once vm-tools has been installed and system rebooted. 

Run with `sudo bash LinuxNewBuild.sh` to save having to chmod it. 

Future Additions

* Add a keyboard shortcut to map gnome-terminal to Super+Enter
* Test for network connectivity. Display an error if none found

Current Bugs

* As the script creates the directory for `.config/fish/functions` as sudo, the folders are owned by root. This causes the error `Fish: Unable to open universal variable file`

* Tmux does not automatically launch and reload previous sessions

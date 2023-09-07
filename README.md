# Initial-Machine-Setup
auhhh, I dont remember all the stuff I need to setup all the time whenever my kali crashes and I need it to re-install from scratch, this repo is just like to-do for me.
## /etc/apt/sources.list edit for better and errorless life
[sources.list](https://github.com/sudosuraz/Initial-Machine-Setup/blob/main/sources.list)
## GNOME
### after installing the GNOME, the Top Bar sucks, I need it hide automatcally!!!
[hide-top-bar](https://extensions.gnome.org/extension/545/hide-top-bar/)



# Error Solution
# sudo apt update sucks!!!

## apt-key deprecation warning when updating system
`sudo apt-key list`
`sudo apt-key export AA77JKL6 | sudo gpg --dearmour -o /usr/share/keyrings/<name>.gpg`
here AA77JKL6 is last 8 char from the pub code.
update our apt source file for the repository (e.g., /etc/apt/sources.list.d/<name>.list), adding a signed-by tag:
``` deb [arch=amd64 signed-by=/usr/share/keyrings/<name>.gpg] https://http.kali/ stable main```
now run:
`sudo apt update`

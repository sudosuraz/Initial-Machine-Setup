# Initial-Machine-Setup
auhhh, I dont remember all the stuff I need to setup all the time whenever my kali crashes and I need it to re-install from scratch, this repo is just like to-do for me.
## /etc/apt/sources.list edit for better and errorless life
[sources.list](sources.list)
## GNOME
### after installing the GNOME, the Top Bar sucks, I need it hide automatcally!!!
[hide-top-bar](https://extensions.gnome.org/extension/545/hide-top-bar/)



# Error Solution
## apt-key deprecation warning when updating system
`sudo apt-key list`
`sudo apt-key export AA77JKL6 | sudo gpg --dearmour -o /usr/share/keyrings/<name>.gpg`
here AA77JKL6 is last 8 char from the pub code.
update our apt source file for the repository (e.g., /etc/apt/sources.list.d/<name>.list), adding a signed-by tag:
``` deb [arch=amd64 signed-by=/usr/share/keyrings/<name>.gpg] https://http.kali/ stable main```
now run:
`sudo apt update`

## kali-linux-hash-sum-mismatch
update your Repositories in sources.list file to :
`deb http://http.kali.org/kali kali-rolling main non-free contrib`

Save and close the file
Clean, update, upgrade and dist-upgrade your Kali installation
`apt-get clean && apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y`
I know it will work 90% but what about the 10%?
bruhh! you are not the only one within your ISP netwok who is a hacker, there are obiously other peoples too and they also do same kind of stuff regularly, the point is the error you are facing is because of ISP chache, yes.
to get the hell out of this issue, you need to bypass ISP,
to do, you can use `proxychains` yeahh you heard right
### edit  /etc/proxychains4.conf
> uncommnet dynamic
> comment strick chain
> uncommnet proxy_dns
> add `socks5  127.0.0.1 9050` at the end

wait...
before you run proxychains, need to install `tor` and `run tor service`

after this, run
`proxychains apt update -y`
`proxychains apt upgrade -y`
`proxychains apt install <pakage-name>`

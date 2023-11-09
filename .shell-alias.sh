alias crt='bash /home/zoro/tools/crt.sh'
alias cet='python3 /home/zoro/tools/cet.py'
alias dome='python3 /home/zoro/tools/subdomains/Dome/dome.py'
alias burpy='"/usr/lib/jvm/jdk-21-oracle-x64/bin/java" "--add-opens=java.desktop/javax.swing=ALL-UNNAMED" "--add-opens=java.base/java.lang=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED" "-javaagent:/usr/share/burpsuite/loader.jar" "-noverify" "-jar" "/usr/share/burpsuite/burpsuite_pro_v2023-10-3.jar"'
alias aquatone="/home/zoro/Downloads/aquatone_linux_amd64_1.7.0/aquatone  -chrome-path /home/zoro/Downloads/google-chrome.deb"
alias update="figlet 'Updating the system' && sudo service tor start && proxychains sudo apt update -y && proxychains sudo apt upgrade -y && figlet 'Update Done' && sudo service tor stop"
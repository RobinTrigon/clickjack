function banner(){
echo -e '''\033[1;38;5;013m
           __   _            __        _                     __  
  _____   / /  (_)  _____   / /__     (_)  ____ _   _____   / /__
 / ___/  / /  / /  / ___/  / //_/    / /  / __ `/  / ___/  / //_/
/ /__   / /  / /  / /__   / ,<      / /  / /_/ /  / /__   / ,<   
\___/  /_/  /_/   \___/  /_/|_|  __/ /   \__,_/   \___/  /_/|_|  
                                /___/                            '''

                             echo -e " "

                              echo -e "                                            \033[1;38;5;247m \e[5mRobinTrigon | 3rr0r-404"
}
banner
echo -e "\033[0m"
echo -n -e "\n \033[1;38;5;040m[+]Enter target urls list  : "
read urls 
cat $urls | tee clicktemp
clear
banner
echo -e "\033[0m"
python3 mod1.py clicktemp | tee -a clickjacking-vulnareble.txt
rm clicktemp
echo -e "\033[1;38;5;040m [+] result save into clickjacking-vulnareble.txt"
echo -e "\033[0m"

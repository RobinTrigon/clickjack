
from urllib.request import urlopen
from sys import argv, exit
__author__ = 'D4Vinci'
def check(url):  
    try:
        if "http" not in url: url = "http://" + url
        data = urlopen(url)
        headers = data.info()
        if not "X-Frame-Options" in headers: return True
    except: return False
def main():
   
    try: sites = open(argv[1], 'r').readlines()
    except: print("[*] Usage: python(3) clickjacking_tester.py <file_name>"); exit(0)
    for site in sites[0:]:       
        status = check(site)
        if status:
            print(" \033[1;38;5;087m [ X ]  \033[91mVULNERABLE => \033[1;38;5;214m "+ site)
                  #  else: print('Every single thing is crashed, Python got mad, dude wtf you just did?')
if __name__ == '__main__': main()


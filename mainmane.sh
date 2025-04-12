#!/bin/bash

clear

COLUMNS=$(tput cols)
LINES=$(tput lines)


PINK='\033[1;35m'
RESET='\033[0m'
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'


read -p "Enter your hacker alias: " hacker_name
sleep 0.5
read -p "Enter the target IP address: " target_ip
sleep 0.5

clear


banner() {
  echo -e "${BLUE}"
  cat << "EOF"
   *                        *
 (  `                     (  `
 )\))(      )  (          )\))(      )           (
((_)()\  ( /(  )\   (    ((_)()\  ( /(   (      ))\
(_()((_) )(_))((_)  )\ ) (_()((_) )(_))  )\ )  /((_)
|  \/  |((_)_  (_) _(_/( |  \/  |((_)_  _(_/( (_))
| |\/| |/ _` | | || ' \))| |\/| |/ _` || ' \))/ -_)
|_|  |_|\__,_| |_||_||_| |_|  |_|\__,_||_||_| \___|

      H A C K I N G   M A I N F R A M E . . .
EOF
  echo -e "${RED}"
}


countdown() {
  echo -e "${PINK}Initializing mainframe breach in:${RESET}"
  for i in {5..1}; do
    echo -e "${PINK}$i...${RESET}"
    sleep 1
  done
  echo -e "${PINK}ACCESSING CORE NODE...${RESET}"
  sleep 1
}


binary_rain() {
  for i in {1..25}; do
    line=""
    for j in $(seq 1 $COLUMNS); do
      rand=$((RANDOM % 2))
      line+=$rand
    done
    echo -e "${PINK}$line${RESET}"
    sleep 0.03
  done
}


loading_bar() {
  echo -e "${BLUE}Loading mainframe breach...${RESET}"
  bar=""
  for i in {1..20}; do
    bar+="█"
    percent=$((i * 5))
    echo -ne "${GREEN}[$bar$(printf '%*s' $((20 - i)))] $percent%%\r${GREEN}"
    sleep 0.2
  done
  echo -e ""  # Finish line
}


fake_output() {
  echo -e "${GREEN}[+] Establishing secure uplink...${RESET}"
  sleep 1
  echo -e "${GREEN}[+] Bypassing firewalls...${RESET}"
  sleep 1
  echo -e "${GREEN}[+] Injecting rootkit payload...${RESET}"
  sleep 2.5
  echo -e "${RED}[+] ACCESS GRANTED. Root privileges acquired.${RED}"
  sleep 1
  echo
  echo -e "${PINK}>> SYSTEM CORE DIRECTORY:${RESET}"
  sleep 0.5
  for i in {1..10}; do
    echo -e "${GREEN} - /mainframe/sector_$i/sysconf.dat${RESET}"
    sleep 0.2
  done
  echo
}


finale() {
  for i in {1..3}; do
    clear
    echo -e "${RED}"
    echo "      █████▒██▓ ██▀███  ▓█████  █     █░ ▄▄▄       ██▓     ██▓                   "
    echo "    ▓██   ▒▓██▒▓██ ▒ ██▒▓█   ▀ ▓█░ █ ░█░▒████▄    ▓██▒    ▓██▒                   "
    echo "    ▒████ ░▒██▒▓██ ░▄█ ▒▒███   ▒█░ █ ░█ ▒██  ▀█▄  ▒██░    ▒██░                   "
    echo "    ░▓█▒  ░░██░▒██▀▀█▄  ▒▓█  ▄ ░█░ █ ░█ ░██▄▄▄▄██ ▒██░    ▒██░                   "
    echo "    ░▒█░   ░██░░██▓ ▒██▒░▒████▒░░██▒██▓  ▓█   ▓██▒░██████▒░██████▒               "
    echo "     ▒ ░   ░▓  ░ ▒▓ ░▒▓░░░ ▒░ ░░ ▓░▒ ▒   ▒▒   ▓▒█░░ ▒░▓  ░░ ▒░▓  ░               "
    echo "     ░      ▒ ░  ░▒ ░ ▒░ ░ ░  ░  ▒ ░ ░    ▒   ▒▒ ░░ ░ ▒  ░░ ░ ▒  ░               "
    echo "     ░ ░    ▒ ░  ░░   ░    ░     ░   ░    ░   ▒     ░ ░     ░ ░                  "
    echo "            ░     ░        ░  ░    ░          ░  ░    ░  ░    ░  ░               "
    echo "                                                                                 "
    echo " ▓█████▄ ▓█████   ██████ ▄▄▄█████▓ ██▀███   ▒█████ ▓██   ██▓▓█████ ▓█████▄  ▐██▌ "
    echo " ▒██▀ ██▌▓█   ▀ ▒██    ▒ ▓  ██▒ ▓▒▓██ ▒ ██▒▒██▒  ██▒▒██  ██▒▓█   ▀ ▒██▀ ██▌ ▐██▌ "
    echo " ░██   █▌▒███   ░ ▓██▄   ▒ ▓██░ ▒░▓██ ░▄█ ▒▒██░  ██▒ ▒██ ██░▒███   ░██   █▌ ▐██▌ "
    echo " ░▓█▄   ▌▒▓█  ▄   ▒   ██▒░ ▓██▓ ░ ▒██▀▀█▄  ▒██   ██░ ░ ▐██▓░▒▓█  ▄ ░▓█▄   ▌ ▓██▒ "
    echo " ░▒████▓ ░▒████▒▒██████▒▒  ▒██▒ ░ ░██▓ ▒██▒░ ████▓▒░ ░ ██▒▓░░▒████▒░▒████▓  ▒▄▄  "
    echo "  ▒▒▓  ▒ ░░ ▒░ ░▒ ▒▓▒ ▒ ░  ▒ ░░   ░ ▒▓ ░▒▓░░ ▒░▒░▒░   ██▒▒▒ ░░ ▒░ ░ ▒▒▓  ▒  ░▀▀▒ "
    echo "  ░ ▒  ▒  ░ ░  ░░ ░▒  ░ ░    ░      ░▒ ░ ▒░  ░ ▒ ▒░ ▓██ ░▒░  ░ ░  ░ ░ ▒  ▒  ░  ░ "
    echo "  ░ ░  ░    ░   ░  ░  ░    ░        ░░   ░ ░ ░ ░ ▒  ▒ ▒ ░░     ░    ░ ░  ░     ░ "
    echo "    ░       ░  ░      ░              ░         ░ ░  ░ ░        ░  ░   ░     ░    "
    echo "  ░                                                 ░ ░             ░            "
    echo -e "${RED}"
    sleep 0.5
    clear
    sleep 0.5
  done
  sleep 1
  echo -e "${PINK}>> MAINFRAME BREACH SUCCESSFUL${RESET}"
  sleep 1
  echo -e "${PINK}>> TRACE PROTECTION ENABLED${RESET}"
  sleep 1
  echo -e "${PINK}>> SYSTEM SUCCESSFULLY HACKED BY: ${hacker_name}${RESET}"
  echo -e "${PINK}>> IP ${target_ip} successfully breached!${RESET}"
  echo
}


shell_prompt() {
  echo -e "${PINK}root@$target_ip-main:~#${PINK}"
}

fake_command() {
  while true; do
    read -p "root@$target_ip-main:~# " command
    if [[ "$command" == "exit" ]]; then
      break
    fi
    echo -e "${BLUE}Executing: $command${BLUE}"
    sleep 1
    case $command in
      "ls")
        echo -e "${PINK}Anus_Collection Desktop Dickpics Documents Downloads Midgetporn Music  Pictures Porn${PINK}"
        ;;
      "ls -a")
        echo -e "${PINK}.  ..  .bashrc  .nuke_codes  .💀_do_not_open  Desktop  Documents  .hidden_gnome  .coffee_maker.sh${PINK}"
        ;;
      "pwd")
        echo -e "${PINK}/home/root${PINK}"
        ;;
      "id")
        echo -e "${PINK}uid=0(root) gid=0(root) groups=0(root),1337(hackers),666(underground)${PINK}"
        ;;
      "whoami")
        echo -e "${PINK}root${PINK}"
        ;;
      "uname -a")
        echo -e "${PINK}Linux mainframe-os 9.9.9-evilkernel #1337 SMP x86_64 GNU/Linux${PINK}"
        ;;
      "df -h")
        echo -e "${PINK}Filesystem      Size  Used Avail Use% Mounted on
/dev/root        666G  420G  246G  63% /
tmpfs            64G     0   64G   0% /dev/shm${PINK}"
        ;;
      "cat .nuke_codes")
        echo -e "${PINK}🔐 NUCLEAR_LAUNCH_CODE=0000-DEAD-BEEF-1337${PINK}"
        ;;
      "cat .💀_do_not_open")
        echo -e "${PINK}you_opened_it_now_the_clock_ticks...${PINK}"
        ;;
      *)
        echo -e "${PINK}command not found: $command${PINK}"
        ;;
    esac
  done
}


banner
countdown
binary_rain
loading_bar
fake_output
binary_rain
finale
shell_prompt
fake_command

#! /bin/bash
#pomodro
RED='\033[0;31m' #Red
NC='\033[0m' # No Color
if [[ $# == 0 ]];then
    echo -e "work timer started; after ${RED}25 minutes${NC} it will go off"
    sleep $((25 * 60)) ; echo "work time is over";echo -n $'\a'
    echo -e "break timer started; after ${RED}5 minute${NC} it will go off";echo -n $'\a'
    sleep $((25 * 5)) ; echo "break is over;get back to workget back to work"
    
elif [[ $# == 1 ]];then
    echo -e "work timer statrted; after ${RED}$1 minutes${NC} it will go off"
    sleep $(($1 * 60)) ; echo "work time is over";echo -n $'\a'
    echo -e "break timer started; after ${RED}5 minute${NC} it will go off";echo -n $'\a'
    sleep $((25 * 5)) ; echo "break is over;get back to workget back to work";echo -n $'\a'
elif [[ $# == 2 ]];then
    echo -e "work timer statrted; after ${RED}$1 minutes${NC} it will go off"
    sleep $(($1 * 60)) ; echo "work time is over";echo -n $'\a'
    echo -e "break timer started; after ${RED}$2 minute${NC} it will go off";echo -n $'\a'
    sleep $((25 * $2)) ; echo "break is over;get back to work";echo -n $'\a'

fi



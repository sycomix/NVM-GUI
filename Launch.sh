#!/bin/sh
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
RED='\033[0;31m'

echo -e "${BLUE}Votre version actuelle de NodeJs est :${NC}"

node -v



 while true; do
            read -r -p "$(echo -e "${BLUE}Voulez vous changez votre version de NodeJs ? (${GREEN}Y${BLUE}/${RED}N${BLUE})${NC}")" input
            case $input in
            [yY][eE][sS] | [yY])
                exec bash changeVersion/install.sh
                break
                ;;
            [nN][oO] | [nN])
                echo -e "${GREEN} Fermeture du programme${NC}"
                break
                ;;
            *)
                echo -e "${RED}Please enter a valid option${NC}"
                ;;
            esac
        done
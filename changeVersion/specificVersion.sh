#!/bin/sh
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
RED='\033[0;31m'

export NVM_DIR=$HOME/.nvm
source $NVM_DIR/nvm.sh

echo -e "${BLUE}Quelle version voulez-vous installer ? ( ex : 17.1.2 ou 17.1 ou 17 )${NC}"
read version

while true; do
    read -r -p "$(echo -e "${BLUE}Êtes vous sur de vouloir installé la version '$version' ? ${RED} Veuillez verifier quelle existe ${NC} (${GREEN}Y${BLUE}/${RED}N${BLUE})${NC}")" input
    case $input in
    [yY][eE][sS] | [yY])
        echo -e "${GREEN}Installation de la version $version${NC}"
        nvm install $version
        nvm alias default $version
        echo -e "${GREEN}Installation de la version $version terminé${NC}"
        echo -e "${RED}Quittez tout les terminaux puis taper node -v pour verifié votre version${NC}"
        break
        ;;
    [nN][oO] | [nN])
        echo -e "${RED}Fermeture du programme${NC}"
        break
        ;;
    *)
        echo -e "${RED}Please enter a valid option${NC}"
        ;;
    esac
done

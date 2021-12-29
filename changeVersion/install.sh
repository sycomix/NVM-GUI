#!/bin/sh
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
RED='\033[0;31m'

export NVM_DIR=$HOME/.nvm
source $NVM_DIR/nvm.sh

echo -e "Salut, bienvenue dans le changeVersion, voici les différentes versions de NodeJs disponibles :"
echo -e "${GREEN}1. NodeJs v8.x${NC}"
echo -e "${GREEN}2. NodeJs v9.x${NC}"
echo -e "${GREEN}3. NodeJs v10.x${NC}"
echo -e "${GREEN}4. NodeJs v11.x${NC}"
echo -e "${GREEN}5. NodeJs v12.x${NC}"
echo -e "${GREEN}6. NodeJs v13.x${NC}"
echo -e "${GREEN}7. NodeJs v14.x${NC}"
echo -e "${GREEN}8. NodeJs v15.x${NC}"
echo -e "${GREEN}9. NodeJs v16.x${NC}"
echo -e "${GREEN}10. NodeJs v17.x${NC}"
echo -e "${GREEN}11. Version Spécifique non listé${NC}"

while true; do
    read -r -p "$(echo -e "${BLUE}Quelle version de NodeJs voulez-vous ? (ex: 1)${NC}")" input
    case $input in
    1)
        echo -e "${GREEN}Vous avez choisi la version NodeJs v8.x${NC}"
        nvm install 8
        nvm alias default 8
        echo -e "${GREEN}Installation terminé${NC}"
        echo -e "${RED}Quittez tout les terminaux puis taper node -v pour verifié votre version${NC}"
        break
        ;;
    2)
        echo -e "${GREEN}Vous avez choisi la version NodeJs v9.x${NC}"
        nvm install 9
        nvm alias default 9
        echo -e "${GREEN}Installation terminé${NC}"
        echo -e "${RED}Quittez tout les terminaux puis taper node -v pour verifié votre version${NC}"
        break
        ;;
    3)
        echo -e "${GREEN}Vous avez choisi la version NodeJs v10.x${NC}"
        nvm install 10
        nvm alias default 10
        echo -e "${GREEN}Installation terminé${NC}"
        echo -e "${RED}Quittez tout les terminaux puis taper node -v pour verifié votre version${NC}"
        break
        ;;
    4)
        echo -e "${GREEN}Vous avez choisi la version NodeJs v11.x${NC}"
        nvm install 11
        nvm alias default 11
        echo -e "${GREEN}Installation terminé${NC}"
        echo -e "${RED}Quittez tout les terminaux puis taper node -v pour verifié votre version${NC}"
        break
        ;;
    5)
        echo -e "${GREEN}Vous avez choisi la version NodeJs v12.x${NC}"
        nvm install 12
        nvm alias default 12
        echo -e "${GREEN}Installation terminé${NC}"
        echo -e "${RED}Quittez tout les terminaux puis taper node -v pour verifié votre version${NC}"
        break
        ;;
    6)
        echo -e "${GREEN}Vous avez choisi la version NodeJs v13.x${NC}"
        nvm install 13
        nvm alias default 13
        echo -e "${GREEN}Installation terminé${NC}"
        echo -e "${RED}Quittez tout les terminaux puis taper node -v pour verifié votre version${NC}"
        break
        ;;
    7)
        echo -e "${GREEN}Vous avez choisi la version NodeJs v14.x${NC}"
        nvm install 14
        nvm alias default 14
        echo -e "${GREEN}Installation terminé${NC}"
        echo -e "${RED}Quittez tout les terminaux puis taper node -v pour verifié votre version${NC}"
        break
        ;;
    8)
        echo -e "${GREEN}Vous avez choisi la version NodeJs v15.x${NC}"
        nvm install 15
        nvm alias default 15
        echo -e "${GREEN}Installation terminé${NC}"
        echo -e "${RED}Quittez tout les terminaux puis taper node -v pour verifié votre version${NC}"
        break
        ;;
    9)
        echo -e "${GREEN}Vous avez choisi la version NodeJs v16.x${NC}"
        nvm install 16
        nvm alias default 16
        echo -e "${GREEN}Installation terminé${NC}"
        echo -e "${RED}Quittez tout les terminaux puis taper node -v pour verifié votre version${NC}"
        break
        ;;
    10)
        echo -e "${GREEN}Vous avez choisi la version NodeJs v17.x${NC}"
        nvm install 17
        nvm alias default 17
        echo -e "${GREEN}Installation terminé${NC}"
        echo -e "${RED}Quittez tout les terminaux puis taper node -v pour verifié votre version${NC}"
        break
        ;;
    11)
        echo -e "${GREEN}Vous avez demandé l'installation d'une version non demandé${NC}"
        exec bash changeVersion/specificVersion.sh
        break
        ;;
    *)
        echo -e "${RED}Please enter a valid option${NC}"
        ;;
    esac
done

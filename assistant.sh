#!/bin/bash
# Bash Menu Script Example
show_menu(){
	echo -e "Please enter your choice: "
	echo -e "\n 1)Option 1 \n 2)Option 2 \n 3)Option 3 \n 4)Quit"
}
PS3='Please enter your choice: '
options=("Download Any File" "Random Password Genarator" "Download Youtube Videos" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Download Any File")
        	
            sh ./download_any.sh
            show_menu
            ;;
        "Random Password Genarator")
        	
            sh ./random_psw.sh
            show_menu
            ;;
        "Download Youtube Videos")
        	
            sh ./dl_youtube.sh
            show_menu
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done


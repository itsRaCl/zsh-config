export EDITOR=nvim

alias nvim=nvim .
alias vim=nvim
alias mux=tmuxinator
alias generate_pwd="python ~/code/personal/scripts/generate_password.py"
alias split_pdf="source ~/code/venv/scripts/bin/activate && python ~/code/personal/scripts/trim_pages.py"




venv() {
    DIRECTORY=$(echo $(basename $(pwd)))
    echo "Activating virtual environment $DIRECTORY"
    source ~/code/venv/$DIRECTORY/bin/activate
}

create_venv(){
    echo "creating venv $1"
    python -m venv ~/code/venv/$1
}

wifi_login() {
    curl 'https://fw.bits-pilani.ac.in:8090/login.xml' -X POST --data-raw "mode=191&username=F20220080&password=F20250222%23"
}
wifi_logout() {
    curl 'https://fw.bits-pilani.ac.in:8090/logout.xml' -X POST --data-raw "mode=193&username=F20220080"
}

code(){
    DIRECTORY=$(echo $(basename $(pwd)))
    mux $DIRECTORY
}

handout() {
    if [ $1 = "m3" ]; then
        zathura "~/study/2-1/M3 MATH F211/M3 Handout (MATH F211).pdf" &
    elif [ $1 = "disco" ]; then
        zathura "~/study/2-1/DISCO CS F222/DISCO Handout (CS F222).pdf" &
    elif [ $1 = "lics" ]; then
        zathura "~/study/2-1/LICS CS F214/LICS Handout (CS F214).pdf" &
    elif [ $1 = "dd" ]; then
        zathura "~/study/2-1/DD CS F215/DD Handout (CS F215).pdf" &
    elif [ $1 = "oop" ]; then
        zathura "~/study/2-1/OOP CS F213/OOP Handout (CS F213).pdf" &
    fi
}
tb() {
    if [ $1 = "m3" ]; then
        zathura "~/study/2-1/M3 MATH F211/M3 Textbook.pdf" &
    elif [ $1 = "disco" ]; then
        zathura "~/study/2-1/DISCO CS F222/DISCO RB1.pdf" &
    elif [ $1 = "lics" ]; then
        zathura "~/study/2-1/LICS CS F214/LICS Textbook.pdf" &
    elif [ $1 = "dd" ]; then
        zathura "~/study/2-1/DD CS F215/DD Textbook.pdf" &
    elif [ $1 = "oop" ]; then
        zathura "~/study/2-1/OOP CS F213/OOP Textbook.pdf" &
    fi
}


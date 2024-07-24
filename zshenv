export EDITOR=nvim
export PKGEXT=".pkg.tar"
export XDG_CURRENT_DESKTOP="GNOME"
export QT_QPA_PLATFORMTHEME="qt5ct"
export CHROME_EXECUTABLE=chromium
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk/
export PATH="$PATH:/home/racl/.flutter_bin/flutter/bin"
export ANDROID_SDK_ROOT='/opt/android-sdk'
export ANDROID_HOME='/opt/android-sdk'
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH="$PATH":"$HOME/.pub-cache/bin"

alias nvim=nvim .
alias vim=nvim
alias mux=tmuxinator
alias generate_pwd="python ~/code/personal/scripts/generate_password.py"
alias split_pdf="source ~/code/venv/scripts/bin/activate && python ~/code/personal/scripts/trim_pages.py"
alias i3lock="i3lock -k -B 9 -e -f --indicator --inside-color=f38ba8 --ring-color=f38ba8 --keyhl-color=a6e3a1 --insidever-color=89b4fa --ringver-color=89b4fa"




venv() {
	VENV_DIR=~/code/venv

	if [[ $1 ]];
	then
		DIRECTORY_NAME=$1
	else
		DIRECTORY_NAME=$(echo $(basename $(pwd)))
	fi

	FILE_PATH=$VENV_DIR/$DIRECTORY_NAME/bin/activate
	 if [ -e $FILE_PATH ];
	 then 
		 echo "Activating virtual environment $DIRECTORY_NAME"
		 source $FILE_PATH
	 else
		 echo "No such venv exists ($DIRECTORY_NAME)"
	 fi
}

latest_venv(){
    echo "creating venv $1 with latest python version"
    python -m venv ~/code/venv/$1
}

38_venv(){
    echo "creating venv $1 with python version 3.8"
    python3.8 -m venv ~/code/venv/$1
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
. "$HOME/.cargo/env"

export EDITOR=nvim
export PKGEXT=".pkg.tar"
export XDG_CURRENT_DESKTOP="i3"
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
alias cd=z
alias imgcopy="xclip -selection clipboard -t image/png <"

. "$HOME/.cargo/env"

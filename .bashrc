# aliases
alias ll='ls -lh'
alias rs='rsync -vah --info=progress2 --no-i-r'

# colors
GREEN="\033[32m"
RED="\033[31m"
PURPLE="\033[35m"
L_PURPLE="\033[38;5;92m"
DARK_ORANGE="\033[38;5;130m"
ORANGE="\033[38;5;208m"
GREY="\033[90m"
RESET="\033[0m"
BLUE="\033[34m"
CYAN="\033[36m"

# function for colored exit status arrow
update_arrow_color() {
        if [ $? -eq 0 ]; then
                ARROW="${GREEN}->${RESET}"
        else
                ARROW="${RED}->${RESET}"
        fi
}

# fucntion to update the bash prompt
update_prompt() {
        export PS1="\[${BLUE}\h\]\[${RESET} \[${L_PURPLE}\w\]\[${RESET} \[${ARROW}\] "
}

# commands to be ran before displaying bash prompt
PROMPT_COMMAND='update_arrow_color; update_prompt'

# enable color prompts in case they are not
force_color_prompt=yes

# function to edit and re-source bashrc file
brc() {
        micro ~/.bashrc
        source ~/.bashrc
        echo Reloaded Bashrc
}

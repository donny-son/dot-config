## PROMPT RELATED
function fish_greeting
    printf (set_color F90)" ______  _______ _______ \n"
    printf (set_color F80)"(  __  \\(  ___  |  ____ \\ \n"
    printf (set_color F70)"| (  \  ) (   ) | (    \/\n"
    printf (set_color F60)"| |   ) | |   | | (_____ \n"
    printf (set_color F50)"| |   | | |   | (_____  )\n"
    printf (set_color F40)"| |   ) | |   | |     ) |\n"
    printf (set_color F30)"| (__/  ) (___) /\____) |\n"
    printf (set_color F20)"(______/(_______)_______)\n"
end 

# EDITOR
set -U EDITOR nvim


# OS and PATHS
switch (uname)
case Darwin
printf (set_color A80)"░░█▀▄▀█ ░█▀▀█ ░█▀▀█\n" 
printf (set_color B80)"░░█░█░█ ░█▄▄█ ░█   \n" 
printf (set_color C80)"░░█  ░█ ░█ ░█ ░█▄▄█\n"
    fish_add_path $HOME/bin
    fish_add_path /bin
    fish_add_path /sbin
    fish_add_path /usr/bin
    fish_add_path /usr/sbin
    fish_add_path /usr/local/bin
    fish_add_path /Library/Frameworks/Python.framework/Versions/3.9/bin
    fish_add_path $HOME/anaconda3/condabin
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin
    fish_add_path /Library/Developer/CommandLineTools/usr/bin
    fish_add_path /Library/Frameworks/R.framework/Resources/bin
    fish_add_path /Applications/Typora.app/Contents/MacOS
case Linux
    printf (set_color B90)"█▄─▄███▄─▄█▄─▀█▄─▄█▄─██─▄█▄─▀─▄█\n"
    printf (set_color B90)"██─██▀██─███─█▄▀─███─██─███▀─▀██\n"
    printf (set_color B90)"▀▄▄▄▄▄▀▄▄▄▀▄▄▄▀▀▄▄▀▀▄▄▄▄▀▀▄▄█▄▄▀\n"
    fish_add_path /usr/bin
    fish_add_path /usr/local/bin
    fish_add_path /usr/local/stata
    fish_add_path /usr/local/go/bin
    fish_add_path /usr/local/cuda-11.0/bin
    fish_add_path /usr/local/cuda-11.0/include
    set -U PYTHONPATH /mnt/nas/core/pycore
    set -U LD_LIBRARY_PATH /usr/local/cuda-11.0/lib64:/usr/local/cuda/extras/CUPTI/
    set -U CUDA_HOME /usr/local/cuda-11.0
    set -U CUDA_INC_DIR /usr/local/cuda-11.0/include
    # CONDA
    eval /home/jasmin/anaconda3/bin/conda "shell.fish" "hook" $argv | source
    source /home/jasmin/anaconda3/etc/fish/conf.d/conda.fish
end

# CONDA
switch (whoami)(uname)
case dongooksonDarwin # macbook pro
    eval /opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
    source /opt/anaconda3/etc/fish/conf.d/conda.fish
case donnyDarwin
    eval $HOME/anaconda3/bin/conda "shell.fish" "hook" $argv | source
    source $HOME/anaconda3/etc/fish/conf.d/conda.fish
end

# ALIAS
. ~/.config/fish/aliases.fish

# Options
set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_showupstream "informative"

# Colors
set green (set_color green)
set magenta (set_color magenta)
set normal (set_color normal)
set red (set_color red)
set yellow (set_color yellow)
set __fish_git_prompt_color_branch magenta --bold
set __fish_git_prompt_color_dirtystate white
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_merging yellow
set __fish_git_prompt_color_stagedstate yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red


# Icons
set __fish_git_prompt_char_cleanstate ' 👍 '
set __fish_git_prompt_char_conflictedstate ' ⚠️ '
set __fish_git_prompt_char_dirtystate ' 💩 '
set __fish_git_prompt_char_invalidstate ' 🤮 '
set __fish_git_prompt_char_stagedstate ' 🚥 '
set __fish_git_prompt_char_stashstate ' 📦 '
set __fish_git_prompt_char_stateseparator ' | '
set __fish_git_prompt_char_untrackedfiles ' 🔍 '
set __fish_git_prompt_char_upstream_ahead ' ☝️ '
set __fish_git_prompt_char_upstream_behind ' 👇 '
set __fish_git_prompt_char_upstream_diverged ' 🚧 '
set __fish_git_prompt_char_upstream_equal ' 💯 ' 


function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s\n' (__fish_git_prompt)
  # echo -n "🐠  "
  echo -n "><((((º>  "
  set_color normal
end


# EDITOR
set -U EDITOR nvim

switch (uname)
case Darwin
    # PATHS
    echo This is Mac
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
    # CONDA
    eval $HOME/anaconda3/bin/conda "shell.fish" "hook" $argv | source
case Linux
    echo This is Linux
    fish_add_path /usr/bin
    fish_add_path /usr/local/bin
    fish_add_path /usr/local/stata
    fish_add_path /usr/local/go/bin
    fish_add_path /usr/local/cuda-11.0/bin
    fish_add_path /usr/local/cuda-11.0/include
    set -xg PYTHONPATH /mnt/nas/core/pycore $PYTHONPATH
    set -xg LD_LIBRARY_PATH /usr/local/cuda-11.0/lib64:/usr/local/cuda/extras/CUPTI/ $LD_LIBRARY_PATH
    set -xg CUDA_HOME /usr/local/cuda-11.0 $CUDA_HOME
    set -xg CUDA_INC_DIR /usr/local/cuda-11.0/include $CUDA_INC_DIR
    # CONDA
    eval /home/jasmin/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end



# ALIAS
. ~/.config/fish/aliases.fish

# PROMPT RELATED
set fish_greeting

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
set __fish_git_prompt_char_conflictedstate ' ⚠️  '
set __fish_git_prompt_char_dirtystate ' 💩  '
set __fish_git_prompt_char_invalidstate ' 🤮  '
set __fish_git_prompt_char_stagedstate ' 🚥  '
set __fish_git_prompt_char_stashstate ' 📦  '
set __fish_git_prompt_char_stateseparator ' | '
set __fish_git_prompt_char_untrackedfiles ' 🔍 '
set __fish_git_prompt_char_upstream_ahead ' ☝️  '
set __fish_git_prompt_char_upstream_behind ' 👇  '
set __fish_git_prompt_char_upstream_diverged ' 🚧  '
set __fish_git_prompt_char_upstream_equal ' 💯 ' 


function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)
  echo -n "🐠  "
  set_color normal
end

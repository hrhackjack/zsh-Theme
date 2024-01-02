local smiley='${return_status} %{$FG[049]%}%B$(get_pwd)%b%{$reset_color%} $(git_prompt_info)${prompt_suffix}${arrow}'

PROMPT="%{$FG[051]%}╭─── 🚩 %{$FG[047]%}%B$USER%b$reset_color 🧛 %{$FG[197]%}%B$HOST%b%{$reset_color%}%{$FG[227]%} ⪼⪼🢖 🥷$reset_color 
%{$FG[196]%}╰─── ${smiley} "

RPROMPT='${time}'

local return_status="%(?:%{$fg_bold[magenta]%}🥷 :%{$fg_bold[blue]%}🧞)"

local prompt_suffix="%{$fg[yellow]%}💻 %{$reset_color%}"
local arrow="%{${fg_bold[yellow]}%}%{$reset_color%}"
local time="⏳ %{$FG[202]%}%D{%H:%M:%S} 🛸 %{$FG[160]%}%D{%D} 🗿%{$reset_color%}"


function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo $prompt_short_dir
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# by Hrishabh_hrx

#Terminal Configuration
#[[default]]
#background_color = "#263238"
#background_image = None
#foreground_color = "#C3C7D1"
#  palette = #"#073641:#EB606B:#C3E88D:#F7EB95:#80CBC3:#FF2490:#AEDDFF:#FFFFFF:#002B36:#EB606B:#C3E88D:##   F7EB95:#7DC6BF:#6C71C3:#34434D:#FFFFFF"
#  copy_on_selection = True

# https://user-images.githubusercontent.com/995050/47952855-ecb12480-df75-11e8-89d4-ac26c50e80b9.png

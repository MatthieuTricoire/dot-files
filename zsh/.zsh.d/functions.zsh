# create a directory and cd into it
function mcd() {
  mkdir "${1}" && cd "${1}"
}

function nvims() {
  items=("lazyvim"  "astronvim" "matthnvim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}


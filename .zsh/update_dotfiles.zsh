function update_dotfiles {
  pushd ~/dotfiles
  git pull
  git submodule update --init --merge --recursive
  popd
  redotfiles
  reprofile
}


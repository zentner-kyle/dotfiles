export PATH="$HOME/.local/bin:${PATH}"
export PATH="$HOME/depot_tools:${PATH}"
export PATH="$HOME/.multirust/toolchains/nightly/cargo/bin:${PATH}"
#export PATH="$HOME/rr/obj/bin:${PATH}"

#export EDITOR=vim
export EDITOR=nvim

export MOZ_QUIET=1

export RUST_SRC_PATH="$HOME/rust/src"
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/

#eval $(keychain --eval -Q --quiet --noask id_rsa)
#eval $(keychain --eval -Q --noask id_rsa)
#eval $(keychain --eval -Q id_rsa)

#if [ "$GNOME_KEYRING_CONTROL" ]; then
  #eval $(gnome-keyring-daemon --start)
#else
  ##eval $(keychain --eval -Q id_rsa)
  #eval $(keychain --eval --quiet -Q id_rsa)
#fi

#eval $(keychain --eval --quiet -Q id_rsa)
eval $(keychain --nogui --eval --quiet -Q id_rsa)
#eval $(gnome-keyring-daemon --start)

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64/"
export CUDA_HOME="/opt/cuda/"

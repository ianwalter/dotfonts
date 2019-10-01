#!/bin/bash

platform=$(uname)
if [[ $platform == 'Linux' ]]; then

  # Create the .fonts directory if necessary.
  if [ ! -d ~/.fonts ]; then
    mkdir ~/.fonts
  fi

  # Copy fonts into the user's .fonts directory.
  cp fonts/* ~/.fonts

  # Clear the fonts cache.
  sudo fc-cache -f -v

fi

if [[ $platform == 'Darwin' ]]; then

  # Copy fonts into the user's fonts directory.
  cp fonts/* ~/Library/fonts

fi

if [[ $? == 0 ]]; then
  echo "Installed fonts successfully."
fi

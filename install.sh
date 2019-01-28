#!/bin/bash

# Create the .fonts directory if necessary.
if [ ! -d ~/.fonts ]; then
  mkdir ~/.fonts
fi

# Copy fonts into the .fonts directory.
cp fonts/* ~/.fonts

if [[ $(uname) == 'Linux' ]]; then

  # Clear the fonts cache.
  sudo fc-cache -f -v

fi

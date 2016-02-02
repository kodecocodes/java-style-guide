#!/bin/bash

echo "Installing RW style..."

CONFIGS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/configs"

for i in $HOME/Library/Preferences/IntelliJIdea*  \
         $HOME/Library/Preferences/IdeaIC*        \
         $HOME/Library/Preferences/AndroidStudio* \
         $HOME/.IntelliJIdea*/config              \
         $HOME/.IdeaIC*/config                    \
         $HOME/.AndroidStudio*/config
do
  if [ -d $i ]; then
    mkdir -p $i/codestyles
    cp -frv "$CONFIGS"/* $i/codestyles
  fi
done

echo "Done. :]"
echo ""
echo "Restart IntelliJ and/or AndroidStudio, go to Preferences, and apply 'raywenderlich.com'."

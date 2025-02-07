#!/bin/bash

cd source >/dev/null 2>&1

if ! mkdir core >/dev/null 2>&1
  then
    rm -rf core
    fi

mkdir core
cd core
git init
git clone https://github.com/benevolent0377/PyCaliCore.git
cd PyCaliCore/
echo "Unpacking files"
if ! mv *.py ../ >/dev/null 2>&1
  then
    echo "Installation failed. Please make sure you are connected to the internet and have the latest version installed."
    cd ../../
    rm -rf core

else
  cd ../
  rm -rf PyCaliCore

  echo "Core files successfully installed."
fi

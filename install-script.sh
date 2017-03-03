#!/bin/bash

which -s brew
if [[ $? != 0 ]] ; then
    echo -e "\n\n------------------------------------------"
    echo -e "\nInstalling Homebrew, a Mac terminal package manager...\n"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "export PATH='/usr/local/bin:$PATH'" >> ~/.bash_profile
else
    echo -e "\nOkay, looks like you've got Homebrew installed."
fi

which -s ruby
if [[ $? != 0 ]] ; then
    echo -e "\n\n------------------------------------------"
    echo -e "\nInstalling Ruby by running 'brew install ruby' ...\n"
    brew install ruby
    gem update --system
else
    echo -e "Okay, looks like you've got Ruby installed."
fi


which -s jekyll
if [[ $? != 0 ]] ; then
    echo -e "\n\n------------------------------------------"
    echo -e "\nRunning 'gem install jekyll' ...\n"
    gem install jekyll
else
    echo -e "Okay, looks like you've got Jekyll installed."
fi


which -s sass
if [[ $? != 0 ]] ; then
    echo -e "\n\n------------------------------------------"
    echo -e "Running 'gem install sass' ...\n"
    gem install sass
else
    echo -e "Okay, looks like you've got Sass installed."
fi


which -s node
if [[ $? != 0 ]] ; then
    echo -e "\n\n------------------------------------------"
    echo -e "\nInstalling Node by running 'brew install node' ...\n"
    brew install node
else
    echo -e "Okay, looks like you've got Node installed."
fi


which -s grunt
if [[ $? != 0 ]] ; then
    echo -e "\n\n------------------------------------------"
    echo -e "Installing Grunt by running 'npm install -g grunt-cli' ...\n"
    npm install -g grunt-cli
else
    echo -e "Okay, looks like you've got Grunt installed."
fi

echo -e "\n\n------------------------------------------"
echo -e "Installing npm dependencies specified in package.json by running 'npm install' ...\n"
npm install

echo -e "\nAll dependencies installed!\n\nCheck the README to see how to run the Jekyll server,"
echo -e "and how to manage your assets with Grunt. Enjoy :)\n"

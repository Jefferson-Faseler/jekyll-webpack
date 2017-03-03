## Jekyll & Webpack, integrated!

So you can have your React and serve it statically, too. Plugin-free and works with hosting on Github pages!

![image](https://cloud.githubusercontent.com/assets/5208932/14959264/1f4a0504-1054-11e6-9971-5b5d5143112e.png)

This example boilerplate is for the walkthrough post found here:
- http://allizad.com/2016/05/02/using-webpack-with-jekyll

# Getting started

Clone this repo onto your machine

## Dependencies

Ruby, Jekyll, Sass, Homebrew, Node, webpack, Grunt

For mac users:

To install all dependencies (if you need them) run the install script by copy and pasting the below code into your terminal

`./install-script.sh`


For Windows and Linux users:

please be sure to have Ruby, Rubygems, Jekyll and Sass gems, Node, npm, and Grunt installed.

## Running on your machine

First run `grunt` to create the correct assets for your repo

To start the server run `jekyll serve`

To have grunt watch your files without constantly reloading your server use `grunt watch` in a new terminal window/tab

## Adding assets

To add images, place them into `assets/development/images` and run `grunt` or `grunt resize` to place them into `assets/production/images`.

To add stylesheets place them into `assets/development/stylesheets/components` as `.scss`.
(Changes made in any `.css` file will not reflect and these files should be ignored) Then add them to the import tree in `main.scss` and run `grunt`.

Always reference production versions for stylesheets or images.

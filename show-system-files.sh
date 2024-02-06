TERMINAL
--------

$: defaults write com.apple.finder AppleShowAllFiles -bool YES
$: killall Finder

CONTEXT MENU
------------

* open up Automator
* choose a Service template
* from the library choose "Run Shell Script" and drag it across to the workflow area
* In the text box paste the following command:

STATUS=`defaults read com.apple.finder AppleShowAllFiles`
if [ $STATUS == YES ]; 
then
    defaults write com.apple.finder AppleShowAllFiles NO
else
    defaults write com.apple.finder AppleShowAllFiles YES
fi
killall Finder

* change the “text’ drop-down menu to “Files and Folders”
* change “any application” drop-down menu to “Finder”

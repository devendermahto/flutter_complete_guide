<= Build a boiler plate app in flutter=>
cd to directory where you want to store project files

flutter create flutter_complete_guide

<= Error: Flutter did not found android studio =>
flutter config --android-studio-dir="/snap/android-studio/current/android-studio"

in my case it is in /home/devender/Downloads/android-studio

flutter config --android-studio-dir="/home/devender/Downloads/android-studio"

<=  Connect github to git=>
git config --global user.email "devendermahto@gmail.com"
git config --global user.name "devendermahto"
git config --global user.password "2007***"

or 

git remote add origin https://github.com/devendermahto/flutter_complete_guide.git

after adding remote repository

git push --set-upstream origin master

create a blank repository on github and add that as remote origin



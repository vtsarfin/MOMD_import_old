#!/bin/bash
cp -a ~/.EPS ~/EPS.bak
sudo cp -a /Applications/MyOfficeMail.app /Applications/MyOfficeMail-bak.app  > /dev/null 2>&1
cp -a ~/Library/MyOffice\ Mail ~/Library/MyOffile\ Mail.bak > /dev/null 2>&1
rm -rf ~/Library/MyOffice\ Mail > /dev/null 2>&1
mkdir -p ~/Library/MyOffice\ Mail/Profiles
cp -r ~/.EPS ~/Library/MyOffice\ Mail/Profiles/eps.default-default
rm -rf ~/Library/MyOffice\ Mail/Profiles/eps.default-default/extent*
cp -r /Applications/MyOffice\ Mail.app/Contents/Resources/distribution/extensions ~/Library/MyOffice\ Mail/Profiles/eps.default-default/
cat > ~/Library/MyOffice\ Mail/profiles.ini <<endofprofile 
[Profile0]
Name=default-default
IsRelative=1
Path=Profiles/eps.default-default
Default=1

[General]
StartWithLastProfile=1
Version=2

[Install1DC0692CFC744F2E]
Default=Profiles/eps.default-default
Locked=1
endofprofile



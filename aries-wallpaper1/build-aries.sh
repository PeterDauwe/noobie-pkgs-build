#!/bin/bash
#https://wiki.archlinux.org/index.php/DeveloperWiki:Building_in_a_Clean_Chroot
deletion1="../../aries_repo/x86_64/"
name1="${PWD##*/}"

rm $deletion1/$name1-21*.zst



destiny="../../aries_repo/x86_64/"

#destiny=$destination1

makepkg

echo "Moving created files to " $destiny
echo "#############################################################################################"
mv $search*pkg.tar.zst $destiny

ls | grep -v "PKGBUILD\|build-aries.sh" | xargs rm -rf

echo "Cleaning up"
echo "#############################################################################################"
echo "deleting unnecessary folders"
echo "#############################################################################################"


tput setaf 8
echo "#############################################################################################"
echo "###################                       build done                   ######################"
echo "#############################################################################################"
tput sgr0

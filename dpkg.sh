#!/bin/bash

#解包
# for file in `ls ./ori`
# 	do
# 	if [[ -d ".//$file" ]];echo "unzip..."
# 	then
# 		mkdir -p "./debs/$file"	
# 		dpkg -X "./ori/$file" "./uzip/$file"
# 		dpkg -e "./ori/$file" "./uzip/$file/DEBIAN"	
# 		chmod 755 "./uzip/$file/DEBIAN"
# 		chmod 755 "./uzip/$file/DEBIAN/control"
# 		#chmod 755 "./uzip/$file/DEBIAN/preinst"
# 		#chmod 755 "./uzip/$file/DEBIAN/postinst"
# 		#chmod 755 "./uzip/$file/DEBIAN/prerm"
# 	fi
# done


# #打包
# for file in `ls ./uzip`
# 	do
# 	if [[ -d "./uzip/$file" ]];
# 	then	
# 		mkdir -p "./debs/$file"		
# 		dpkg-deb -bZgzip "./uzip/$file" "./debs"
# 		#dpkg -b "./uzip/$file/" "./debs"
# 		rm -r "./debs/$file"
# 	fi
# done

#!/bin/bash
#dpkg-scanpackages -m ./packages/debs > ./packages/Packages
#bzip2 -fks ./packages/Packages ./packages/Packages.bz2

rm -f Packages Packages.bz2
dpkg-scanpackages -m ./debs > ./Packages
bzip2 -fks ./Packages ./Packages.bz2
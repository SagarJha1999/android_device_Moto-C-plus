echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/av frameworks/base frameworks/native system/netd system/core external/wpa_supplicant_8"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory

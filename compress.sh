function compress_package() {
    	compress_package=`tar -zcvf ../${BUILD_NAME} ${BUILD_PATH}`
	package_size=`du -sh $BUILD_NAME`
   	echo "The size of the drivecore installable is : $package_size"
    	echo "The path of the build is : $CURRENT_PATH/$BUILD_NAME"
}

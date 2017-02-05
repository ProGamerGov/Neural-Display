#! /bin/bash 

	size_factor=2

	# 1. Defines the content image as a variable
	input=$1
	input_file=`basename $input`
	clean_name="${input_file%.*}"
	
	#Defines the style image as a variable
	style=$2
	style_dir=`dirname $style`
	style_file=`basename $style`
	style_name="${style_file%.*}"

	#Defines the styled image as a variable
	content=$3
	content_dir=`dirname $content`
	content_file=`basename $content`
	content_name="${content_file%.*}"

	#Defines the temp directory
	temp_dir="./"$clean_name"_temp"""
	mkdir $temp_dir
	

	styled_image_w=`convert $clean_name'.png' -format "%w" info:`
	styled_image_h=`convert $clean_name'.png' -format "%h" info:`
	
	if [ `echo ${style} | grep -c ','` -gt 0 ] ; then
		
		echo commas detected
		#Remove commas
		style_nc=`echo $style | tr ',' ' '`
		echo commas removed

		#find num style images
		wc=$(($(wc -w <<< "${style_nc}"))) 
		wc2=`echo $wc 1 | awk '{print $1+$2}'`
		content_c=`echo $styled_image_h $size_factor | awk '{print $1/$2}'`

		#Create the Comparison
		echo Creating output... This may take some time...
		montage $content $style_nc -resize "$styled_image_w"x"$content_c" -tile "$wc2"x1 -geometry +0+0 $temp_dir/comparison_resize.png
		convert $temp_dir/comparison_resize.png -resize $styled_image_w $temp_dir/comparison.png
		montage $input $temp_dir/comparison.png -tile 1x2 -geometry +0+0 comparison_final_v.png
  
    #remove temp directory
		rm -rf $temp_dir
			
	else
		echo no commas detected
		#Remove commas
		style_nc=${style/","/" "}

		#find num style images
		wc=$(($(wc -w <<< "${style_nc}"))) 
		wc2=`echo $wc 1 | awk '{print $1+$2}'`
		content_c=`echo $styled_image_h $size_factor | awk '{print $1/$2}'`

		#Create the Comparison
		echo Creating output... This may take some time...
		montage $content $style_nc -resize "$styled_image_w"x"$content_c" -tile "$wc2"x1 -geometry +0+0 $temp_dir/comparison_resize.png
		convert $temp_dir/comparison_resize.png -resize $styled_image_w $temp_dir/comparison.png
		montage $input $temp_dir/comparison.png -tile 1x2 -geometry +0+0 comparison_final_v.png

    #remove temp directory
		rm -rf $temp_dir

	fi;


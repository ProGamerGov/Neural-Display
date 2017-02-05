# Neural-Display
Display your styled outputs alongside their content and style image(s), in a single image.

---

#Requirements

[Neural-Style](https://github.com/jcjohnson/neural-style) or a [similar style transfer system](https://github.com/jcjohnson/neural-style/wiki/Similar-to-Neural-Style).

ImageMagick can be installed on Ubuntu with:

`sudo apt-get install imagemagick`

---

#Usage: 

For a horizontal comparison:

`./neural-display-h.sh <styled_image> <style_image(s)> <content_image>`

For a vertical comparison:

`./neural-display-v.sh <styled_image> <style_image(s)> <content_image>`

The style images should be separated with a comma like they are in [Neural-Style](https://github.com/jcjohnson/neural-style) commands:
`style1.png,style2.png,style3.png`

If you end up with [a white background showing/the images not filling the space correctly](https://i.imgur.com/nmbJ9nZ.jpg), change the `size_factor` in the applicable script to a larger value.

---

#Example Outputs:

![](https://i.imgur.com/hbq3aaM.jpg)

![](https://i.imgur.com/GAmJUpH.jpg)

![](https://i.imgur.com/MzdF1tS.jpg)

![](https://i.imgur.com/mLSixxs.jpg)

![](https://i.imgur.com/yBxYqMv.jpg)

---

#Troubleshooting

If you face a permission error, try using chmod to fix the issue: 

`chmod u+x ./neural-display-h.sh`

Or:

`chmod u+x ./neural-display-v.sh`

You can also try adding sudo bash like: 

`sudo bash ./neural-display-h.sh`
Or:
`sudo bash ./neural-display-v.sh`

--- 

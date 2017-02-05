# Neural-Display
Display your styled outputs alongside the content and style image(s)

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

---

#Example Outputs:

![](https://i.imgur.com/hbq3aaM.jpg)

![](https://i.imgur.com/qmySQRV.jpg)

![](https://i.imgur.com/MzdF1tS.jpg)

![](https://i.imgur.com/wNEuJJV.jpg)



---

#Troubleshooting

If you face a permission error, try using chmod to fix the issue: 

`chmod u+x ./neural-display-h.sh`

Or:

`chmod u+x ./neural-display-v.sh`

--- 

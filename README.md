
<img width="762" height="159" alt="FFT_WF_Banner" src="https://github.com/user-attachments/assets/b7ee64cc-2064-4c07-bcdc-36f09b913f2b" />

**FFT Watch Face**

I love Final Fantasy Tactics! Here are some FFT-themed watch faces created using Watch Face Studio, compatible with various Wear OS watches like the Galaxy and Pixel watches (sorry Apple Watches).  Watch Face Studio only allows a limited number of options per item (like characters) so there are 23 watch faces with 10 characters each.  Features include:

-	Most story characters + all pallets+genders for generic units, over 200 total character sprite sets
-	15 backgrounds (several animated) and 4 edge fade options
-	HP/MP/CT become Steps/Charge/Seconds with bars that fill and empty
-	Character kneels for low battery & sings for notifications
-	Includes AOD support 
-	Watch Face Studio project files available


**How to Install**

These are not on the Play or other stores for obvious reasons, so you will need to install the watch faces manually - this usually involves using ADB.  The general idea is to download the .apk file(s) for the character set(s) you want and install on your watch using ADB - more detailed guides are available online, some basic instructions are below for accomplishing this on PC.   


**Set up ADB and Pair**

Needed if you do not already have ADB set up or have it paired with your watch. 

1.	Install ADB (consider ‘ADB & Fastboot++’ found on Git Hub)
2.	Enable developer options on watch:<br>
    a.	Settings > About Watch > Software Information<br>
  	b.	Tap ‘Software Version’ repeatedly until notification appears
4.	Enable ADB and Wireless Debugging on watch:<br>
    a.	Settings > Developer Options<br>
    b.	Enable ADB debugging and Wireless Debugging
6.	Pair watch and computer:<br>
    a.	(on watch) Settings > Developer Options > Wireless Debugging > Pair New Device<br>
    b.	(on PC) open a cmd window and use pair with watch using cmd:
    
        adb pair [ip:port shown on watch]


**Install Watch Faces**

Follow the steps below once ADB is installed and paired with your watch.

1.	Enable Wireless Debugging on watch
2.	Open cmd window on PC and connect to watch:
   
        adb connect [IP address:port displayed in Wireless Debugging on watch]
4.	Install .apk on watch (quote path if it contains spaces):
   
        adb install c:\path\to\watchface.apk


Installed watch faces will show up in the Downloaded section on your watch/Wear app.


Previews from Watch Face Studio - performance and appearance are signficantly better on-watch 

https://github.com/user-attachments/assets/469c0dd5-d1f9-4a61-9266-8d25347c0e33


Step goal met indicator (top-right)

https://github.com/user-attachments/assets/6aef7f0a-a112-4271-88af-abcd06ebf683


Singing notifications

https://github.com/user-attachments/assets/bc791145-bff3-4b55-906f-a73545977a70


Battery critical + edge fade options

https://github.com/user-attachments/assets/a99f14ed-a1cc-49c5-aa7d-31407f9ea2cf


Generic character pallets and genders

https://github.com/user-attachments/assets/5723e13a-cdf9-43cc-a4f6-bebb27378f86


AOD display option

https://github.com/user-attachments/assets/c0569ef0-0c63-4d4d-92fb-f9afa06a1104


**FFT Watch Face**

I love Final Fantasy Tactics and have created an FFT-themed watch face using Watch Face Studio, compatible with various Wear OS watches like the Galaxy and Pixel watches.  It features:

-	About 50 total characters plus variations and all pallets+genders for generics, totaling over 200 character sprites
-	15 backgrounds and 4 edge fade options
-	HP/MP/CT become Steps/Charge/Seconds with bars that fill and empty
-	Character goes critical for low battery & singing for notifications
-	Includes AOD support 
-	Watch Face Studio project files available


**How to Install**

Download the .apk file(s) you want to use and install to your watch using ADB - more detailed guides are available online, some basic instructions are below.  Watch Face Studio only allows a limited number of options per item (eg characters) so there are 23 individual sets with 10 character sprites in each set.  


**Set up ADB and Pair**

Needed if you do not already have ADB set up or have it paired with your watch. 

1.	Install ADB (consider ‘ADB & Fastboot++’ on Git Hub)
2.	Enable developer options on watch:

    a.	Settings > About Watch > Software Information
  	
  	b.	Top ‘Software Version’ repeatedly until notification appears
4.	Enable ADB and Wireless Debugging on watch:

    a.	Settings > Developer Options
  	
    b.	Enable ADB debugging and Wireless Debugging
6.	Pair watch and computer:

    a.	(on watch) Settings > Developer Options > Wireless Debugging > Pair New Device
  	
    b.	(on PC) open a cmd window and use pair with watch using cmd:

        adb pair [ip:port shown on watch]


**Install Watch Faces**

Download the .apk file for the character set(s) you want to your PC and install using ADB.

1.	Connect watch to same network as PC, enable Wireless Debugging on watch
2.	Open cmd window on PC and connect to watch:
   
        adb connect [IP address:port displayed in Wireless Debugging on watch]
4.	Install .apk on watch:
   
        adb install c:\path\to\watchface.apk
  	
    (quote path if it contains spaces)





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


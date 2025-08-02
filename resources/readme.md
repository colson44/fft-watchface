This folder contains resources including image, scripts, and a template project file used to create the watch faces.  

- The AHK files are macros and text databases for quickly selecting sprite groupings and creating builds in Watch Face Studio - these macros are pretty specific to my computer and unlikely to work elsewhere, only uploaded for my backup and reference.<br>
- The image zip files contain the character sprites, backgrounds, and UI elements used in the watch faces.<br>
- The project template file is the "base" watch face that was copied and then modified to create each variant of the watch face.  <br>

Somes notes on how the overall process was done for the curious: I made heavy use of AutoHotkey along with tools like ShishiSpriteEditor found on FF Hacktics to pull individual frames for each character, and then used imagemagick to stich the images
together & create the animations.  UI elements were also extracted using Shishi, and then the backgrounds were taken from in-game screenshots using the DuckStation emulator on PC.  I used these to assemble the template watch face in Watch Face Studio,
and then wrote another AutoHotkey script to automate the processes of adding the character sprites and building the Android files.  

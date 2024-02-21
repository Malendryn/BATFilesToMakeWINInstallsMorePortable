# BATFilesToMakeWINInstallsMorePortable
Various .BATfiles to make certain apps store data in a portable manner

I HATE the way windows installs software.  It makes it nearly impossible to backup your data, and you have to go through the fiery pits of hell to move anything to a new machine!  So, for those programs that I am most likely to want to work with on various different machines, and even different operating systems, I've created some .BAT scripts to forcibly localize the data in easy to copy directories that are also largely transferrable between windows and linux installs too!

I can't do anything about what's put in that horrible nightmare known as the registry, but that doesn't really matter for most of these programs as I'm not trying to keep the program itself as portable, only the data and configuration files.  You'd still have to reinstall the software in the normal manner, but these scripts change where the data and configuration files typically get placed.   (which in windows would be C:\USER\<name>\AppData\...)

Some programs TRY to do this for you, and some do it well, but some do it poorly!   For example:  

    VSCode allows you to create a 'data' directory under the install, which instructs it to store all its secret sauce in that subdir,  but this is bad because now, that subdirectory exists underneath the install, and not in a nice neat location of your choosing.

    Cura doesn't even HAVE a localized install under windows, so backing it up requires you to figure out where in all hell those rediculous config files are stored!

    Blender and FreeCAD kinda have it pretty well managed, but you have to use all sorts of command line options and set a bunch of shell variables.

For my installs to be as portable as possible, I install as much as I can in C:\lcl\bin\Portable_Installs\*, and redirect all configurations to C:\lcl\bin\Portable_Installs\__data\*,  (You'll see it more clearly in the .bat files.)  These scripts also support multiple versions of the software too.

Finally, I also rename the actual .EXE to <originalname>-BATLoadOnly.exe to make sure I NEVER accidentally load them without going through these scripts!

Certain programs ran into a need for enabling long pathnames too, (like VSCode when using node.js) which in the modern world is generally a good idea anyway!

Anyway, hope you like these and if you come up with any improvements or new ideas drop some comments!

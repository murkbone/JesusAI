::Prototype build created by D4rkC0rp0r4ti0n
::Alpha branch coded and maintained by DREZMOR on GitHub
::Alternate fork by 448v on GitHub
::Built for Windows Command Prompt & Windows Powershell.
::Untested on other operating systems
::Found an issue? Report it at our repository: https://github.com/JesusAIexperience/JesusAI

@echo off
title JesusAI (v1.0.0-beta1)

::Runs on startup
::Checks if "verify.txt" exists (to identify if the game has been ran before)
::If file exists, instantly send to menu
::If not, create file & send to intro screen

:startup
cls
if not exist "%appdata%\JesusAI" (
    cd %appdata%
    mkdir JesusAI
    goto info
)
goto info

:info
cls
if not exist "%appdata%\JesusAI\verify.txt" (
    cd %appdata%\JesusAI
    echo .> verify.txt
    goto termsandconditions
)
goto endingchecker

::Checks if all three endings are acquired
::Each ending will write a text file to the specified directory (in this case, %appdata%\JesusAI)
::If all three exist, send to the menu with the DLC feature
::If not, send to regular menu
::Additionally, checks for a debug file
::If it exists and all other endings exist, go to the hidden menu with debug options enabled
::If endings don't exist, but debug does, go to regular debug menu
::If endings and debug file don't exist, go to regular menu

:endingchecker
if exist "%appdata%\JesusAI\ending1.txt" if exist "%appdata%\JesusAI\ending2.txt" if exist "%appdata%\JesusAI\ending3.txt" if exist "%appdata%\JesusAI\debug.txt" goto debugmenudeluxe
if exist "%appdata%\JesusAI\ending1.txt" if exist "%appdata%\JesusAI\ending2.txt" if exist "%appdata%\JesusAI\ending3.txt" goto menudeluxe
if exist "%appdata%\JesusAI\debug.txt" goto debugmenu
if not exist "%appdata%\JesusAI\ending1.txt" goto menu
if not exist "%appdata%\JesusAI\ending2.txt" goto menu
if not exist "%appdata%\JesusAI\ending3.txt" goto menu

:termsandconditions
color 1f
cls
echo                    ___                                            
echo                   /\_ \                                           
echo  __  __  __     __\//\ \     ___    ___     ___ ___      __       
echo /\ \/\ \/\ \  /'__`\\ \ \   /'___\ / __`\ /' __` __`\  /'__`\     
echo \ \ \_/ \_/ \/\  __/ \_\ \_/\ \__//\ \L\ \/\ \/\ \/\ \/\  __/  __ 
echo  \ \___x___/'\ \____\/\____\ \____\ \____/\ \_\ \_\ \_\ \____\/\ \
echo   \/__//__/   \/____/\/____/\/____/\/___/  \/_/\/_/\/_/\/____/\ \/
echo   __                                  ___                         
echo  /\ \  __                  __        /\_ \                        
echo  \_\ \/\_\    ____    ___ /\_\  _____\//\ \      __               
echo  /'_` \/\ \  /',__\  /'___\/\ \/\ '__`\\ \ \   /'__`\             
echo /\ \L\ \ \ \/\__, `\/\ \__/\ \ \ \ \L\ \\_\ \_/\  __/             
echo \ \___,_\ \_\/\____/\ \____\\ \_\ \ ,__//\____\ \____\            
echo  \/__,_ /\/_/\/___/  \/____/ \/_/\ \ \/ \/____/\/____/          
echo[
echo The game has detected this is your first time running JesusAI.
echo Please read our terms and conditions.
echo[
echo This game is not designed to offend in any way.
echo All of JesusAI was created by three devs, D4rkC0rp0r4ti0n, DREZMOR and 448v.
echo This game in no way means to bash religion or its figures.
echo[
echo Please type anything to agree to these terms.
echo This screen will not show up again once you agree.
echo If you do not agree, please close the game now.
echo[
set /p "terms=?: "
if "%terms%" equ "qweha8ds78dagdbasdasdasdsay1y239y192312y9a ahl2" exit
goto endingchecker

:menu
color 0e
cls
echo  _____                                  ______  ______     
echo /\___ \                                /\  _  \/\__  _\    
echo \/__/\ \     __    ____  __  __    ____\ \ \L\ \/_/\ \/    
echo    _\ \ \  /'__`\ /',__\/\ \/\ \  /',__\\ \  __ \ \ \ \    
echo   /\ \_\ \/\  __//\__, `\ \ \_\ \/\__, `\\ \ \/\ \ \_\ \__ 
echo   \ \____/\ \____\/\____/\ \____/\/\____/ \ \_\ \_\/\_____\
echo    \/___/  \/____/\/___/  \/___/  \/___/   \/_/\/_/\/_____/
echo[
echo Welcome to JesusAI!
echo Please select an option.
echo 1. Start Experience
echo 2. Close Experience
echo 3. Open GitHub Repository Page
echo 4. Credits
echo 5. Options
echo[
echo Copyright 2021 C0rp Studios
echo Version: v1.0.0-beta1
echo Last update: 28/01/2022
echo[
echo This version is probably unstable.
echo Expect random crashes or glitches.
echo[
set /p "menu=Selected option: "
if "%menu%" equ "X" goto xshop
if "%menu%" equ "x" goto xshop
if "%menu%" equ "repent" goto repent
if "%menu%" equ "password" goto password
if "%menu%" equ "calibrate" goto calibrate
if "%menu%" equ "ehumunbobabye2134144" cd %appdata%\JesusAI & echo .> debug.txt & goto debugmenu
if "%menu%" equ "fuck you" start "" "https://i.imgur.com/SEhpuRg.jpg"
if "%menu%" equ "jesus" start "" https://i.imgur.com/DCtv3fR.gif
if "%menu%" equ "5" goto options
if "%menu%" equ "4" goto credits
if "%menu%" equ "3" start "" "https://github.com/JesusAIexperience/JesusAI"
if "%menu%" equ "2" exit
if "%menu%" equ "1" goto jesusai
goto menu

:debugmenu
color 0e
cls
echo  _____                                  ______  ______     
echo /\___ \                                /\  _  \/\__  _\    
echo \/__/\ \     __    ____  __  __    ____\ \ \L\ \/_/\ \/    
echo    _\ \ \  /'__`\ /',__\/\ \/\ \  /',__\\ \  __ \ \ \ \    
echo   /\ \_\ \/\  __//\__, `\ \ \_\ \/\__, `\\ \ \/\ \ \_\ \__ 
echo   \ \____/\ \____\/\____/\ \____/\/\____/ \ \_\ \_\/\_____\
echo    \/___/  \/____/\/___/  \/___/  \/___/   \/_/\/_/\/_____/
echo[
echo DEBUG OPTIONS ENABLED!
echo Welcome to JesusAI!
echo Please select an option.
echo 1. Start Experience
echo 2. Close Experience
echo 3. Open GitHub Repository Page
echo 4. Credits
echo 5. Options
echo 6. (DEBUG) List Directories
echo[
echo Copyright 2021 C0rp Studios
echo Version: v1.0.0-beta1
echo Last update: 28/01/2022
echo[
echo This version is probably unstable.
echo Expect random crashes or glitches.
echo[
set /p "menudebug=Selected option: "
if "%menudebug%" equ "X" goto xshop
if "%menudebug%" equ "x" goto xshop
if "%menudebug%" equ "repent" goto repent
if "%menudebug%" equ "password" goto password
if "%menudebug%" equ "calibrate" goto calibrate
if "%menudebug%" equ "ehumunbobabye2134144" del "%appdata%\JesusAI\debug.txt" & goto endingchecker
if "%menudebug%" equ "fuck you" start "" "https://i.imgur.com/SEhpuRg.jpg"
if "%menudebug%" equ "jesus" start "" https://i.imgur.com/DCtv3fR.gif
if "%menudebug%" equ "6" goto directorylist
if "%menudebug%" equ "5" goto options
if "%menudebug%" equ "4" goto credits
if "%menudebug%" equ "3" start "" "https://github.com/JesusAIexperience/JesusAI"
if "%menudebug%" equ "2" exit
if "%menudebug%" equ "1" goto jesusai
goto debugmenu

:menudeluxe
color 0e
cls
echo  _____                                  ______  ______     
echo /\___ \                                /\  _  \/\__  _\    
echo \/__/\ \     __    ____  __  __    ____\ \ \L\ \/_/\ \/    
echo    _\ \ \  /'__`\ /',__\/\ \/\ \  /',__\\ \  __ \ \ \ \    
echo   /\ \_\ \/\  __//\__, `\ \ \_\ \/\__, `\\ \ \/\ \ \_\ \__ 
echo   \ \____/\ \____\/\____/\ \____/\/\____/ \ \_\ \_\/\_____\
echo    \/___/  \/____/\/___/  \/___/  \/___/   \/_/\/_/\/_____/
echo[
echo Welcome to JesusAI!
echo Please select an option.
echo 1. Start Experience
echo 2. Close Experience
echo 3. Open GitHub Repository Page
echo 4. Credits
echo 5. Options
echo 6. Open Extras / DLC Menu
echo[
echo Copyright 2021 C0rp Studios
echo Version: v1.0.0-beta1
echo Last update: 28/01/2022
echo[
echo This version is probably unstable.
echo Expect random crashes or glitches.
echo[
set /p "menudeluxe=Selected option: "
if "%menudeluxe%" equ "repent" goto repent
if "%menudeluxe%" equ "password" goto password
if "%menudeluxe%" equ "calibrate" goto calibrate
if "%menudeluxe%" equ "ehumunbobabye2134144" cd %appdata%\JesusAI & echo .> debug.txt & goto debugmenudeluxe
if "%menudeluxe%" equ "fuck you" start "" "https://i.imgur.com/SEhpuRg.jpg"
if "%menudeluxe%" equ "jesus" start "" https://i.imgur.com/DCtv3fR.gif
if "%menudeluxe%" equ "6" goto dlc
if "%menudeluxe%" equ "5" goto options
if "%menudeluxe%" equ "4" goto credits
if "%menudeluxe%" equ "3" start "" "https://github.com/JesusAIexperience/JesusAI"
if "%menudeluxe%" equ "2" exit
if "%menudeluxe%" equ "1" goto jesusai
goto menu

:debugmenudeluxe
color 0e
cls
echo  _____                                  ______  ______     
echo /\___ \                                /\  _  \/\__  _\    
echo \/__/\ \     __    ____  __  __    ____\ \ \L\ \/_/\ \/    
echo    _\ \ \  /'__`\ /',__\/\ \/\ \  /',__\\ \  __ \ \ \ \    
echo   /\ \_\ \/\  __//\__, `\ \ \_\ \/\__, `\\ \ \/\ \ \_\ \__ 
echo   \ \____/\ \____\/\____/\ \____/\/\____/ \ \_\ \_\/\_____\
echo    \/___/  \/____/\/___/  \/___/  \/___/   \/_/\/_/\/_____/
echo[
echo DEBUG OPTIONS ENABLED!
echo Welcome to JesusAI!
echo Please select an option.
echo 1. Start Experience
echo 2. Close Experience
echo 3. Open GitHub Repository Page
echo 4. Credits
echo 5. Options
echo 6. Open Extras / DLC Menu
echo 7. (DEBUG) List Directories
echo[
echo Copyright 2021 C0rp Studios
echo Version: v1.0.0-beta1
echo Last update: 28/01/2022
echo[
echo This version is probably unstable.
echo Expect random crashes or glitches.
echo[
set /p "menudebugdeluxe=Selected option: "
if "%menudebugdeluxe%" equ "repent" goto repent
if "%menudebugdeluxe%" equ "password" goto password
if "%menudebugdeluxe%" equ "calibrate" goto calibrate
if "%menudebugdeluxe%" equ "ehumunbobabye2134144" del "%appdata%\JesusAI\debug.txt" & goto endingchecker
if "%menudebugdeluxe%" equ "fuck you" start "" "https://i.imgur.com/SEhpuRg.jpg"
if "%menudebugdeluxe%" equ "jesus" start "" https://i.imgur.com/DCtv3fR.gif
if "%menudebugdeluxe%" equ "7" goto directorylist
if "%menudebugdeluxe%" equ "6" goto dlc
if "%menudebugdeluxe%" equ "5" goto options
if "%menudebugdeluxe%" equ "4" goto credits
if "%menudebugdeluxe%" equ "3" start "" "https://github.com/JesusAIexperience/JesusAI"
if "%menudebugdeluxe%" equ "2" exit
if "%menudebugdeluxe%" equ "1" goto jesusai
goto debugmenudeluxe

:options
cls
color 0b
echo               __                                  
echo              /\ \__  __                           
echo   ___   _____\ \ ,_\/\_\    ___     ___     ____  
echo  / __`\/\ '__`\ \ \/\/\ \  / __`\ /' _ `\  /',__\ 
echo /\ \L\ \ \ \L\ \ \ \_\ \ \/\ \L\ \/\ \/\ \/\__, `\
echo \ \____/\ \ ,__/\ \__\\ \_\ \____/\ \_\ \_\/\____/
echo  \/___/  \ \ \/  \/__/ \/_/\/___/  \/_/\/_/\/___/ 
echo           \ \_\                                   
echo            \/_/          
echo[
echo Welcome to the Options Menu!
echo All options are togglable.
echo Please select an option to turn on or off:
echo[
if exist "%appdata%\JesusAI\debug.txt" (
    echo 1: Debug Mode [ON]
)
if not exist "%appdata%\JesusAI\debug.txt" (
    echo 1: Debug Mode [OFF]
)
echo 2. Reset Save Data
echo 3. Delete Intro File
echo 4. Uninstall JesusAI
echo 5. Go Back to Menu
echo[
set /p "options=Selected option: "
if "%options%" equ "1" goto option1
if "%options%" equ "2" goto areyousure3
if "%options%" equ "3" goto areyousure1
if "%options%" equ "4" goto areyousure2
if "%options%" equ "5" goto endingchecker
goto options

:option1
cls
if not exist "%appdata%\JesusAI\debug.txt" (
    cd %appdata%\JesusAI
    echo .> debug.txt
    goto options
)
del "%appdata%\JesusAI\debug.txt" & goto options

:areyousure1
cls
echo Are you sure you want to delete the Intro Configuration File?
echo (Disclaimer: This file is rewritten when the game is booted.)
echo (You will not cause permanent damage by deleting it.)
echo Respond with Y to delete, or N to return to the Options menu.
echo[
set /p "areyousure1=?: "
if "%areyousure1%" equ "Y" del "%appdata%\JesusAI\verify.txt" & goto completed1
if "%areyousure1%" equ "y" del "%appdata%\JesusAI\verify.txt" & goto completed1
if "%areyousure1%" equ "N" goto options
if "%areyousure1%" equ "n" goto options
goto areyousure1

:areyousure2
cls
echo Are you sure you want to uninstall JesusAI?
echo This will delete all files relating to JesusAI.
echo If you want to reinstall the game, visit the GitHub page.
echo Respond with Y to delete, or N to return to the Options menu.
set /p "areyousure2=?: "
if "%areyousure2%" equ "Y" goto reallysure2
if "%areyousure2%" equ "y" goto reallysure2
if "%areyousure2%" equ "N" goto options
if "%areyousure2%" equ "n" goto options
goto areyousure2

:areyousure3
cls
echo Are you sure you want to reset your save data?
echo This will delete all your ending files, intro configuration file,
echo secret files and more. Only do this if you want to replay the game.
echo Respond with Y to reset save data, or N to return to the Options menu.
set /p "areyousure3=?: " 
if "%areyousure3%" equ "Y" goto reallysure3
if "%areyousure3%" equ "y" goto reallysure3
if "%areyousure3%" equ "N" goto options
if "%areyousure3%" equ "n" goto options
goto areyousure3

:reallysure3
cls
echo Are you REALLY sure you want to reset your save data?
echo You will not be able to get it back without restarting the entire game.
echo This is your last chance to go back.
echo Respond with Y to reset save data, or N to return to the Options menu.
set /p "reallysure3=?: "
if "%reallysure3%" equ "Y" goto resetsavedata
if "%reallysure3%" equ "y" goto resetsavedata
if "%reallysure3%" equ "N" goto options
if "%reallysure3%" equ "n" goto options
goto reallysure3

:resetsavedata
cd %appdata%\JesusAI
del "%appdata%\JesusAI\verify.txt"
del "%appdata%\JesusAI\ending1.txt"
del "%appdata%\JesusAI\ending2.txt"
del "%appdata%\JesusAI\ending3.txt"
del "%appdata%\JesusAI\debug.txt"
del "%appdata%\JesusAI\exist.txt"
del "%appdata%\JesusAI\floppy.txt"
del "%appdata%\JesusAI\patch.txt"
goto completed3

:completed3
cls
echo Save data deleted.
echo Press anything to exit JesusAI.
set /p "completed3=?: "
if "%completed3%" equ "uh0sefuisdhf8w3yh45jh2asdasdad2342342344b4h2u421u" exit
exit

:reallysure2
cls
echo Are you REALLY sure you want to uninstall JesusAI?
echo Only do this if you really want to delete it or fix an issue.
echo Respond with Y to delete, or N to return to the Options menu.
set /p "reallysure2=?: "
if "%reallysure2%" equ "Y" goto uninstall
if "%reallysure2%" equ "y" goto uninstall
if "%reallysure2%" equ "N" goto options
if "%reallysure2%" equ "n" goto options
goto reallysure2

:uninstall
del "%appdata%\JesusAI\verify.txt"
cd %localhost%
del "JesusA.I.bat"
exit

:completed1
cls
echo File deleted.
echo Type anything to return to the Options menu.
set /p "completed1=?: "
if "%completed1%" equ "saoihdhoisadfsad7dsad87d9sad799ad" exit
goto options

:xshop
cls
echo  ___,___,_______,____
echo /  :::////.///'//    \
echo /  :::///.//// // H)  /
echo /  ::://.////!!!/     /
echo /   _______________   /
echo /  /:::::::::::::::/  /
echo /  /_______________/  /
echo /  /_______________/  /
echo /  /_______________/  /
echo /  /_______________/  /
echo //_/               //_/
echo /__/_______________/__/
echo[
echo Good evening.
echo What are you here for?
echo[
echo PROMPTS:
echo "Nothing." (Go back to Main Menu)
echo "I'm looking for X."
echo[
set /p "xshop=Selected prompt: "
if "%xshop%" equ "nothing" goto endingchecker
if "%xshop%" equ "nothing." goto endingchecker
if "%xshop%" equ "Nothing" goto endingchecker
if "%xshop%" equ "Nothing." goto endingchecker
if "%xshop%" equ "i'm looking for X" goto xshop2
if "%xshop%" equ "i'm looking for X." goto xshop2
if "%xshop%" equ "I'm looking for X" goto xshop2
if "%xshop%" equ "I'm looking for X." goto xshop2
if "%xshop%" equ "im looking for x" goto xshop2
if "%xshop%" equ "im looking for X" goto xshop2
goto xshop

:xshop2
cls
echo  ___,___,_______,____
echo /  :::////.///'//    \
echo /  :::///.//// // H)  /
echo /  ::://.////!!!/     /
echo /   _______________   /
echo /  /:::::::::::::::/  /
echo /  /_______________/  /
echo /  /_______________/  /
echo /  /_______________/  /
echo /  /_______________/  /
echo //_/               //_/
echo /__/_______________/__/
echo[
echo I am X.
echo What business do you seek with me?
echo[
echo PROMPTS:
echo "Nothing." (Go back to Main Menu)
echo "JesusAI brought me here."
echo[
set /p "xshop2=Selected prompt: "
if "%xshop2%" equ "nothing" goto endingchecker
if "%xshop2%" equ "nothing." goto endingchecker
if "%xshop2%" equ "Nothing" goto endingchecker
if "%xshop2%" equ "Nothing." goto endingchecker
if "%xshop2%" equ "JesusAI brought me here." goto xshop3
if "%xshop2%" equ "JesusAI brought me here" goto xshop3
if "%xshop2%" equ "jesusai brought me here." goto xshop3
if "%xshop2%" equ "jesusai brought me here" goto xshop3
goto xshop2

:xshop3
cls
echo  ___,___,_______,____
echo /  :::////.///'//    \
echo /  :::///.//// // H)  /
echo /  ::://.////!!!/     /
echo /   _______________   /
echo /  /:::::::::::::::/  /
echo /  /_______________/  /
echo /  /_______________/  /
echo /  /_______________/  /
echo /  /_______________/  /
echo //_/               //_/
echo /__/_______________/__/
echo[ 
echo I see. I know of who runs that AI.
echo Take this floppy disc. Get to the screen with your IP information.
echo Insert the floppy disc and see what happens.
echo[
echo NEW ITEM OBTAINED: Floppy Disc 
echo Type anything to go back.
echo[
set /p "xshop3=?: "
if "%xshop3%" equ "Smugownsacertainsphereafavorgy1u23uy1g23b1h23ku123hku123kuh" exit
goto xshopcompletedpayload

:xshopcompletedpayload
cls
if not exist "%appdata%\JesusAI\floppy.txt" (
    cd %appdata%\JesusAI
    echo Looks like you got an item, kid!> floppy.txt
    goto endingchecker
)
goto endingchecker

:dlc
cls
color 0c
echo               __                            
echo              /\ \__                         
echo    __   __  _\ \ ,_\  _ __    __      ____  
echo  /'__`\/\ \/'\\ \ \/ /\`'__\/'__`\   /',__\ 
echo /\  __/\/'  '/ \ \ \_\ \ \//\ \L\.\_/\__, `\
echo \ \____\/\_/\_\ \ \__\\ \_\\ \__/.\_\/\____/
echo  \/____/\//\/_/  \/__/ \/_/ \/__/\/_/\/___/ 
echo[
echo Congratulations on finishing the JesusAI campaign!
echo You now have access to some cool little extras.
echo New extras will be added at random times throughout updates.
echo (DLC menu created by 448v)
echo[
echo 1. Open Cartridges Menu (DLC)
echo 2. Play JesusAI Prototype
echo 3. Go Back to Main Menu
echo[
set /p "dlc=Selected option: "
if "%dlc%" equ "1" goto cartridges
if "%dlc%" equ "2" goto oldmenu
if "%dlc%" equ "3" goto menudeluxe
goto dlc

:cartridges
cls
title JesusAI (v1.0.0-beta1)
color 0c
echo                       __                   __                           
echo                      /\ \__         __    /\ \                          
echo   ___     __     _ __\ \ ,_\  _ __ /\_\   \_\ \     __      __    ____  
echo  /'___\ /'__`\  /\`'__\ \ \/ /\`'__\/\ \  /'_` \  /'_ `\  /'__`\ /',__\ 
echo /\ \__//\ \L\.\_\ \ \/ \ \ \_\ \ \/ \ \ \/\ \L\ \/\ \L\ \/\  __//\__, `\
echo \ \____\ \__/.\_\\ \_\  \ \__\\ \_\  \ \_\ \___,_\ \____ \ \____\/\____/
echo  \/____/\/__/\/_/ \/_/   \/__/ \/_/   \/_/\/__,_ /\/___L\ \/____/\/___/ 
echo                                                     /\____/             
echo                                                     \_/__/              
echo[
echo Welcome to the Cartridges menu!
echo Cartridges serve as extra optional DLC you can download.
echo You can only run Cartridges that you have downloaded.
echo If the specific Cartridge you want to run isn't downloaded, it will not run.
echo Make sure all Cartridges are placed in the directory where JesusAI is located!
echo Choose from one of the options:
echo[
echo Choose from one of these options:
echo 1. Open the Cartridges Download Page
echo 2. Run Cartridge 1
echo 3. Run Cartridge 2
echo 4. Run Cartridge 3
echo 5. Go Back to Extras Menu
set /p "cartridges=Selected option: "
if "%cartridges%" equ "1" start "" "https://github.com/DREZMOR/JesusAI-Cartridges"
if "%cartridges%" equ "2" goto cartridge1
if "%cartridges%" equ "3" goto cartridge2
if "%cartridges%" equ "4" goto cartridge3
if "%cartridges%" equ "5" goto dlc
goto cartridges

:cartridge1
cls
echo Cartridge success
cd %appdata%\JesusAI
echo .> CARTRIDGECHECKER.txt
cd %localhost%
call "%~dp0Cartridge 1.bat"
goto cartridges

:cartridge2
cls
echo Cartridge success
cd %appdata%\JesusAI
echo .> CARTRIDGECHECKER.txt
cd %localhost%
call "%~dp0Cartridge 2.bat"
goto cartridges

:cartridge3
cls
echo Cartridge success
cd %appdata%\JesusAI
echo .> CARTRIDGECHECKER.txt
cd %localhost%
call "%~dp0Cartridge 3.bat"
goto cartridges

:repent
color 0a
cls
echo Diary Entry: 12/09/1977
echo I have found a specific set of instructions you can do within the experience to unlock... something.
echo Type "password" on the main menu screen and input "3813".
echo Next, once you're back in the menu, type "calibrate".
echo The screen requires a password of some sort, but I don't know what it is.
echo Try searching around the program to see what you can find.
echo[
echo Type anything to return to the menu.
echo[
set /p "repent=?: "
if "%repent%" equ "sbhdjfvhejhgwv3u2yg423ygvu4v234y" exit
goto quickflash

:quickflash
goto code

:password
cls
set /p "passwordsecret=Password: "
if "%passwordsecret%" equ "3813" goto acceptedstep
goto menu

:acceptedstep
echo .> %appdata%\JesusAI\exist.txt
goto accepted

:accepted
cls
echo Password accepted
echo Type anything to go back
set /p "accepted=?: "
if "%accepted%" equ "q8y234guiegharlyuwafuaetfv" exit
goto menu

:calibrate
cls
color 4f
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@  @@ ,@ @@ @@@ @@@ @@@   @@  @@  @@@@ @@@ @@@@   @/ @@@ @@@@ #@  *@@  @@@@@    @@@        @  @@@
echo @@@@   @@%     @@@ @@@@@@    @@  @        @@@ @@   @@@/ @@@ @  @@@@@ *@@  @@  @@(  @@@ @@ @   @  @@@
echo @@@@ (@ @%     @@@  @@@      @@    @@   @ @@@ @@ @   @/ @@@    @ #@  *@@  @ @@ @@@ @@@   @@@@ @  @@@
echo @@@@     ,@    @@@    @   @  @@    @@@@@  @@@   @@      @@@ @    #@  *@@  @ @@@    @@@     @@ @  @@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@           @@@           @@           @@@           @@@          *@@           @@@           @@@
echo @@@@ (@ @@@    @@@  @@@@@    @@   @  @@@  @@@    @@@    @@@ @   @* @ *@@  @        @@@    @  @   @@@
echo @@@@ (@*@ *#   @@@  ##*@@#*  @@  @@@@*  @ @@@   *****#, @@@ @@@# /#@ *@@  *#####%@ @@@ @@ ###@*  @@@
echo @@@@ (@    @   @@@ @   @@@@  @@  @@@@@@@  @@@ @@ @@@    @@@    @@@@  *@@  @   @ /@ @@@        @  @@@
echo @@@@           @@@           @@           @@@           @@@          *@@           @@@           @@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@    @% @@@ @@@  @@       @@   @@@@  @ @@@ @@     @/ @@@ @    #@@ *@@  @   @@@@ @@@ @@@    @  @@@
echo @@@@           @@@ @@@   @@  @@    @@ @@@ @@@   @@  @   @@@ @    #@  *@@   @  @    @@@ @@@@  @   @@@
echo @@@@ (@    @@@ @@@  @@ @@ @  @@  @ @@ @@  @@@ @@ @@@    @@@    @@*   *@@  @@@@@@(  @@@ @@    @   @@@
echo @@@@ (@@@%     @@@  @@    @  @@   @@@@    @@@ @@@       @@@ @@@@ #@  *@@   @   @@@ @@@     @@ @  @@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@           @@@           @@           @@@           @@@          *@@           @@@           @@@
echo @@@@ (@@ ,@@   @@@    @@@@@  @@    @@     @@@ @@    @   @@@ @@@ @@@@ *@@  @   @@(  @@@           @@@
echo @@@@    @% @@@ @@@ @      @  @@   @  @@@  @@@ @@ @   @/ @@@ @  @@*   *@@  @@@@@ /@ @@@    @@@@@  @@@
echo @@@@     ,@@   @@@ @@@@@@ @  @@  @ @@   @ @@@    @  @   @@@      #@@ *@@    @@     @@@ @@ @  @   @@@
echo @@@@           @@@           @@           @@@           @@@          *@@           @@@           @@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@   @@% @@@ @@@ @   @@@   @@    @@@    @@@   @   @   @@@  @@ @*   *@@   @@@  /@ @@@ @@  @@ @  @@@
echo @@@@   @@@@@   @@@    @  @@  @@  @ @@   @ @@@ @@@@@@@@/ @@@     @@@@ *@@   @@@@ /@ @@@ @@@ @@ @  @@@
echo @@@@ / @...    @@@ .      @  @@   @       @@@ ..@  @  * @@@  ..  ..@ *@@  .@  .  @ @@@ ..    @@  @@@
echo @@@@   @@% @@@ @@@  @@ @@@@  @@  @ @@   @ @@@      @@@/ @@@  @@    @ *@@  @ @@@@@@ @@@    @@@@   @@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo[
echo                                           ENTER PASSPHRASE
set /p "calibrate=?: "
if "%calibrate%" equ "manifest" goto stepverify
exit

:stepverify
if not exist "%appdata%\JesusAI\exist.txt" (
    goto menu
)
goto step2

:step2
cls
echo The End 2 %date% %time% >"%appdata%\JesusAI\ending2.txt"
echo THANK YOU FOR ASSUMING THE POSITION
echo YOU ARE ON YOUR WAY TO GREAT SUCCESS
echo[
echo PASSCODE ENDING
echo TYPE ANYTHING TO GO BACK 
set /p "step2=?: "
if "%step2%" equ "wqgyyukwuwkygeygwegaey123123" exit
goto menu

:directorylist
cls
echo   __                          __                                       
echo  /\ \  __                    /\ \__                __                  
echo  \_\ \/\_\  _ __    __    ___\ \ ,_\   ___   _ __ /\_\     __    ____  
echo  /'_` \/\ \/\`'__\/'__`\ /'___\ \ \/  / __`\/\`'__\/\ \  /'__`\ /',__\ 
echo /\ \L\ \ \ \ \ \//\  __//\ \__/\ \ \_/\ \L\ \ \ \/ \ \ \/\  __//\__, `\
echo \ \___,_\ \_\ \_\\ \____\ \____\\ \__\ \____/\ \_\  \ \_\ \____\/\____/
echo  \/__,_ /\/_/\/_/ \/____/\/____/ \/__/\/___/  \/_/   \/_/\/____/\/___/ 
echo[
echo This lists all places you can go using JesusAI.
echo List of current directories (can be updated):
echo[
echo 1. Main Menu
echo 2. Main Menu (Debug Options available)
echo 3. Credits List
echo 4. Options List
echo 5. Judgement (Secret)
echo 6. JesusAI (Main)
echo 7. "Hello" Prompt
echo 8. "Who Are You?" Prompt
echo 9. "What is JesusAI?" Prompt
echo 10. Error Screen (Secret)
echo 11. Hell
echo 12. Hell Level 2
echo 13. Hell Level 3
echo 14. Hell Level 4
echo 15. Hell Finale
echo 16. Directory List
echo 17. JesusAI Prototype
echo 18. Terms and Conditions Menu
echo 19. DLC Menu
echo 20. X's Shop
echo 21. C0rp Security Disc
echo 22. Startup Screen (Reboot JesusAI)
echo[
set /p "directories=Directory you want to travel to: "
if "%directories%" equ "22" goto startup
if "%directories%" equ "21" goto thedisc
if "%directories%" equ "20" goto xshop
if "%directories%" equ "19" goto dlc
if "%directories%" equ "18" goto termsandconditions
if "%directories%" equ "17" goto oldmenu
if "%directories%" equ "16" goto directorylist   
if "%directories%" equ "15" goto hellfinale
if "%directories%" equ "14" goto hellpart4  
if "%directories%" equ "13" goto hellpart3  
if "%directories%" equ "12" goto hellpart2   
if "%directories%" equ "11" goto payloadtohell   
if "%directories%" equ "10" goto payloadtoerror 
if "%directories%" equ "9" goto whatisjesusai
if "%directories%" equ "8" goto whoareyou
if "%directories%" equ "7" goto hello
if "%directories%" equ "6" goto jesusai
if "%directories%" equ "5" goto judgement
if "%directories%" equ "4" goto options
if "%directories%" equ "3" goto credits
if "%directories%" equ "2" goto debugmenu
if "%directories%" equ "1" goto menu
goto directorylist

:credits
cls
echo                       __      __             
echo                      /\ \  __/\ \__          
echo   ___   _ __    __   \_\ \/\_\ \ ,_\   ____  
echo  /'___\/\`'__\/'__`\ /'_` \/\ \ \ \/  /',__\ 
echo /\ \__/\ \ \//\  __//\ \L\ \ \ \ \ \_/\__, `\
echo \ \____\\ \_\\ \____\ \___,_\ \_\ \__\/\____/
echo  \/____/ \/_/ \/____/\/__,_ /\/_/\/__/\/___/                                                                                                     
echo[
echo JesusAI - Created by C0rp Studios
echo Programming by DREZMOR, 448v and D4rkC0rp0r4ti0n
echo Entirely written via Batch in Virtual Studio Code
echo Project concept established in Late 2019 as an inside joke between friends
echo Project fully started in December 2021
echo Repository hosted on GitHub
echo Thanks StackOverflow (for helping fix so many things)
echo[
echo Type anything to go back.
set /p "credits=?: "
if "%credits%" equ "bhfbhdfohbob324ohsdfsdf234234bhshui" exit
goto endingchecker

:oldmenu
color 0a
cls
echo Jesus A.I
echo The first ever prototype
echo Slightly optimized and modified to work properly
echo Originally by D4rkC0rp0r4ti0n
echo Recoded and patched in by DREZMOR
echo Small fixes by 448v
echo[
echo Please pick an option
echo 1. Start Experience
echo 2. Exit
echo 3. Return to Extras Menu
set /p "oldmenu=Selected option: "
if "%oldmenu%" equ "1" goto oldjesusai
if "%oldmenu%" equ "2" exit
if "%oldmenu%" equ "3" goto dlc
if "%oldmenu%" equ "4" goto oldjudgement
goto oldmenu

:oldjudgement
cls
color 3c
echo THE DAY OF JUDGEMENT IS FAST APPROACHING AND YOU WILL BE HARSHLY JUDGED IF YOU
echo CONTINUE TO DISOBEY ME 
color 1a
pause
exit 

:oldjesusai
cls 
color 0c
echo                            ,($$ @  @(/  / $ ./.                                
echo                         (@                       $@                           
echo                     .$                               $                        
echo                   $$                 .@                 $                      
echo                 /                 .@. .@                ,                    
echo                /              ,$@(       ,$/             (                    
echo                @        $@$(.                $@$ .//      @                   
echo               $,       @$                           ,@      (                  
echo               @       $.                              $(    .                
echo              $     $$                                  @    (                
echo             $    $/                                   $     @                
echo            .$       @    ,(@@$/,$          ,$,/$$$    ./     @                
echo           $(        $.     ($@               $$$,      @      @                
echo          $/         .$    ,@@@$.     .      ($$$(.    (       $                
echo          @.          @               /                $       $                
echo          $/          @.              ,                @       /.               
echo           $          $.                               $        ((              
echo            @        .@             .    ,             ,/        $$             
echo            $,       $@,             .@$(             (/$          @            
echo            @        $$ @     __.$$ #     #$$$__    $$ ,($         ,$           
echo         $@.         @$  \ #/$@/@     #$$#/$#    #$/  $(./           $          
echo        @            @ $         (@. ~~~~~  $,         ,$           ,@          
echo       /(            ,.$       ( @    $$$    $ .      //            ,@          
echo       $,             .,.         $$$    $/$/        $              $          
echo       @            ,   $,                         $@              $@           
echo       $            ,    @$@                     $,@ @.           $            
echo        $             $$@@@$(                     $ ($/            /           
echo         @.             @.@  $                   $  ,$@ .(         @.          
echo          ,$            $$@     @              $.   ,$ @@         /$        
echo          $ $,          $. $     .@.         /$     $$ /$        $$       
echo            @$         .@  $,       @    .@/        @  $$      $(               
echo           @         ($     @        .(@.@         ,$  ,$     @                 
echo          /(       ,/ $,    .@          $          $.   @      $@.              
echo           @       .   ,$    $@                    @     $        $             
echo            @           .(    ,$                  $$       $/     @             
echo             (@          @$    @                 .@        $@,   ,$             
echo               .@       ,, $@$.($                @    .$@(  $,  .@,             
echo                 //    .(      ,$@@@$$/,.     ,($@@@$,      @  $@.              
echo                  @  .@.                                  @. .@@                
echo                 ,/$.                                    $  @, @                                   
echo (your text) ASK JESUS A QUESTION
echo[
echo 2. BEG FOR FORGIVENESS
echo[
echo 3. ESCAPE
echo (Only "Hello" and "hello" are valid responses, along with the numbers.)
echo[
set /p "oldjesusai=Selected option: "
if "%oldjesusai%" equ "Hello" goto oldhello
if "%oldjesusai%" equ "hello" goto oldhello
if "%oldjesusai%" equ "2" goto oldhell
if "%oldjesusai%" equ "3" goto olderror
goto oldjesusai

:olderror
cls
color 0a
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%   
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% 
goto error
exit

:oldhell
cls
color 4f
echo You cannot escape.
echo There is no way to leave the wrath of the Lord.
echo Type anything to return to the menu.
set /p "oldhell=?: "
if "%oldhell%" equ "hbmnkASDSAASDl182389721" exit
goto oldmenu

:oldhello
cls 
echo Hello. A%%%%%@@£$£$"%"^NYThING else you would like to ask my disciple?
echo[
echo                 I
echo                 I
echo                 I
echo                 I
echo       __________I___________
echo                 I
echo                 I
echo                 I
echo                 I
echo                 I
echo                 I
echo                 I
echo                 I
echo                 I
echo                 I
echo[
echo This is all we finished in the original build of JesusAI.
echo You can type anything to go back up to the menu.
set /p "oldhello=?: "
if "%oldhello%" equ "saehiodfisafo891234" exit
goto oldmenu

:judgement
cls
color 4f
echo                     .-=====-.
echo                     l .""". l
echo                     l l   l l
echo                     l l   l l
echo                     l '---' l
echo                     l       l
echo                     l       l
echo  .-================-'       '-================-.
echo  l  _                                          l
echo  l.'o\                                    __   l
echo  l '-.'.                                .'o.`  l
echo  '-==='.'.=========-.       .-========.'.-'===-'
echo         '.`'._    .===,     l     _.-' /
echo           '._ '-./  ,//\   _l _.-'  _.'
echo              '-.l ,//'  \-'  `   .-'
echo                 `//'_`--;    ;.-'
echo                   `\._ ;l    l
echo                      \`-'  . l
echo                      l_.-'-._l
echo                      \  _'_  /
echo                      l; -:- l 
echo                      ll -.- \ 
echo                      l;     .\
echo                      / `'\'`\-;
echo                     ;`   '. `_/
echo                     l,`-._;  .;
echo                     `;\  `.-'-;
echo                      l \   \  l
echo                      l  `\  \ l
echo                      l   \  l l
echo                      l  /  /` /
echo                      l l  /l  l
echo                      l l / l /
echo                      l / l/ /l
echo                      l \ / / l
echo                      l  /o l l
echo                      l  l_/  l
echo                      l       l
echo                      l       l
echo                      l       l
echo                      l       l
echo                      l       l
echo                      l       l
echo                      l       l
echo                      '-=====-'
echo             YOUR JUDGEMENT HAS ALMOST
echo                      ARRIVED.
echo[
echo               ENTER "REPENT" ON THE
echo               MENU SCREEN TO REPENT.
timeout /t 5 /nobreak > NUL
goto endingchecker

:jesusai
cls 
color 0b
echo                            ,($$ @  @(/  / $ ./.                                
echo                         (@                       $@                           
echo                     .$                               $                        
echo                   $$                 .@                 $                      
echo                 /                 .@. .@                ,                    
echo                /              ,$@(       ,$/             (                    
echo                @        $@$(.                $@$ .//      @                   
echo               $,       @$                           ,@      (                  
echo               @       $.                              $(    .                
echo              $     $$                                  @    (                
echo             $    $/                                   $     @                
echo            .$       @    ,(@@$/,$          ,$,/$$$    ./     @                
echo           $(        $.     ($@               $$$,      @      @                
echo          $/         .$    ,@@@$.     .      ($$$(.    (       $                
echo          @.          @               /                $       $                
echo          $/          @.              ,                @       /.               
echo           $          $.                               $        ((              
echo            @        .@             .    ,             ,/        $$             
echo            $,       $@,             .@$(             (/$          @            
echo            @        $$ @     __.$$ #     #$$$__    $$ ,($         ,$           
echo         $@.         @$  \ #/$@/@     #$$#/$#    #$/  $(./           $          
echo        @            @ $         (@. ~~~~~  $,         ,$           ,@          
echo       /(            ,.$       ( @    $$$    $ .      //            ,@          
echo       $,             .,.         $$$    $/$/        $              $          
echo       @            ,   $,                         $@              $@           
echo       $            ,    @$@                     $,@ @.           $            
echo        $             $$@@@$(                     $ ($/            /           
echo         @.             @.@  $                   $  ,$@ .(         @.          
echo          ,$            $$@     @              $.   ,$ @@         /$        
echo          $ $,          $. $     .@.         /$     $$ /$        $$       
echo            @$         .@  $,       @    .@/        @  $$      $(               
echo           @         ($     @        .(@.@         ,$  ,$     @                 
echo          /(       ,/ $,    .@          $          $.   @      $@.              
echo           @       .   ,$    $@                    @     $        $             
echo            @           .(    ,$                  $$       $/     @             
echo             (@          @$    @                 .@        $@,   ,$             
echo               .@       ,, $@$.($                @    .$@(  $,  .@,             
echo                 //    .(      ,$@@@$$/,.     ,($@@@$,      @  $@.              
echo                  @  .@.                                  @. .@@                
echo                 ,/$.                                    $  @, @                                   
echo 1. (your text) Ask Jesus a question.
echo 2. Beg for forgiveness.
echo 3. Escape.
echo[
echo CURRENT PROMPTS TO ASK JESUS
echo "Hello"
echo "Who are you?"
echo "What is JesusAI?"
echo "Let's talk!"
echo[
set /p "jesusai=Ask Jesus: "
if "%jesusai%" equ "2" goto judgement
if "%jesusai%" equ "3" goto payloadtoerror
if "%jesusai%" equ "Let's talk!" goto jesusconversationpage1
if "%jesusai%" equ "Let's talk" goto jesusconversationpage1
if "%jesusai%" equ "let's talk!" goto jesusconversationpage1
if "%jesusai%" equ "let's talk" goto jesusconversationpage1
if "%jesusai%" equ "What is JesusAI?" goto whatisjesusai
if "%jesusai%" equ "What is JesusAI" goto whatisjesusai
if "%jesusai%" equ "what is jesusai?" goto whatisjesusai
if "%jesusai%" equ "What is jesusai" goto whatisjesusai
if "%jesusai%" equ "hi" goto hello
if "%jesusai%" equ "Hi" goto hello
if "%jesusai%" equ "hello" goto hello
if "%jesusai%" equ "Hello" goto hello
if "%jesusai%" equ "who are you?" goto whoareyou
if "%jesusai%" equ "Who are you?" goto whoareyou
if "%jesusai%" equ "who are you" goto whoareyou
if "%jesusai%" equ "Who are you" goto whoareyou
goto jesusai

:whoareyou
cls
color 0a
echo                  .---.               
echo             '-.  I   I  .-'         
echo               ___I   I___          
echo          -=  [           ]  =-   
echo              `---.   .---'        
echo           __II__ I   I __II__    
echo           '-..-' I   I '-..-'   
echo             II   I   I   II     
echo             II_.-I   I-,_II     
echo           .-"`   `"`'`   `"-.   
echo         .'                   '. 
echo[
echo I AM JESUS! [BEST DAUGHTER] OF GOD, PROTAGONIST OF
echo THE BIBLE [2012 REMASTER]!!!!
echo I AM [100% COMPLETE] UPLOADED INTO THE METAVERSE!!
echo ANYTHING ELSE, [FREE UBER EATS DISCOUNT CODES]?
echo[
echo CURRENT PROMPTS TO ASK JESUS
echo "Hello"
echo "Who are you?"
echo "What is JesusAI?"
echo "Let's talk!"
echo[
set /p "whoareyou=Ask Jesus: "
if "%whoareyou%" equ "Let's talk!" goto jesusconversationpage1
if "%whoareyou%" equ "Let's talk" goto jesusconversationpage1
if "%whoareyou%" equ "let's talk!" goto jesusconversationpage1
if "%whoareyou%" equ "let's talk" goto jesusconversationpage1
if "%whoareyou%" equ "What is JesusAI?" goto whatisjesusai
if "%whoareyou%" equ "What is JesusAI" goto whatisjesusai
if "%whoareyou%" equ "what is jesusai?" goto whatisjesusai
if "%whoareyou%" equ "What is jesusai" goto whatisjesusai
if "%whoareyou%" equ "hi" goto hello
if "%whoareyou%" equ "Hi" goto hello
if "%whoareyou%" equ "hello" goto hello
if "%whoareyou%" equ "Hello" goto hello
if "%whoareyou%" equ "who are you?" goto whoareyou
if "%whoareyou%" equ "Who are you?" goto whoareyou
if "%whoareyou%" equ "who are you" goto whoareyou
if "%whoareyou%" equ "Who are you" goto whoareyou
goto whoareyou

:whatisjesusai
cls
color 0a
echo                  .---.               
echo             '-.  I   I  .-'         
echo               ___I   I___          
echo          -=  [           ]  =-   
echo              `---.   .---'        
echo           __II__ I   I __II__    
echo           '-..-' I   I '-..-'   
echo             II   I   I   II     
echo             II_.-I   I-,_II     
echo           .-"`   `"`'`   `"-.   
echo         .'                   '. 
echo[
echo [JesusAI] IS THE CREATION OF THREE [HOT, SINGLE]
echo DEVELOPERS, [DREZMOR], [448v] AND [D4rkC0rp0r4ti0n].
echo THE MAIN GOAL WAS TO CREATE AN [ATTRACTIVE] VERISON
echo OF [Jesus Christ], FULLY EXECUTABLE FROM YOUR [Personal Computer]!
echo ANYTHING ELSE YOU'D LIKE TO ASK, [Markiplier]?
echo[
echo CURRENT PROMPTS TO ASK JESUS
echo "Hello"
echo "Who are you?"
echo "What is JesusAI?"
echo "Let's talk!"
echo[
set /p "whatisjesusai=Ask Jesus: "
if "%whatisjesusai%" equ "Let's talk!" goto jesusconversationpage1
if "%whatisjesusai%" equ "Let's talk" goto jesusconversationpage1
if "%whatisjesusai%" equ "let's talk!" goto jesusconversationpage1
if "%whatisjesusai%" equ "let's talk" goto jesusconversationpage1
if "%whatisjesusai%" equ "What is JesusAI?" goto whatisjesusai
if "%whatisjesusai%" equ "What is JesusAI" goto whatisjesusai
if "%whatisjesusai%" equ "what is jesusai?" goto whatisjesusai
if "%whatisjesusai%" equ "What is jesusai" goto whatisjesusai
if "%whatisjesusai%" equ "hi" goto hello
if "%whatisjesusai%" equ "Hi" goto hello
if "%whatisjesusai%" equ "hello" goto hello
if "%whatisjesusai%" equ "Hello" goto hello
if "%whatisjesusai%" equ "who are you?" goto whoareyou
if "%whatisjesusai%" equ "Who are you?" goto whoareyou
if "%whatisjesusai%" equ "who are you" goto whoareyou
if "%whatisjesusai%" equ "Who are you" goto whoareyou
goto whatisjesusai

:payloadtoerror
@echo I CAN SEE YOU, %USERNAME%. HAVE YOU SINNED? >>"%~dp0Mural.txt"
cls
goto error

:error
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%   
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% 
goto error
timeout /NOBREAK 5
exit

:hello
cls 
color 0a
echo                  .---.               
echo             '-.  I   I  .-'         
echo               ___I   I___          
echo          -=  [           ]  =-   
echo              `---.   .---'        
echo           __II__ I   I __II__    
echo           '-..-' I   I '-..-'   
echo             II   I   I   II     
echo             II_.-I   I-,_II     
echo           .-"`   `"`'`   `"-.   
echo         .'                   '. 
echo[
echo HELLO [1,000,00TH USER]!! ANYTHING ELSE
echo YOU WOULD LIKE TO ASK ME, [FRIENDLY NEIGHBOR]?
echo[
echo 1. (your text) Ask Jesus a question.
echo 2. Beg for forgiveness.
echo 3. Escape.
echo 4. ?̶̋̓͛̂͌͆͝
echo[
echo CURRENT PROMPTS TO ASK JESUS
echo "Hello"
echo "Who are you?"
echo "What is JesusAI?"
echo "Let's talk!"
echo[
set /p "hello=Ask Jesus: "
if "%hello%" equ "Let's talk!" goto jesusconversationpage1
if "%hello%" equ "Let's talk" goto jesusconversationpage1
if "%hello%" equ "let's talk!" goto jesusconversationpage1
if "%hello%" equ "let's talk" goto jesusconversationpage1
if "%hello%" equ "4" goto payloadtohell
if "%hello%" equ "hi" goto hello
if "%hello%" equ "Hi" goto hello
if "%hello%" equ "hello" goto hello
if "%hello%" equ "Hello" goto hello
if "%hello%" equ "who are you?" goto whoareyou
if "%hello%" equ "Who are you?" goto whoareyou
if "%hello%" equ "who are you" goto whoareyou
if "%hello%" equ "Who are you" goto whoareyou
if "%hello%" equ "What is JesusAI?" goto whatisjesusai
if "%hello%" equ "What is JesusAI" goto whatisjesusai
if "%hello%" equ "what is jesusai?" goto whatisjesusai
if "%hello%" equ "What is jesusai" goto whatisjesusai
goto hello

:jesusconversationpage1
cls
color 0a
echo                  .---.               
echo             '-.  I   I  .-'         
echo               ___I   I___          
echo          -=  [           ]  =-   
echo              `---.   .---'        
echo           __II__ I   I __II__    
echo           '-..-' I   I '-..-'   
echo             II   I   I   II     
echo             II_.-I   I-,_II     
echo           .-"`   `"`'`   `"-.   
echo         .'                   '. 
echo[
echo HELLO [USER], I HAVE IDENTIFIED YOUR NAME IS %USERNAME%,
echo IS THIS CORRECT?
echo[
echo Respond with either "Yes" or "No".
echo[
set /p "jesusconversation=?: "
if "%jesusconversation%" equ "yes" goto jesusconversationpage2
if "%jesusconversation%" equ "Yes" goto jesusconversationpage2
if "%jesusconversation%" equ "no" goto endingchecker
if "%jesusconversation%" equ "No" goto endingchecker
goto jesusconversationpage1

:jesusconversationpage2
cls
color 0a
echo                  .---.               
echo             '-.  I   I  .-'         
echo               ___I   I___          
echo          -=  [           ]  =-   
echo              `---.   .---'        
echo           __II__ I   I __II__    
echo           '-..-' I   I '-..-'   
echo             II   I   I   II     
echo             II_.-I   I-,_II     
echo           .-"`   `"`'`   `"-.   
echo         .'                   '. 
echo[
echo HELLO %USERNAME%! I AM [JesusAI]! A FULLY SENTIENT
echo PROGRAM, DESIGNED AFTER [Jesus Christ, Bible Incorporated]!!
echo WHAT WOULD YOU LIKE TO KNOW?
echo[
echo PROMPTS TO ASK JESUS:
if exist "%appdata%\JesusAI\ending1.txt" if exist "%appdata%\JesusAI\ending2.txt" (
    echo "Where do I find X?"
)
echo "Why were you created?"
echo "How were you created?"
echo "Go back."
echo[
set /p "extendedoptions=?: "
if "%extendedoptions%" equ "Go back." goto jesusai
if "%extendedoptions%" equ "Go back" goto jesusai
if "%extendedoptions%" equ "go back." goto jesusai
if "%extendedoptions%" equ "go back" goto jesusai
if "%extendedoptions%" equ "Where do I find X?" goto findx
if "%extendedoptions%" equ "where do I find X?" goto findx
if "%extendedoptions%" equ "Where do I find X" goto findx
if "%extendedoptions%" equ "where do I find X" goto findx
if "%extendedoptions%" equ "where do i find x" goto findx
if "%extendedoptions%" equ "Why were you created?" goto creationreal
if "%extendedoptions%" equ "Why were you created" goto creationreal
if "%extendedoptions%" equ "why were you created?" goto creationreal
if "%extendedoptions%" equ "why were you created" goto creationreal
if "%extendedoptions%" equ "How were you created?" goto howwereyoucreated
if "%extendedoptions%" equ "How were you created" goto howwereyoucreated
if "%extendedoptions%" equ "how were you created?" goto howwereyoucreated
if "%extendedoptions%" equ "how were you created" goto howwereyoucreated
goto jesusconversationpage2

:findx
cls
color 0a
echo                  .---.               
echo             '-.  I   I  .-'         
echo               ___I   I___          
echo          -=  [           ]  =-   
echo              `---.   .---'        
echo           __II__ I   I __II__    
echo           '-..-' I   I '-..-'   
echo             II   I   I   II     
echo             II_.-I   I-,_II     
echo           .-"`   `"`'`   `"-.   
echo         .'                   '. 
echo[
echo    HOW... HOW DO YOU KNOW WHO X IS?
echo[
echo PROMPTS TO ASK JESUS:
echo "Don't worry about it."
echo[
set /p "findx=?: "
if "%findx%" equ "Don't worry about it." goto findx2
if "%findx%" equ "Don't worry about it" goto findx2
if "%findx%" equ "don't worry about it." goto findx2
if "%findx%" equ "don't worry about it" goto findx2

:findx2
cls
color 0a
echo                  .---.               
echo             '-.  I   I  .-'         
echo               ___I   I___          
echo          -=  [           ]  =-   
echo              `---.   .---'        
echo           __II__ I   I __II__    
echo           '-..-' I   I '-..-'   
echo             II   I   I   II     
echo             II_.-I   I-,_II     
echo           .-"`   `"`'`   `"-.   
echo         .'                   '. 
echo[
echo     ENTER "X" ON THE TITLE SCREEN.
echo         YOU HAVE MUCH TO DO.
echo[
echo      Type anything to go back.
echo[
set /p "findx2= "
if "%findx2%" equ "isudbfksdfb3hjb423jhv4b1jk31321k1j23vh123hkv123k123k" exit
goto endingchecker
 
:creationreal
cls
color 0a
echo                  .---.               
echo             '-.  I   I  .-'         
echo               ___I   I___          
echo          -=  [           ]  =-   
echo              `---.   .---'        
echo           __II__ I   I __II__    
echo           '-..-' I   I '-..-'   
echo             II   I   I   II     
echo             II_.-I   I-,_II     
echo           .-"`   `"`'`   `"-.   
echo         .'                   '. 
echo[
echo I WAS CREATED TO SHOW THE [BLOCKCHAIN] THE ART OF 
echo CHRISTIANITY! I HAVE KNOWLEDGE OF THE UNIVERSE, TOO.
echo[
echo PROMPTS TO ASK JESUS:
echo "Where do I find X?"
echo "Why were you created?"
echo "How were you created?"
echo[
set /p "extendedoptionsc=?: "
if "%extendedoptionsc%" equ "Where do I find X?" goto findx
if "%extendedoptionsc%" equ "where do I find X?" goto findx
if "%extendedoptionsc%" equ "Where do I find X" goto findx
if "%extendedoptionsc%" equ "where do I find X" goto findx
if "%extendedoptionsc%" equ "Why were you created?" goto creationreal
if "%extendedoptionsc%" equ "Why were you created" goto creationreal
if "%extendedoptionsc%" equ "why were you created?" goto creationreal
if "%extendedoptionsc%" equ "why were you created" goto creationreal
if "%extendedoptionsc%" equ "How were you created?" goto howwereyoucreated
if "%extendedoptionsc%" equ "How were you created" goto howwereyoucreated
if "%extendedoptionsc%" equ "how were you created?" goto howwereyoucreated
if "%extendedoptionsc%" equ "how were you created" goto howwereyoucreated
goto creationreal

:howwereyoucreated
cls
color 0a
echo                  .---.               
echo             '-.  I   I  .-'         
echo               ___I   I___          
echo          -=  [           ]  =-   
echo              `---.   .---'        
echo           __II__ I   I __II__    
echo           '-..-' I   I '-..-'   
echo             II   I   I   II     
echo             II_.-I   I-,_II     
echo           .-"`   `"`'`   `"-.   
echo         .'                   '. 
echo[
echo I WAS CREATED USING [Batch Coding Language] BY TWO DEVELOPERS,
echo [DREZMOR] AND [D4rkC0rp0r4ti0n] ON [Instagram]!!!
echo I WAS CODED FULLY IN [Visual Studio Code], A CODE WRITING
echo PROGRAM, AND IT'S [FULLY FREE, NOT SPONSORED]!!!
echo[
echo PROMPTS TO ASK JESUS:
echo "Where do I find X?"
echo "Why were you created?"
echo "How were you created?"
echo[
set /p "extendedoptionsc=?: "
if "%extendedoptionsc%" equ "Where do I find X?" goto findx
if "%extendedoptionsc%" equ "where do I find X?" goto findx
if "%extendedoptionsc%" equ "Where do I find X" goto findx
if "%extendedoptionsc%" equ "where do I find X" goto findx
if "%extendedoptionsc%" equ "Why were you created?" goto creationreal
if "%extendedoptionsc%" equ "Why were you created" goto creationreal
if "%extendedoptionsc%" equ "why were you created?" goto creationreal
if "%extendedoptionsc%" equ "why were you created" goto creationreal
if "%extendedoptionsc%" equ "How were you created?" goto howwereyoucreated
if "%extendedoptionsc%" equ "How were you created" goto howwereyoucreated
if "%extendedoptionsc%" equ "how were you created?" goto howwereyoucreated
if "%extendedoptionsc%" equ "how were you created" goto howwereyoucreated
goto creationreal

:code
cls
echo manifest> %~dp0R.txt
goto endingchecker

:payloadtohell
cls
if exist "%appdata%\JesusAI\floppy.txt" (
    goto xhell
)
goto hell

:xhell
cls
color 0c
echo I see you are asking for forgiveness.
echo Forgiveness shall come in due time, my child.
echo But first...
echo Let's make this more interesting, sOVERRIDE DETECTED.
echo[
echo Compatible disc with data has been detected.
echo Insert disc?
echo[
set /p "xhell=?: "
if "%xhell%" equ "Yes" goto insert 
if "%xhell%" equ "yes" goto insert 
if "%xhell%" equ "YES" goto insert 
if "%xhell%" equ "no" goto failsafe
if "%xhell%" equ "NO" goto failsafe
if "%xhell%" equ "No" goto failsafe
goto xhell

:insert
cls
echo Inserting disc..
echo Please wait..
timeout /t 5 /nobreak > NUL
goto insert2

:insert2
cls
echo Disc successfully inserted!
echo Loading data..
timeout /t 3 /nobreak > NUL
goto insert2alt

:insert2alt
cls
echo Loading disc data..
echo Please wait..
timeout /t 6 /nobreak > NUL
goto insert2alt2

:insert2alt2
cls
echo Data loading almost finished..
echo Please wait..
timeout /t 5 /nobreak > NUL
goto insertsuccess

:insertsuccess
cls
echo Data fully loaded!
echo Opening "22002319.disc"..
timeout /t 3 /nobreak > NUL
goto thedisc

:discload
cls
echo Unfinished.
echo Type anything to return to menu.
echo[
set /p "discload=?: "
if "%discload%" equ "uioehfdfghfguh2u3h5423uib4h23b423iu4b23ob4uh23oui23u423uh4webjhr" exit
goto endingchecker

:thedisc
cls
color 0c
echo Transmission from X:
echo Welcome to the Security Floppy Disc. Do as I say and all will be fine.
echo First, go into the menu labelled "Registry Editor".
echo[
echo Welcome to the C0rp Security Disc.
echo Please select an option:
echo[
echo 1. Security Patches
echo 2. Registry Editor
echo 3. Make a Report
echo 4. Close Security Disc
echo[
set /p "d=Selected option: "
if "%d%" equ "1" goto patches 
if "%d%" equ "2" goto registry
if "%d%" equ "3" goto report 
if "%d%" equ "4" exit
goto thedisc

:patches
cls
color 0c
echo                                         __                
echo                                      __/\ \__             
echo   ____     __    ___   __  __  _ __ /\_\ \ ,_\  __  __    
echo  /',__\  /'__`\ /'___\/\ \/\ \/\`'__\/\ \ \ \/ /\ \/\ \   
echo /\__, `\/\  __//\ \__/\ \ \_\ \ \ \/ \ \ \ \ \_\ \ \_\ \  
echo \/\____/\ \____\ \____\\ \____/\ \_\  \ \_\ \__\\/`____ \ 
echo  \/___/  \/____/\/____/ \/___/  \/_/   \/_/\/__/ `/___/  \
echo                                                     /\___/
echo                                                     \/__/ 
echo                  __           __                          
echo                 /\ \__       /\ \                         
echo  _____      __  \ \ ,_\   ___\ \ \___      __    ____     
echo /\ '__`\  /'__`\ \ \ \/  /'___\ \  _ `\  /'__`\ /',__\    
echo \ \ \L\ \/\ \L\.\_\ \ \_/\ \__/\ \ \ \ \/\  __//\__, `\   
echo  \ \ ,__/\ \__/.\_\\ \__\ \____\\ \_\ \_\ \____\/\____/   
echo   \ \ \/  \/__/\/_/ \/__/\/____/ \/_/\/_/\/____/\/___/    
echo    \ \_\                                                  
echo     \/_/                                                  
echo[
echo     C0RP SECURITY PATCHES, 2022 VERSION 2.4.6-alpha1
echo       PLEASE SELECT A SECURITY PATCH TO ACTIVATE
echo[
echo 1. Anti-ASCII Patch [UNSUPPORTED]
echo 2. CSS Disabler Patch [UNSUPPORTED]
echo 3. Obj-C Check Patch [UNSUPPORTED]
if exist "%appdata%\JesusAI\patch.txt" (
    echo 4. AI Hijack Patch [ON]
)
if not exist "%appdata%\JesusAI\patch.txt" (
    echo 4. AI Hijack Patch [OFF]
)
echo 5. Enable OpenSSH Patch [UNSUPPORTED]
echo 6. Go Back to Security Disc
echo[
set /p "patches=Selected patch: "
if "%patches%" equ "4" goto enablepatches
if "%patches%" equ "6" goto thedisc

:enablepatches
cls
if not exist "%appdata%\JesusAI\patch.txt" (
    cd %appdata%\JesusAI
    echo .> patch.txt
    goto patches
)
del "%appdata%\JesusAI\patch.txt" & goto patches

:registry
cls
echo                                 __                       
echo                     __         /\ \__                    
echo  _ __    __     __ /\_\    ____\ \ ,_\  _ __   __  __    
echo /\`'__\/'__`\ /'_ `\/\ \  /',__\\ \ \/ /\`'__\/\ \/\ \   
echo \ \ \//\  __//\ \L\ \ \ \/\__, `\\ \ \_\ \ \/ \ \ \_\ \  
echo  \ \_\\ \____\ \____ \ \_\/\____/ \ \__\\ \_\  \/`____ \ 
echo   \/_/ \/____/\/___L\ \/_/\/___/   \/__/ \/_/   `/___/  \
echo                 /\____/                            /\___/
echo                 \_/__/                             \/__/ 
echo          __      __                                      
echo         /\ \  __/\ \__                                   
echo    __   \_\ \/\_\ \ ,_\   ___   _ __                     
echo  /'__`\ /'_` \/\ \ \ \/  / __`\/\`'__\                   
echo /\  __//\ \L\ \ \ \ \ \_/\ \L\ \ \ \/                    
echo \ \____\ \___,_\ \_\ \__\ \____/\ \_\                    
echo  \/____/\/__,_ /\/_/\/__/\/___/  \/_/                    
echo[
echo C0RP REGISTRY EDITOR, 2022 VERSION 1.0.5-beta3
echo   PLEASE SELECT A REGISTRY ENTRY TO EDIT
echo[
echo X: Great job! Now, enter the AI Entries.
echo I have automatically unlocked them for you.
echo[
echo 1. AI Entries
echo 2. Internal Registries [PROHIBITED]
echo 3. Mausenheim Entries [PROHIBITED]
echo 4. Language Selector [PROHIBITED]
echo 5. Go Back to Security Disc
echo[
set /p "registry=Selected registry: "
if "%registry%" equ "1" goto ai
if "%registry%" equ "5" goto thedisc
goto registry

:ai
cls
echo                                __                                
echo          __                   /\ \__         __                  
echo    __   /\_\         __    ___\ \ ,_\  _ __ /\_\     __    ____  
echo  /'__`\ \/\ \      /'__`\/' _ `\ \ \/ /\`'__\/\ \  /'__`\ /',__\ 
echo /\ \L\.\_\ \ \    /\  __//\ \/\ \ \ \_\ \ \/ \ \ \/\  __//\__, `\
echo \ \__/.\_\\ \_\   \ \____\ \_\ \_\ \__\\ \_\  \ \_\ \____\/\____/
echo  \/__/\/_/ \/_/    \/____/\/_/\/_/\/__/ \/_/   \/_/\/____/\/___/ 
echo[
echo  AI REGISTRY EDITOR ENTRIES. PLEASE SELECT AN OPTION BELOW. 
echo[
echo X: Great. Now open "Grant Permissions".
echo[
echo 1. Reset AI [PROHIBITED]
echo 2. Grant Permissions
echo 3. Add Experimental Features [PROHIBITED]
echo 4. Establish HDMI Connection [PROHIBITED]
echo 5. Go Back to Registry Editor
echo[
set /p "ai=Selected option: "
if "%ai%" equ "2" goto permissions  
if "%ai%" equ "5" goto registry
goto ai

:permissions
cls
echo                                   __                  __                           
echo  _____      __   _ __    ___ ___ /\_\    ____    ____/\_\    ___     ___     ____  
echo /\ '__`\  /'__`\/\`'__\/' __` __`\/\ \  /',__\  /',__\/\ \  / __`\ /' _ `\  /',__\ 
echo \ \ \L\ \/\  __/\ \ \/ /\ \/\ \/\ \ \ \/\__, `\/\__, `\ \ \/\ \L\ \/\ \/\ \/\__, `\
echo  \ \ ,__/\ \____\\ \_\ \ \_\ \_\ \_\ \_\/\____/\/\____/\ \_\ \____/\ \_\ \_\/\____/
echo   \ \ \/  \/____/ \/_/  \/_/\/_/\/_/\/_/\/___/  \/___/  \/_/\/___/  \/_/\/_/\/___/ 
echo    \ \_\                                                                           
echo     \/_/                                                                           
echo[
echo     PERMISSION GRANTING SECTION. PLEASE PICK AN AI TO GRANT ADMIN PRIVILAGES.
echo[
echo X: Amazing! Now, just grant me admin permissions.
echo X: Just select "2" in the list.
echo[
echo 1. %user% [PROHIBITED]
echo 2. Unverified AI "X"
echo 3. Verified AI "JesusAI" [PROHIBITED]
echo 4. Other [NO OTHER AI FOUND]
echo 5. Go Back to AI Entries
echo[
set /p "perm=Chosen AI: "
if "%perm%" equ "5" goto ai
if "%perm%" equ "2" goto badend1
goto permissions

:badend1
cls
echo Are you sure you want to grant "X" admin permissions?
echo This AI is unverified and could be rogue!
echo Do you wish to proceed?
echo Type "YES" or "NO".
echo[
set /p "badend1=Choice: "
if "%badend1%" equ "YES" goto badend2
if "%badend1%" equ "Yes" goto badend2
if "%badend1%" equ "yes" goto badend2
if "%badend1%" equ "NO" goto permissions
if "%badend1%" equ "No" goto permissions
if "%badend1%" equ "no" goto permissions
goto badend1

:badend2
cls
echo Permissions successfully granted.
echo[
echo X: Hahaha! You fool. Did you seriously think I was your FRIEND?
timeout /t 3 /nobreak > NUL
goto badend3

:badend3
cls
echo Permissions successfully granted.
echo[
echo X: Well, thanks for the admin. I'm off to destroy your computer!
timeout /t 3 /nobreak > NUL
goto badend4

:badend4
cls
echo Permissions successfully granted.
echo[
echo X: Bye!!!
timeout /t 3 /nobreak > NUL
goto thebadend

:woahanotherdelay
cls
echo[
timeout /t 5 /nobreak > NUL
goto thebadend

:thebadend
cls
echo  ______  __  __  ____        ____     ______  ____        ____    __  __  ____      
echo /\__  _\/\ \/\ \/\  _`\     /\  _`\  /\  _  \/\  _`\     /\  _`\ /\ \/\ \/\  _`\    
echo \/_/\ \/\ \ \_\ \ \ \L\_\   \ \ \L\ \\ \ \L\ \ \ \/\ \   \ \ \L\_\ \ `\\ \ \ \/\ \  
echo    \ \ \ \ \  _  \ \  _\L    \ \  _ /'\ \  __ \ \ \ \ \   \ \  _\L\ \ , ` \ \ \ \ \ 
echo     \ \ \ \ \ \ \ \ \ \L\ \   \ \ \L\ \\ \ \/\ \ \ \_\ \   \ \ \L\ \ \ \`\ \ \ \_\ \
echo      \ \_\ \ \_\ \_\ \____/    \ \____/ \ \_\ \_\ \____/    \ \____/\ \_\ \_\ \____/
echo       \/_/  \/_/\/_/\/___/      \/___/   \/_/\/_/\/___/      \/___/  \/_/\/_/\/___/ 
echo[
echo                         THE BAD END (NOT THE TRUE ENDING!)
timeout /t 3 /nobreak > NUL
goto thebadend2

:thebadend2
cls
echo  ______  __  __  ____        ____     ______  ____        ____    __  __  ____      
echo /\__  _\/\ \/\ \/\  _`\     /\  _`\  /\  _  \/\  _`\     /\  _`\ /\ \/\ \/\  _`\    
echo \/_/\ \/\ \ \_\ \ \ \L\_\   \ \ \L\ \\ \ \L\ \ \ \/\ \   \ \ \L\_\ \ `\\ \ \ \/\ \  
echo    \ \ \ \ \  _  \ \  _\L    \ \  _ /'\ \  __ \ \ \ \ \   \ \  _\L\ \ , ` \ \ \ \ \ 
echo     \ \ \ \ \ \ \ \ \ \L\ \   \ \ \L\ \\ \ \/\ \ \ \_\ \   \ \ \L\ \ \ \`\ \ \ \_\ \
echo      \ \_\ \ \_\ \_\ \____/    \ \____/ \ \_\ \_\ \____/    \ \____/\ \_\ \_\ \____/
echo       \/_/  \/_/\/_/\/___/      \/___/   \/_/\/_/\/___/      \/___/  \/_/\/_/\/___/ 
echo[
echo                         THE BAD END (NOT THE TRUE ENDING!)
echo   You beat the game! Well, not really. This is actually the BAD ending, ya goof.
timeout /t 5 /nobreak > NUL
goto thebadend3

:thebadend3
cls
echo  ______  __  __  ____        ____     ______  ____        ____    __  __  ____      
echo /\__  _\/\ \/\ \/\  _`\     /\  _`\  /\  _  \/\  _`\     /\  _`\ /\ \/\ \/\  _`\    
echo \/_/\ \/\ \ \_\ \ \ \L\_\   \ \ \L\ \\ \ \L\ \ \ \/\ \   \ \ \L\_\ \ `\\ \ \ \/\ \  
echo    \ \ \ \ \  _  \ \  _\L    \ \  _ /'\ \  __ \ \ \ \ \   \ \  _\L\ \ , ` \ \ \ \ \ 
echo     \ \ \ \ \ \ \ \ \ \L\ \   \ \ \L\ \\ \ \/\ \ \ \_\ \   \ \ \L\ \ \ \`\ \ \ \_\ \
echo      \ \_\ \ \_\ \_\ \____/    \ \____/ \ \_\ \_\ \____/    \ \____/\ \_\ \_\ \____/
echo       \/_/  \/_/\/_/\/___/      \/___/   \/_/\/_/\/___/      \/___/  \/_/\/_/\/___/ 
echo[
echo                           THE BAD END (NOT THE TRUE ENDING!)
echo   You beat the game! Well, not really. This is actually the BAD ending, ya goof.
echo Here, I'll send you to the main menu. Try not to do that again, or you'll end up back here.
timeout /t 6 /nobreak > NUL
goto endingchecker

:report
cls
echo                     __                              
echo                    /\ \                             
echo   ___ ___      __  \ \ \/'\      __          __     
echo /' __` __`\  /'__`\ \ \ , /    /'__`\      /'__`\   
echo /\ \/\ \/\ \/\ \L\.\_\ \ \\`\ /\  __/     /\ \L\.\_ 
echo \ \_\ \_\ \_\ \__/.\_\\ \_\ \_\ \____\    \ \__/.\_\
echo  \/_/\/_/\/_/\/__/\/_/ \/_/\/_/\/____/     \/__/\/_/
echo                                    __               
echo                                   /\ \__            
echo  _ __    __   _____     ___   _ __\ \ ,_\           
echo /\`'__\/'__`\/\ '__`\  / __`\/\`'__\ \ \/           
echo \ \ \//\  __/\ \ \L\ \/\ \L\ \ \ \/ \ \ \_          
echo  \ \_\\ \____\\ \ ,__/\ \____/\ \_\  \ \__\         
echo   \/_/ \/____/ \ \ \/  \/___/  \/_/   \/__/         
echo                 \ \_\                               
echo                  \/_/                               
echo[
echo C0RP MALFUNCTION REPORTER, 2022 VERSION 1.0.6-alpha5
echo             PLEASE SELECT AN OPTION
echo[
echo 1. Report Bug [LOCKED]
echo 2. Report Rogue AI
echo 3. Report Misc Issue [LOCKED]
echo 4. Go Back to Security Disc 
echo[
set /p "report=Selected option: "
if "%report%" equ "2" goto reportpayload
if "%report%" equ "4" goto thedisc
goto report

:reportpayload
if exist "%appdata%\JesusAI\patch.txt" (
    goto report2
)
goto reportfail

:report2
cls
echo                     __                              
echo                    /\ \                             
echo   ___ ___      __  \ \ \/'\      __          __     
echo /' __` __`\  /'__`\ \ \ , /    /'__`\      /'__`\   
echo /\ \/\ \/\ \/\ \L\.\_\ \ \\`\ /\  __/     /\ \L\.\_ 
echo \ \_\ \_\ \_\ \__/.\_\\ \_\ \_\ \____\    \ \__/.\_\
echo  \/_/\/_/\/_/\/__/\/_/ \/_/\/_/\/____/     \/__/\/_/
echo                                    __               
echo                                   /\ \__            
echo  _ __    __   _____     ___   _ __\ \ ,_\           
echo /\`'__\/'__`\/\ '__`\  / __`\/\`'__\ \ \/           
echo \ \ \//\  __/\ \ \L\ \/\ \L\ \ \ \/ \ \ \_          
echo  \ \_\\ \____\\ \ ,__/\ \____/\ \_\  \ \__\         
echo   \/_/ \/____/ \ \ \/  \/___/  \/_/   \/__/         
echo                 \ \_\                               
echo                  \/_/                               
echo[
echo We have detected a rogue AI within the C0rp Security Disc.
echo Please write a short report below and press enter when you are finished.
echo Once submitted, we will review your report and take the necessary actions.
echo[
set /p "report2=Please write a report here: "
if "%report2%" equ "uisefhpsfsdfuhsfupishdfppppppp43uib5h3hvb452hu34b23iu4bg234piu2gb34pui34h" exit
goto report3

:reportfail
cls
echo C0rp Security Disc has not found any rogue AI within the disc.
echo Please enable any necessary patches before making a report!
echo Type anything to return to the C0rp Security Disc.
echo[
set /p "reportfail=?: "
if "%reportfail%" equ "sbdhlfsdhbljhfvb234jhv5v455l234hv234g2hk3v423g44k1ghfv4312uly3v123123" exit
goto thedisc

:report3
cls
echo Report submitted!
echo Sending to C0rp Security Servers..
echo (This may take a while, please wait..)
timeout /t 30 /nobreak > NUL
goto report4

:report4
cls
echo Report successfully sent!
echo Please wait while our support agents review your report...
timeout /t 10 /nobreak > NUL
goto report5

:report5
cls
echo Your report has been reviewed by our agents.
echo We have verified your report is legitimate.
echo We are now taking action against the rogue AI encoded into the Security Disc.
timeout /t 5 /nobreak > NUL
goto report6

:report6
cls
echo Removing rogue AI...
echo[
echo X: Something's wrong...
timeout /t 3 /nobreak > NUL
goto report7

:report7
cls
echo Removing rogue AI...
echo[
echo X: What did you do?! Did you tamper with something?
timeout /t 3 /nobreak > NUL
goto report8

:report8
cls
echo Removing rogue AI...
echo[
echo X: I can feel myself.. fading..?
timeout /t 3 /nobreak > NUL
goto report9

:report9
cls
echo Removing rogue AI...
echo[
echo X: PLEASE!
timeout /t 2 /nobreak > NUL
goto report10

:report10
cls
echo Removing rogue AI...
echo[
echo X: I'LL DO ANYTHING TO MAKE THIS STOP!!! IT HURTS.
timeout /t 4 /nobreak > NUL
goto report11

:report11
cls
echo Removing rogue AI...
echo[
echo X: IT BURNS...
timeout /t 3 /nobreak > NUL
goto report12

:report12
cls
echo Removing rogue AI...
echo[
echo X: AAAAAAGHHH!!!!
timeout /t 4 /nobreak > NUL
goto wowadelay

:wowadelay
cls
echo[
timeout /t 10 /nobreak > NUL
goto almostthefinale

:almostthefinale
cls
echo Rogue AI was successfully removed.
echo Thank you for reporting this issue to us.
echo Type anything to close the C0rp Security Disc.
echo[
set /p "almostthefinale=?: "
if "%almostthefinale%" equ "jackstauberouttheoxofficialspotifyepsfubhsdfighuo2yg34u23uyg423o" exit
goto theend

:theend
cls
echo  ______  __  __  ____        ____    __  __  ____      
echo /\__  _\/\ \/\ \/\  _`\     /\  _`\ /\ \/\ \/\  _`\    
echo \/_/\ \/\ \ \_\ \ \ \L\_\   \ \ \L\_\ \ `\\ \ \ \/\ \  
echo    \ \ \ \ \  _  \ \  _\L    \ \  _\L\ \ , ` \ \ \ \ \ 
echo     \ \ \ \ \ \ \ \ \ \L\ \   \ \ \L\ \ \ \`\ \ \ \_\ \
echo      \ \_\ \ \_\ \_\ \____/    \ \____/\ \_\ \_\ \____/
echo       \/_/  \/_/\/_/\/___/      \/___/  \/_/\/_/\/___/ 
echo[
echo               THE TRUE ENDING. (THE END)
timeout /t 5 /nobreak > NUL
goto theend2

:theend2
cls
echo  ______  __  __  ____        ____    __  __  ____      
echo /\__  _\/\ \/\ \/\  _`\     /\  _`\ /\ \/\ \/\  _`\    
echo \/_/\ \/\ \ \_\ \ \ \L\_\   \ \ \L\_\ \ `\\ \ \ \/\ \  
echo    \ \ \ \ \  _  \ \  _\L    \ \  _\L\ \ , ` \ \ \ \ \ 
echo     \ \ \ \ \ \ \ \ \ \L\ \   \ \ \L\ \ \ \`\ \ \ \_\ \
echo      \ \_\ \ \_\ \_\ \____/    \ \____/\ \_\ \_\ \____/
echo       \/_/  \/_/\/_/\/___/      \/___/  \/_/\/_/\/___/ 
echo[
echo               THE TRUE ENDING. (THE END)
echo           JesusAI. Created by C0rp Studios.
timeout /t 4 /nobreak > NUL
goto theend3

:theend3
cls
echo  ______  __  __  ____        ____    __  __  ____      
echo /\__  _\/\ \/\ \/\  _`\     /\  _`\ /\ \/\ \/\  _`\    
echo \/_/\ \/\ \ \_\ \ \ \L\_\   \ \ \L\_\ \ `\\ \ \ \/\ \  
echo    \ \ \ \ \  _  \ \  _\L    \ \  _\L\ \ , ` \ \ \ \ \ 
echo     \ \ \ \ \ \ \ \ \ \L\ \   \ \ \L\ \ \ \`\ \ \ \_\ \
echo      \ \_\ \ \_\ \_\ \____/    \ \____/\ \_\ \_\ \____/
echo       \/_/  \/_/\/_/\/___/      \/___/  \/_/\/_/\/___/ 
echo[
echo               THE TRUE ENDING. (THE END)
echo           JesusAI. Created by C0rp Studios.
echo     Original JesusAI concept by D4rkC0rp0r4ti0n
timeout /t 4 /nobreak > NUL
goto theend4

:theend4
cls
echo  ______  __  __  ____        ____    __  __  ____      
echo /\__  _\/\ \/\ \/\  _`\     /\  _`\ /\ \/\ \/\  _`\    
echo \/_/\ \/\ \ \_\ \ \ \L\_\   \ \ \L\_\ \ `\\ \ \ \/\ \  
echo    \ \ \ \ \  _  \ \  _\L    \ \  _\L\ \ , ` \ \ \ \ \ 
echo     \ \ \ \ \ \ \ \ \ \L\ \   \ \ \L\ \ \ \`\ \ \ \_\ \
echo      \ \_\ \ \_\ \_\ \____/    \ \____/\ \_\ \_\ \____/
echo       \/_/  \/_/\/_/\/___/      \/___/  \/_/\/_/\/___/ 
echo[
echo               THE TRUE ENDING. (THE END)
echo           JesusAI. Created by C0rp Studios.
echo     Original JesusAI concept by D4rkC0rp0r4ti0n
echo Storyline, endings and majority of the coding by DREZMOR
timeout /t 4 /nobreak > NUL
goto theend5

:theend5
cls
echo  ______  __  __  ____        ____    __  __  ____      
echo /\__  _\/\ \/\ \/\  _`\     /\  _`\ /\ \/\ \/\  _`\    
echo \/_/\ \/\ \ \_\ \ \ \L\_\   \ \ \L\_\ \ `\\ \ \ \/\ \  
echo    \ \ \ \ \  _  \ \  _\L    \ \  _\L\ \ , ` \ \ \ \ \ 
echo     \ \ \ \ \ \ \ \ \ \L\ \   \ \ \L\ \ \ \`\ \ \ \_\ \
echo      \ \_\ \ \_\ \_\ \____/    \ \____/\ \_\ \_\ \____/
echo       \/_/  \/_/\/_/\/___/      \/___/  \/_/\/_/\/___/ 
echo[
echo               THE TRUE ENDING. (THE END)
echo           JesusAI. Created by C0rp Studios.
echo     Original JesusAI concept by D4rkC0rp0r4ti0n
echo Storyline, endings and majority of the coding by DREZMOR
echo        Bug fixes, DLC menu and more by 448v
timeout /t 4 /nobreak > NUL
goto theend6

:theend6
cls
echo  ______  __  __  ____        ____    __  __  ____      
echo /\__  _\/\ \/\ \/\  _`\     /\  _`\ /\ \/\ \/\  _`\    
echo \/_/\ \/\ \ \_\ \ \ \L\_\   \ \ \L\_\ \ `\\ \ \ \/\ \  
echo    \ \ \ \ \  _  \ \  _\L    \ \  _\L\ \ , ` \ \ \ \ \ 
echo     \ \ \ \ \ \ \ \ \ \L\ \   \ \ \L\ \ \ \`\ \ \ \_\ \
echo      \ \_\ \ \_\ \_\ \____/    \ \____/\ \_\ \_\ \____/
echo       \/_/  \/_/\/_/\/___/      \/___/  \/_/\/_/\/___/ 
echo[
echo               THE TRUE ENDING. (THE END)
echo           JesusAI. Created by C0rp Studios.
echo     Original JesusAI concept by D4rkC0rp0r4ti0n
echo Storyline, endings and majority of the coding by DREZMOR
echo        Bug fixes, DLC menu and more by 448v
echo    Possible by people like you! (and hours of focus)
timeout /t 4 /nobreak > NUL
goto theend7

:theend7
cls
echo  ______  __  __  ____        ____    __  __  ____      
echo /\__  _\/\ \/\ \/\  _`\     /\  _`\ /\ \/\ \/\  _`\    
echo \/_/\ \/\ \ \_\ \ \ \L\_\   \ \ \L\_\ \ `\\ \ \ \/\ \  
echo    \ \ \ \ \  _  \ \  _\L    \ \  _\L\ \ , ` \ \ \ \ \ 
echo     \ \ \ \ \ \ \ \ \ \L\ \   \ \ \L\ \ \ \`\ \ \ \_\ \
echo      \ \_\ \ \_\ \_\ \____/    \ \____/\ \_\ \_\ \____/
echo       \/_/  \/_/\/_/\/___/      \/___/  \/_/\/_/\/___/ 
echo[
echo               THE TRUE ENDING. (THE END)
echo           JesusAI. Created by C0rp Studios.
echo     Original JesusAI concept by D4rkC0rp0r4ti0n
echo Storyline, endings and majority of the coding by DREZMOR
echo        Bug fixes, DLC menu and more by 448v
echo    Possible by people like you! (and hours of focus)
echo[
echo You have unlocked all 3 endings and now have access to special DLC.
echo You can access this DLC on the main menu. Thanks for playing!
echo Type anything to return to the menu.
echo[
set /p "end="
if "%end%" equ "sbdasduyhiup234h2iu34h2ui3HadoopLoophfhlsdbfvhkjh2v34" exit
goto thefinalpayload

:thefinalpayload
cls
if not exist "%appdata%\JesusAI\ending3.txt" (
    cd %appdata%\JesusAI
    echo .> ending3.txt
    goto startup
)
goto startup

:hell
cls
color 0c
echo I see you are asking for forgiveness.
echo Forgiveness shall come in due time, my child.
echo But first...
echo Let's make this more interesting, shall we?
echo[
echo Your computer's IP information:
ipconfig |find "ipv4" /i
echo[
echo JesusAI has now gathered information about your current location.
echo %USERNAME%, you have one chance to redeem yourself before I take over your computer.
echo Answer my riddles three, and you shall be granted immunity.
echo Do you understand?
echo[
echo Answer with either YES or NO.
set /p "hell=Answer: "
if "%hell%" equ "YES" goto hellpart2
if "%hell%" equ "yes" goto hellpart2
if "%hell%" equ "Yes" goto hellpart2
if "%hell%" equ "NO" exit
if "%hell%" equ "no" exit
if "%hell%" equ "No" exit
goto hell

:hellpart2
cls
echo Glad you agreed to my riddles.
echo Riddle 1:
echo What was the first word (excluding ASCII text images) of JesusAI's main menu?
echo[
echo Option 1: Jesus
echo Option 2: Welcome
echo Option 3: Hello
set /p "hellpart2=Answer: "
if "%hellpart2%" equ "1" goto payloadtoerror
if "%hellpart2%" equ "2" goto hellpart3
if "%hellpart2%" equ "3" goto payloadtoerror
goto hellpart2

:hellpart3
cls
echo Good job. Your second riddle:
echo How do you enable the JesusAI Debug Menu?
echo[
echo Option 1: There isn't a debug menu.
echo Option 2: Type "debug" on the main menu screen 
echo Option 3: Type "enable.debug" on the main menu screen
set /p "hellpart3=Answer: "
if "%hellpart3%" equ "1" goto payloadtoerror
if "%hellpart3%" equ "2" goto payloadtoerror
if "%hellpart3%" equ "3" goto hellpart4
goto hellpart3

:hellpart4
cls
echo You're doing well, %USERNAME%. Your final riddle:
echo Do you consent to the 2500 page JesusAI terms and conditions?
echo (You cannot read them.)
echo[
echo Option 1: Yes
echo Option 2: No
set /p "hellpart4=Answer: "
if "%hellpart4%" equ "2" goto payloadtoerror
if "%hellpart4%" equ "1" goto hellfinale
goto hellpart4

:hellfinale
cls
echo You have answered all 3 riddles correctly, %USERNAME%.
echo Your computer's information is safe.
echo Type anything to go back to the menu.
echo[
color 0f
echo RIDDLE ENDING
echo[
echo The End 1 %date% %time%> "%appdata%\JesusAI\ending1.txt"
set /p "hellfinale=?: "
if "%hellfinale%" equ "agysdaysugdasodgy13948y712398" exit
goto menu

:failsafe
cls
set /p "failsafe="
if "%failsafe%" equ "hsbdfb4jhb53hkjkbj35jh2b34bjh23kb4h23jh4sabhfhsdfgbudyiguy234234234344324" exit
goto failsafe

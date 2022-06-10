::Created by skeebly studios
::Built for Windows Command Prompt & Windows Powershell.
::https://github.com/enfier/JesusAI

@echo off
title JesusAI 1.0.3.1

::Runs on startup
::Checks to see if the folder containing save data has been previously created
::If not, create the necessary files and continue
::If it exists, just continue to :info
::Info checks if "verify.txt" exists (to identify if the game has been ran before)
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
echo  \ \_______/'\ \____\/\____\ \____\ \____/\ \_\ \_\ \_\ \____\/\ \
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
echo All of JesusAI was created by skeebly studios, owned by ritz (@grocerybagmp3).
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
echo 1. Enter JesusAI
echo 2. Close JesusAI
echo 3. Credits
echo 4. Options 
echo 5. Open Extras Menu
echo[
echo a skeebly studios game
echo last updated: 10/06/2022
echo[
set /p "menu=Selected option: "
if "%menu%" equ "X" goto xshop
if "%menu%" equ "x" goto xshop
if "%menu%" equ "password" goto password
if "%menu%" equ "PASSWORD" goto password
if "%menu%" equ "fuck you" start "" "https://i.imgur.com/SEhpuRg.jpg"
if "%menu%" equ "jesus" start "" https://i.imgur.com/DCtv3fR.gif
if "%menu%" equ "5" goto dlc
if "%menu%" equ "4" goto options
if "%menu%" equ "3" goto credits
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
echo 1. Enter JesusAI
echo 2. Close JesusAI
echo 3. Credits
echo 4. Options
echo 5. Open Extras Menu
echo 6. (DEBUG) List Directories
echo[
echo a skeebly studios game
echo last updated: 10/06/2022
echo[
set /p "menudebug=Selected option: "
if "%menudebug%" equ "X" goto xshop
if "%menudebug%" equ "x" goto xshop
if "%menudebug%" equ "password" goto password
if "%menudebug%" equ "fuck you" start "" "https://i.imgur.com/SEhpuRg.jpg"
if "%menudebug%" equ "jesus" start "" https://i.imgur.com/DCtv3fR.gif
if "%menudebug%" equ "6" goto directorylist
if "%menudebug%" equ "5" goto dlc
if "%menudebug%" equ "4" goto options
if "%menudebug%" equ "3" goto credits
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
echo 1. Enter JesusAI
echo 2. Close JesusAI
echo 3. Credits
echo 4. Options
echo 5. Open Extras Menu
echo[
echo a skeebly studios game
echo last updated: 10/06/2022
echo[
set /p "menudeluxe=Selected option: "
if "%menudeluxe%" equ "repent" goto repent
if "%menudeluxe%" equ "fuck you" start "" "https://i.imgur.com/SEhpuRg.jpg"
if "%menudeluxe%" equ "jesus" start "" https://i.imgur.com/DCtv3fR.gif
if "%menudeluxe%" equ "5" goto dlc
if "%menudeluxe%" equ "4" goto options
if "%menudeluxe%" equ "3" goto credits
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
echo 1. Enter JesusAI
echo 2. Close JesusAI
echo 3. Credits
echo 4. Options
echo 5. Open Extras Menu
echo 6. (DEBUG) List Directories
echo[
echo a skeebly studios game
echo last updated: 10/06/2022
echo[
set /p "menudebugdeluxe=Selected option: "
if "%menudebugdeluxe%" equ "fuck you" start "" "https://i.imgur.com/SEhpuRg.jpg"
if "%menudebugdeluxe%" equ "jesus" start "" https://i.imgur.com/DCtv3fR.gif
if "%menudebugdeluxe%" equ "6" goto directorylist
if "%menudebugdeluxe%" equ "5" goto dlc
if "%menudebugdeluxe%" equ "4" goto options
if "%menudebugdeluxe%" equ "3" goto credits
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
if exist "%appdata%\JesusAI\ending1.txt" if exist "%appdata%\JesusAI\ending2.txt" if exist "%appdata%\JesusAI\ending3.txt" goto fulldlc
goto nonfulldlc

:fulldlc
cls
color 0c
echo  ____    __       ____      
echo /\  _`\ /\ \     /\  _`\    
echo \ \ \/\ \ \ \    \ \ \/\_\  
echo  \ \ \ \ \ \ \  __\ \ \/_/_ 
echo   \ \ \_\ \ \ \L\ \\ \ \L\ \
echo    \ \____/\ \____/ \ \____/
echo     \/___/  \/___/   \/___/ 
echo[
echo Welcome to the DLC menu.
echo Please choose one of the options below. 
echo[
echo 1. Open Cartridges Menu (DLC)
echo Extra DLC available to be ran through JesusAI
echo[
echo 2. Play JesusAI Prototype
echo Play the original incomplete prototype of JesusAI!
echo[
echo 3. Stop N' Swop
echo Exchange items and other content with other skeebly studios games
echo[
echo 4. JesusAI Tech Demos
echo A bunch of tech demos to test JesusAI features.
echo[
echo 5. JesusAI Museum
echo View a bunch of cut or unused features, behind the scenes content and more from the developers!
echo[
echo 6. Go Back to Main Menu
echo[
set /p "dlc=Selected option: "
if "%dlc%" equ "1" goto cartridges
if "%dlc%" equ "2" goto oldmenu
if "%dlc%" equ "3" goto stopnswopchecker
if "%dlc%" equ "4" goto dmomenu
if "%dlc%" equ "5" goto museumloader
if "%dlc%" equ "6" goto endingchecker
goto dlc

:nonfulldlc
cls
color 0c
echo  ____    __       ____      
echo /\  _`\ /\ \     /\  _`\    
echo \ \ \/\ \ \ \    \ \ \/\_\  
echo  \ \ \ \ \ \ \  __\ \ \/_/_ 
echo   \ \ \_\ \ \ \L\ \\ \ \L\ \
echo    \ \____/\ \____/ \ \____/
echo     \/___/  \/___/   \/___/ 
echo[
echo Welcome to the DLC menu.
echo Any locked DLC will be unlocked once you finish the game.
echo Please choose one of the options below. 
echo[
echo 1. [LOCKED]
echo[
echo 2. [LOCKED]
echo[
echo 3. Stop N' Swop
echo Exchange items and other content with other skeebly studios games
echo[
echo 4. [LOCKED]
echo[
echo 5. [LOCKED]
echo[
echo 6. Go Back to Main Menu
echo[
set /p "dlc=Selected option: "
if "%dlc%" equ "3" goto stopnswopchecker
if "%dlc%" equ "6" goto endingchecker
goto dlc

:dmomenu
color 0d
cls
echo  _____                                  ______  ______     
echo /\___ \                                /\  _  \/\__  _\    
echo \/__/\ \     __    ____  __  __    ____\ \ \L\ \/_/\ \/    
echo    _\ \ \  /'__`\ /',__\/\ \/\ \  /',__\\ \  __ \ \ \ \    
echo   /\ \_\ \/\  __//\__, `\ \ \_\ \/\__, `\\ \ \/\ \ \_\ \__ 
echo   \ \____/\ \____\/\____/\ \____/\/\____/ \ \_\ \_\/\_____\
echo    \/___/  \/____/\/___/  \/___/  \/___/   \/_/\/_/\/_____/
echo[
echo  ____                                              
echo /\  _`\                                            
echo \ \ \/\ \     __    ___ ___     ___     ____       
echo  \ \ \ \ \  /'__`\/' __` __`\  / __`\  /',__\      
echo   \ \ \_\ \/\  __//\ \/\ \/\ \/\ \L\ \/\__, `\     
echo    \ \____/\ \____\ \_\ \_\ \_\ \____/\/\____/     
echo     \/___/  \/____/\/_/\/_/\/_/\/___/  \/___/      
echo[
echo Welcome to the JesusAI Feature Demos.
echo This contains a bunch of tests we used to create features in JesusAI.
echo Select a demo from the list below:
echo[
echo 1. Input Test 
echo 2. Website Loader Test
echo 3. Website Loader Test 2
echo 4. Go Back to Extras Menu
echo[
echo created by skeebly studios
echo[
set /p "menu=Demo selected: "
if "%dmenu%" equ "1" goto inputtest
if "%dmenu%" equ "2" goto websitetest
if "%dmenu%" equ "3" goto websitetest2
if "%dmenu%" equ "4" goto dlc
goto dmomenu

:inputtest
Color 0B
Cls
echo This test identifies if text matches the text written by a program.
echo The code this test uses was later scrapped.
echo Type "hello" or something else to see how it works.
echo Type "back" to go back to the main menu.
set /p "Input=Type something here: "
if "%Input%" equ "hello" goto HelloFunction
if "%Input%" equ "Hello" goto HelloFunction
if "%Input%" equ "back" goto dmomenu
goto NoHelloFunction

:HelloFunction
cls
Color 0A
echo I am into The Hello Function
pause
Goto inputtest

:NoHelloFunction
cls
Color 0C
echo I am not into the Hello Function
pause
Goto inputtest

:websitetest
cls
color 0f
echo This test is incredibly simple.
echo When "1" is typed, it opens Google.
echo The specific code used in this test was never used in JesusAI,
echo or used for an extremely short time.
echo Type "back" to go back to the main menu.
set /p "test=?: "

if '%test%'=='1' (
start www.google.com
)
if "%test%" equ "back" goto dmomenu
goto websitetest

:websitetest2
cls
color 0e
echo This test came after the original website test.
echo This new test lets you open multiple links from a list.
echo This specific code is used in JesusAI to open links, as well
echo as the basis for the options menus of JesusAI.
echo Type a number to go to the respective website.
echo Type "back" to go back to the main menu.
:: write a simple list of options to console,
echo Options;
echo 1 : StackOverflow
echo 2 : Google
echo 3 : Youtube
echo 4 : JesusAI GitHub

:: Prompt for input,
set /p "strMenu=Enter desired URL number: "

:: Compare input through if commands,
:: `if not defined strMenu goto :menu` can be used here if prefered.
if "%strMenu%" equ "1" start "" "https://www.stackoverflow.com"
if "%strMenu%" equ "2" start "" "https://www.Google.com"
if "%strMenu%" equ "3" start "" "https://www.youtube.com"
if "%strMenu%" equ "4" start "" "https://github.com/enfier/JesusAI"
if "%strMenu%" equ "back" goto dmomenu
goto websitetest2

:cartridges
cls
title JesusAI 1.0.3.1
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
if "%cartridges%" equ "1" start "" "https://github.com/RAAKNET/JesusAI-Cartridges"
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

:stopnswopchecker
cls
if not exist "%appdata%\StopNSwop" (
    cd %appdata%
    mkdir StopNSwop
    goto stopnswop
)
goto stopnswop

:stopnswop
cls
color 0c
echo  ____    __                       __  __   __      ____                                  
echo /\  _`\ /\ \__                   /\ \/\ \ /\ \    /\  _`\                                
echo \ \,\L\_\ \ ,_\   ___   _____    \ \ `\\ \\ \/    \ \,\L\_\  __  __  __    ___   _____   
echo  \/_\__ \\ \ \/  / __`\/\ '__`\   \ \ , ` \\/      \/_\__ \ /\ \/\ \/\ \  / __`\/\ '__`\ 
echo    /\ \L\ \ \ \_/\ \L\ \ \ \L\ \   \ \ \`\ \         /\ \L\ \ \ \_/ \_/ \/\ \L\ \ \ \L\ \
echo    \ `\____\ \__\ \____/\ \ ,__/    \ \_\ \_\        \ `\____\ \___x___/'\ \____/\ \ ,__/
echo     \/_____/\/__/\/___/  \ \ \/      \/_/\/_/         \/_____/\/__//__/   \/___/  \ \ \/ 
echo                           \ \_\                                                    \ \_\ 
echo                            \/_/                                                     \/_/ 
echo[
echo Welcome to the Stop N' Swop menu.
echo[
echo You can trade items with other compatible skeebly studios games here.
echo Items are able to give you perks in both games.
echo Select if you want to receieve or send items below.
echo[
echo UNLOCKED STOP N' SWOP ITEMS:
if exist "%appdata%\StopNSwop\JesusIceKey.txt" (
    echo Ice Key [UNLOCKED]
)
if not exist "%appdata%\StopNSwop\JesusIceKey.txt" (
    echo Ice Key [LOCKED]
)
echo[
echo Select an option from the list below:
echo 1. Send Items
echo 2. Receive Items
echo 3. Refresh Items
echo 4. Tutorial
echo 5. Go Back to Extras Menu
echo[
set /p "stopnswop=Selected option: "
if "%stopnswop%" equ "1" goto senditems
if "%stopnswop%" equ "2" goto receiveitems
if "%stopnswop%" equ "3" goto stopnswopchecker
if "%stopnswop%" equ "4" goto tutorialswop
if "%stopnswop%" equ "5" goto dlc
goto stopnswop

:tutorialswop
cls
echo  ______         __                                ___      
echo /\__  _\       /\ \__                __          /\_ \     
echo \/_/\ \/ __  __\ \ ,_\   ___   _ __ /\_\     __  \//\ \    
echo    \ \ \/\ \/\ \\ \ \/  / __`\/\`'__\/\ \  /'__`\  \ \ \   
echo     \ \ \ \ \_\ \\ \ \_/\ \L\ \ \ \/ \ \ \/\ \L\.\_ \_\ \_ 
echo      \ \_\ \____/ \ \__\ \____/\ \_\  \ \_\ \__/.\_\/\____\
echo       \/_/\/___/   \/__/\/___/  \/_/   \/_/\/__/\/_/\/____/
echo[
echo Stop N' Swop is a skeebly studios feature that lets you receive and send in-game items to other games.
echo Simply open the menu on both games, one sends, one receives.
echo Send the item on one game, then receive from the other.
echo Other game gets the item and vice versa.
echo More games are getting Stop N' Swop integrated in them as they are developed.
echo[
echo Type anything to go back to the Stop N' Swop menu.
set /p "tutaa=?: "
if "%tutaa%" equ "sf9sifs09fiw9blackblakclbkackijsfisdjf[09isd09finnsofhihsouih2u3ih42p94ujh" exit
goto stopnswopchecker

:senditems
cls
echo This copy of JesusAI is about to send a Stop N' Swop item (Golden Owl Replica).
echo Please open the game you want to receive this item on, and open its Stop N' Swop menu.
echo Then, press anything to send the Stop N' Swop item.
echo[
set /p "sending=?: "
if "%sending%" equ "husdfuhsdfuhsdfuiosdfhusdhfi;uhsdip9fyhfih werht5 34h5i34uh 5u345ilu;45iu;g54i34gb345gbi54" exit
goto sender

:sender
cls
if not exist "%appdata%\StopNSwop\tempGoldOwl.txt" (
    cd %appdata%\StopNSwop
    echo .> tempGoldOwl.txt
    goto displaytext
)
if exist "%appdata%\StopNSwop\tempGoldOwl.txt" (
    goto displaytext
)

:displaytext
cls
color 0c
echo Sending Golden Owl Replica to Game Client..
echo Please wait..
echo (Make sure other game is scanning for items).
timeout /t 10 /nobreak > NUL
goto checker 

:checker
cls
if not exist "%appdata%\StopNSwop\tempGoldOwl.txt" (
    goto resend
)
if exist "%appdata%\StopNSwop\tempGoldOwl.txt" (
    del "%appdata%\StopNSwop\tempGoldOwl.txt"
    goto unsend
)

:resend
cls
echo Item sent successfully!
echo Type anything to return to the Stop N' Swop menu.
echo[
set /p "stopwork="
if "%stopwork%" equ "sffsdfuhfsfsui;odfhsuifhsdui;fhsdiufsdiu;lfgbsduigbfvsdfisdyhfvbsduyfhgvsdfuyfsgdfuisdygfsduy8fgsdfg" exit
goto stopnswop

:unsend
cls
echo Item was not recieved on the other game.
echo Please re-setup Stop N' Swop and try again.
echo Type anything to return to the Stop N' Swop menu.
set /p "startwork="
if "%startwork%" equ "shduuhsdfusdifhsduifhsdfiuh23gh423423ui4gh234bkacj" exit
goto stopnswop

:receiveitems
cls
echo This copy of JesusAI is about to receive a Stop N' Swop item.
echo Please send the item on whichever game you're sending it on,
echo then press anything to begin searching for Stop N' Swop items.
echo[
set /p "receiveitems=?: "
if "%receiveitems%" equ "husdfuhsdfuhsdfuiosdfhusdhfi;uhsdip9fyhfih werht5 34h5i34uh 5u345ilu;45iu;g54i34gb345gbi54" exit
goto reciever

:reciever
cls
color 0c
echo Scanning for Stop N' Swop items..
echo Please wait..
timeout /t 5 /nobreak > NUL
goto itemreciever

:itemreciever
cls
if exist "%appdata%\StopNSwop\tempIceKey.txt" (
    cd %appdata%\StopNSwop
    echo .> JesusIceKey.txt
    del tempIceKey.txt
    goto successfulIceKey
)
if not exist "%appdata%\StopNSwop\tempIceKey.txt" (
    goto unsuccessful
)

:successfulIceKey
cls
color 0c
echo Stop N' Swop item recieved: Ice Key
echo "A frosty key found in sentaku. What mysteries does it hold? "
echo Type anything to go back to the Stop N' Swop menu.
echo[
set /p "icekey="
if "%icekey%" equ "sadbhfsdfuyhefwefulwefweulfguilwerfvulwegvfjwegvulfwevlfvewfluyvwefuwefv" exit
goto stopnswopchecker

:unsuccessful
cls
color 0d
echo No Stop N' Swop items were recieved.
echo Please try again.
echo Type anything to go back to the Stop N' Swop menu.
echo[
set /p "usoc="
if "%usoc%" equ "sadbhfsdfuyhefwefulwefweulfguilwerfvulwegvfjwegvulfwevlfvewfluyvwefuwefv" exit
goto stopnswopchecker

:museumloader
cls
color 0a
echo[
echo Loading the JesusAI Museum..
echo Please wait..
timeout /t 5 /nobreak > NUL
goto museum 

:museumleave
cls
color 0a
echo[
echo Closing the JesusAI Museum..
echo Please wait..
timeout /t 5 /nobreak > NUL
goto dlc

:museum
cls
color 0a
echo  ______  __                                                                          
echo /\__  _\/\ \                  /'\_/`\                                                
echo \/_/\ \/\ \ \___      __     /\      \  __  __    ____     __   __  __    ___ ___    
echo    \ \ \ \ \  _ `\  /'__`\   \ \ \__\ \/\ \/\ \  /',__\  /'__`\/\ \/\ \ /' __` __`\  
echo     \ \ \ \ \ \ \ \/\  __/    \ \ \_/\ \ \ \_\ \/\__, `\/\  __/\ \ \_\ \/\ \/\ \/\ \ 
echo      \ \_\ \ \_\ \_\ \____\    \ \_\\ \_\ \____/\/\____/\ \____\\ \____/\ \_\ \_\ \_\
echo       \/_/  \/_/\/_/\/____/     \/_/ \/_/\/___/  \/___/  \/____/ \/___/  \/_/\/_/\/_/        
echo[
echo Welcome to the JesusAI Museum!
echo Here you'll find cut content, story, features, 
echo as well as behind the scenes stuff from the developers!
echo[
echo Please select an option from the list below:
echo 1. Unused / Hidden Content 
echo 2. Cut Content 
echo 3. FAQ
echo 4. Return to Extras Menu
echo[
set /p "museum=Selected option: "
if "%museum%" equ "1" goto musunusedcontent
if "%museum%" equ "2" goto cutcontent
if "%museum%" equ "3" goto musfaq
if "%museum%" equ "4" goto museumleave
goto museum

:musfaq
cls
echo  ____    ______  _____      
echo /\  _`\ /\  _  \/\  __`\    
echo \ \ \L\_\ \ \L\ \ \ \/\ \   
echo  \ \  _\/\ \  __ \ \ \ \ \  
echo   \ \ \/  \ \ \/\ \ \ \\'\\ 
echo    \ \_\   \ \_\ \_\ \___\_\
echo     \/_/    \/_/\/_/\/__//_/
echo FAQ (Frequently Asked Questions) about JesusAI!
echo[
echo Q: When did JesusAI start?
echo A: The game concept was established in 2019, and the game began development in December 2021.
echo[
echo Q: Is there a soundtrack to the game?
echo A: Put on "Va" by Ryan Roth for the entire game. It's the best way to play it.
echo[
echo Q: Will more things be added after the game's release?
echo A: A few bug fixes, yes, but not much else.
echo[
echo Q: Are you happy with the game?
echo A: Mostly.
echo[
echo Q: What is your stance on unofficial mods?
echo A: Do whatever you'd like to do with the game.
echo[
echo Q: Can people snoop around in the game's code?
echo A: Yes. The game's coding is very interesting. Give it a read sometime.
echo[
echo Q: Can I donate to the game in any way? PayPal, Kofi, Patreon?
echo A: No.
echo[
echo Q: Will there ever be a donation method?
echo A: No.
echo[
echo Q: Was there ever JesusAI anti-piracy / anti-theft?
echo A: There is a version of the game that contains anti-piracy methods, however you are not allowed to download it. It is private.
echo[
echo Q: Please put [OLD FEATURE] in the game!
echo A: That's not really a question, is it? It's more of a request.
echo[
echo Q: Just answer it.
echo A: Well, unless it adds to the game and we're happy with it, then no.
echo[
set /p "faqqq="
if "%faqqq%" equ "ubhsdfusdfuihb23ui4g234yi24b23yh4b24h2b34ugvb23y4g234vu23ig4y2g3189audablackblakkbhsdfsdjfsdf" exit
goto museum


:musunusedcontent
cls
echo  __  __                                     __      ____                    __                  __      
echo /\ \/\ \                                   /\ \    /\  _`\                 /\ \__              /\ \__   
echo \ \ \ \ \    ___   __  __    ____     __   \_\ \   \ \ \/\_\    ___     ___\ \ ,_\    __    ___\ \ ,_\  
echo  \ \ \ \ \ /' _ `\/\ \/\ \  /',__\  /'__`\ /'_` \   \ \ \/_/_  / __`\ /' _ `\ \ \/  /'__`\/' _ `\ \ \/  
echo   \ \ \_\ \/\ \/\ \ \ \_\ \/\__, `\/\  __//\ \L\ \   \ \ \L\ \/\ \L\ \/\ \/\ \ \ \_/\  __//\ \/\ \ \ \_ 
echo    \ \_____\ \_\ \_\ \____/\/\____/\ \____\ \___,_\   \ \____/\ \____/\ \_\ \_\ \__\ \____\ \_\ \_\ \__\
echo     \/_____/\/_/\/_/\/___/  \/___/  \/____/\/__,_ /    \/___/  \/___/  \/_/\/_/\/__/\/____/\/_/\/_/\/__/
echo[
echo Welcome to the Unused Content page!
echo Select an option to read about below:
echo[
echo 1. Hidden Notes
echo 2. Unused Endings 
echo 3. Hidden Locations
echo 4. Go Back to Museum Menu
echo[
set /p "musunused=Selected option: "
if "%musunused%" equ "1" goto hiddennotes
if "%musunused%" equ "2" goto unusedendings
if "%musunused%" equ "3" goto hiddenlocations                                                            
if "%musunused%" equ "4" goto museum
goto musunusedcontent

:hiddennotes
cls
echo  __  __          __      __                     __  __          __                    
echo /\ \/\ \  __    /\ \    /\ \                   /\ \/\ \        /\ \__                 
echo \ \ \_\ \/\_\   \_\ \   \_\ \     __    ___    \ \ `\\ \    ___\ \ ,_\    __    ____  
echo  \ \  _  \/\ \  /'_` \  /'_` \  /'__`\/' _ `\   \ \ , ` \  / __`\ \ \/  /'__`\ /',__\ 
echo   \ \ \ \ \ \ \/\ \L\ \/\ \L\ \/\  __//\ \/\ \   \ \ \`\ \/\ \L\ \ \ \_/\  __//\__, `\
echo    \ \_\ \_\ \_\ \___,_\ \___,_\ \____\ \_\ \_\   \ \_\ \_\ \____/\ \__\ \____\/\____/
echo     \/_/\/_/\/_/\/__,_ /\/__,_ /\/____/\/_/\/_/    \/_/\/_/\/___/  \/__/\/____/\/___/ 
echo[
echo Throughout JesusAI, there are hidden notes you can only see if you open up the game.
echo These are usually related to credits, how parts of the game work or to-do notes.
echo Open up the game and see what you can find!
echo[
echo Type anything to go back to the Museum menu.
set /p "hidden="
if "%hidden%" equ "ubhsdfusdfuihb23ui4g234yi24b23yh4b24h2b34ugvb23y4g234vu23ig4y2g3189audablackblakkbhsdfsdjfsdf" exit
goto museum

:unusedendings
cls
echo  __  __                                     __      ____                __                                
echo /\ \/\ \                                   /\ \    /\  _`\             /\ \  __                           
echo \ \ \ \ \    ___   __  __    ____     __   \_\ \   \ \ \L\_\    ___    \_\ \/\_\    ___      __     ____  
echo  \ \ \ \ \ /' _ `\/\ \/\ \  /',__\  /'__`\ /'_` \   \ \  _\L  /' _ `\  /'_` \/\ \ /' _ `\  /'_ `\  /',__\ 
echo   \ \ \_\ \/\ \/\ \ \ \_\ \/\__, `\/\  __//\ \L\ \   \ \ \L\ \/\ \/\ \/\ \L\ \ \ \/\ \/\ \/\ \L\ \/\__, `\
echo    \ \_____\ \_\ \_\ \____/\/\____/\ \____\ \___,_\   \ \____/\ \_\ \_\ \___,_\ \_\ \_\ \_\ \____ \/\____/
echo     \/_____/\/_/\/_/\/___/  \/___/  \/____/\/__,_ /    \/___/  \/_/\/_/\/__,_ /\/_/\/_/\/_/\/___L\ \/___/ 
echo                                                                                              /\____/      
echo                                                                                              \_/__/       
echo[
echo Before v1.0.0-beta2, JesusAI had two older endings. The Riddle Ending and the Password Ending.
echo In v1.0.0-beta2, these endings were fully updated to be more high-tech and work better.
echo These old endings were made in older, previous versions of JesusAI developer builds.
echo As of now, these are unplayable.
echo[
echo Type anything to go back to the Museum menu.
set /p "undus="
if "%undus%" equ "ubhsdfusdfuihb23ui4g234yi24b23yh4b24h2b34ugvb23y4g234vu23ig4y2g3189audablackblakkbhsdfsdjfsdf" exit
goto museum

:hiddenlocations
cls
echo  __  __          __      __                     __                               __                                  
echo /\ \/\ \  __    /\ \    /\ \                   /\ \                             /\ \__  __                           
echo \ \ \_\ \/\_\   \_\ \   \_\ \     __    ___    \ \ \        ___     ___     __  \ \ ,_\/\_\    ___     ___     ____  
echo  \ \  _  \/\ \  /'_` \  /'_` \  /'__`\/' _ `\   \ \ \  __  / __`\  /'___\ /'__`\ \ \ \/\/\ \  / __`\ /' _ `\  /',__\ 
echo   \ \ \ \ \ \ \/\ \L\ \/\ \L\ \/\  __//\ \/\ \   \ \ \L\ \/\ \L\ \/\ \__//\ \L\.\_\ \ \_\ \ \/\ \L\ \/\ \/\ \/\__, `\
echo    \ \_\ \_\ \_\ \___,_\ \___,_\ \____\ \_\ \_\   \ \____/\ \____/\ \____\ \__/.\_\\ \__\\ \_\ \____/\ \_\ \_\/\____/
echo     \/_/\/_/\/_/\/__,_ /\/__,_ /\/____/\/_/\/_/    \/___/  \/___/  \/____/\/__/\/_/ \/__/ \/_/\/___/  \/_/\/_/\/___/ 
echo[
echo Within the code, there are a few hidden locations you are not able to get to by normal means.
echo These are usually just for creating files or changing variables.
echo It's an easier method to use than doing everything all at once.
echo[
echo Type anything to go back to the Museum menu.
set /p "unduds="
if "%unduds%" equ "ubhsdfusdfuihb23ui4g234yi24b23yh4b24h2b34ugvb23y4g234vu23ig4y2g3189audablackblakkbhsdfsdjfsdf" exit
goto museum

:cutcontent
cls
echo  ____             __        ____                    __                  __      
echo /\  _`\          /\ \__    /\  _`\                 /\ \__              /\ \__   
echo \ \ \/\_\  __  __\ \ ,_\   \ \ \/\_\    ___     ___\ \ ,_\    __    ___\ \ ,_\  
echo  \ \ \/_/_/\ \/\ \\ \ \/    \ \ \/_/_  / __`\ /' _ `\ \ \/  /'__`\/' _ `\ \ \/  
echo   \ \ \L\ \ \ \_\ \\ \ \_    \ \ \L\ \/\ \L\ \/\ \/\ \ \ \_/\  __//\ \/\ \ \ \_ 
echo    \ \____/\ \____/ \ \__\    \ \____/\ \____/\ \_\ \_\ \__\ \____\ \_\ \_\ \__\
echo     \/___/  \/___/   \/__/     \/___/  \/___/  \/_/\/_/\/__/\/____/\/_/\/_/\/__/
echo[
echo Welcome to the Cut Content page!
echo Select an option to read about below:
echo[
echo 1. Removed Endings
echo 2. "Valuable Asset Retrieval"
echo 3. Old Debug Features
echo 4. Removed Mod Loader
echo 5. Save Data
echo 6. Go Back to Museum Menu
echo[
set /p "musunused=Selected option: "
if "%musunused%" equ "1" goto removedendings
if "%musunused%" equ "2" goto assets
if "%musunused%" equ "3" goto olddebug                                                            
if "%musunused%" equ "4" goto modloader
if "%musunused%" equ "5" goto savedata
if "%musunused%" equ "6" goto museum
goto cutcontent

:removedendings
cls
echo  ____                                                  __      ____                __                                
echo /\  _`\                                               /\ \    /\  _`\             /\ \  __                           
echo \ \ \L\ \     __    ___ ___     ___   __  __     __   \_\ \   \ \ \L\_\    ___    \_\ \/\_\    ___      __     ____  
echo  \ \ ,  /   /'__`\/' __` __`\  / __`\/\ \/\ \  /'__`\ /'_` \   \ \  _\L  /' _ `\  /'_` \/\ \ /' _ `\  /'_ `\  /',__\ 
echo   \ \ \\ \ /\  __//\ \/\ \/\ \/\ \L\ \ \ \_/ \/\  __//\ \L\ \   \ \ \L\ \/\ \/\ \/\ \L\ \ \ \/\ \/\ \/\ \L\ \/\__, `\
echo    \ \_\ \_\ \____\ \_\ \_\ \_\ \____/\ \___/ \ \____\ \___,_\   \ \____/\ \_\ \_\ \___,_\ \_\ \_\ \_\ \____ \/\____/
echo     \/_/\/ /\/____/\/_/\/_/\/_/\/___/  \/__/   \/____/\/__,_ /    \/___/  \/_/\/_/\/__,_ /\/_/\/_/\/_/\/___L\ \/___/ 
echo                                                                                                         /\____/      
echo                                                                                                         \_/__/       
echo[
echo Throughout the development of JesusAI, many of the endings have been removed or changed.
echo A few of these endings that never were made were:
echo - The Critic Ending
echo - The Forum Ending
echo - The Cable Ending
echo and there were a few more that were actually made and then later removed.
echo[
echo Type anything to go back to the Museum menu.
set /p "undudds="
if "%undudds%" equ "ubhsdfusdfuihb23ui4g234yi24b23yh4b24h2b34ugvb23y4g234vu23ig4y2g3189audablackblakkbhsdfsdjfsdf" exit
goto museum

:assets
cls
echo  __  __     ______       ____       
echo /\ \/\ \   /\  _  \     /\  _`\     
echo \ \ \ \ \  \ \ \L\ \    \ \ \L\ \   
echo  \ \ \ \ \  \ \  __ \    \ \ ,  /   
echo   \ \ \_/ \__\ \ \/\ \  __\ \ \\ \  
echo    \ `\___/\_\\ \_\ \_\/\_\\ \_\ \_\
echo     `\/__/\/_/ \/_/\/_/\/_/ \/_/\/ /
echo[
echo V.A.R (standing for Valuable Asset Retrieval) was a removed easter egg.
echo By inputting a specific phrase in a random dev build, some cryptic numbers would appear.
echo It was a sort of minigame in a way, where you had to input correct phrases or the game would close.
echo It was removed two dev builds later, as it had no actual use apart from being an easter egg.
echo[
echo Type anything to go back to the Museum menu.
set /p "unduddds="
if "%unduddds%" equ "ubhsdfusdfuihb23ui4g234yi24b23yh4b24h2b34ugvb23y4g234vu23ig4y2g3189audablackblakkbhsdfsdjfsdf" exit
goto museum

:olddebug
cls
echo  _____    ___       __      ____            __                          ____    __               ___    ___  
echo /\  __`\ /\_ \     /\ \    /\  _`\         /\ \                        /\  _`\ /\ \__          /'___\ /'___\ 
echo \ \ \/\ \\//\ \    \_\ \   \ \ \/\ \     __\ \ \____  __  __     __    \ \,\L\_\ \ ,_\  __  __/\ \__//\ \__/ 
echo  \ \ \ \ \ \ \ \   /'_` \   \ \ \ \ \  /'__`\ \ '__`\/\ \/\ \  /'_ `\   \/_\__ \\ \ \/ /\ \/\ \ \ ,__\ \ ,__\
echo   \ \ \_\ \ \_\ \_/\ \L\ \   \ \ \_\ \/\  __/\ \ \L\ \ \ \_\ \/\ \L\ \    /\ \L\ \ \ \_\ \ \_\ \ \ \_/\ \ \_/
echo    \ \_____\/\____\ \___,_\   \ \____/\ \____\\ \_,__/\ \____/\ \____ \   \ `\____\ \__\\ \____/\ \_\  \ \_\ 
echo     \/_____/\/____/\/__,_ /    \/___/  \/____/ \/___/  \/___/  \/___L\ \   \/_____/\/__/ \/___/  \/_/   \/_/ 
echo                                                                  /\____/                                     
echo                                                                  \_/__/                                      
echo[
echo As JesusAI progressed, many Debug features were added to the game. Some of these were:
echo - Info about the game and your computer
echo - Experimental Features (later merged into the options menu)
echo - Embedded Content which contained links and images used in the game
echo All of these features were either merged or removed in later updates.
echo The only debug feature that remains is the "List Directories" option.
echo[
echo Before the v1.0.0-beta1 update, debug mode was enabled and disabled by typing
echo "enable.debug" and "disable.debug" respectively. This was even referred to in the old Riddle Ending.
echo Debug mode is now enabled via turning it on in the new Options menu.
echo[
echo Type anything to go back to the Museum menu.
set /p "undies="
if "%undies%" equ "ubhsdfusdfuihb23ui4g234yi24b23yh4b24h2b34ugvb23y4g234vu23ig4y2g3189audablackblakkbhsdfsdjfsdf" exit
goto museum   

:modloader
cls
echo                      __      __                           __                  
echo  /'\_/`\            /\ \    /\ \                         /\ \                 
echo /\      \    ___    \_\ \   \ \ \        ___      __     \_\ \     __   _ __  
echo \ \ \__\ \  / __`\  /'_` \   \ \ \  __  / __`\  /'__`\   /'_` \  /'__`\/\`'__\
echo  \ \ \_/\ \/\ \L\ \/\ \L\ \   \ \ \L\ \/\ \L\ \/\ \L\.\_/\ \L\ \/\  __/\ \ \/ 
echo   \ \_\\ \_\ \____/\ \___,_\   \ \____/\ \____/\ \__/.\_\ \___,_\ \____\\ \_\ 
echo    \/_/ \/_/\/___/  \/__,_ /    \/___/  \/___/  \/__/\/_/\/__,_ /\/____/ \/_/     
echo[
echo Before the Cartridges menu was made, the Mod Loader was the way to play third-party content.
echo You would access it in the now removed Experimental Features menu.
echo Once the option was selected, a folder was created for mods to be put into.
echo Then, you could run whichever mod you wanted to play.
echo There were some things that we wanted to add to the old Mod Loader, but we didn't know how.
echo Some of these unused features were:
echo - The ability to see all available mods in the loader itself
echo - Read JesusAI's code and use it
echo - Advanced debug options
echo However, these were never made.
echo[
echo The Mod Loader was removed a little later, due to a plethora of issues.
echo These issues include:
echo - Mods wouldn't load at all
echo - Directory Viewer was incredibly hard to implement
echo - The folder containing mods would be deleted if the loader was closed
echo[
echo The Mod Loader was never fully released, even in a dev build.
echo No prior evidence actually exists of the loader, but it did exist.
echo In commit #29, the loader was replaced by the now used Cartridges menu.
echo The Cartridges menu does what the Mod Loader did, but ten times better.
echo[
echo Type anything to go back to the Museum menu.
set /p "loadera="
if "%loadera%" equ "ubhsdfusdfuihb23ui4g234yi24b23yh4b24h2b34ugvb23y4g234vu23ig4y2g3189audablackblakkbhsdfsdjfsdf" exit
goto museum

:savedata
cls
echo  ____                                  ____              __               
echo /\  _`\                               /\  _`\           /\ \__            
echo \ \,\L\_\     __     __  __     __    \ \ \/\ \     __  \ \ ,_\    __     
echo  \/_\__ \   /'__`\  /\ \/\ \  /'__`\   \ \ \ \ \  /'__`\ \ \ \/  /'__`\   
echo    /\ \L\ \/\ \L\.\_\ \ \_/ \ /\  __/    \ \ \_\ \/\ \L\.\_\ \ \_/\ \L\.\_ 
echo    \ `\____\ \__/.\_\\ \___/ \ \____\    \ \____/\ \__/.\_\\ \__\ \__/.\_\
echo     \/_____/\/__/\/_/ \/__/   \/____/     \/___/  \/__/\/_/ \/__/\/__/\/_/    
echo[
echo The way Save Data is used in JesusAI has changed a lot since its original creation.
echo For starters, any sort of Save Data was used in commit #22.
echo It was used to verify if you've seen the terms and conditions screen before.
echo A little while after, it was used to check if you've completed the game.
echo These are both still used and run on startup, so you never see them.
echo[
echo Until a later build, save data was saved to "temp", a directory in Windows.
echo The temp directory gets cleared out regularly and Saves would get cleared.
echo Thus, in a later build, this was changed to a folder in appdata, and still is.
echo Save Data no longer gets erased.
echo[
echo An early concept relating to Save Data was "Profiles".
echo You would be able to save your current game in a profile, then switch to a new one.
echo This would let you replay the game without deleting any of your Save Data.
echo You would've been able to have up to three profiles.
echo The concept was never established as it would've been hard to implement.
echo[
echo Type anything to go back to the Museum menu.
set /p "nezzera="
if "%nezzera%" equ "ubhsdfusdfuihb23ui4g234yi24b23yh4b24h2b34ugvb23y4g234vu23ig4y2g3189audablackblakkbhsdfsdjfsdf" exit
goto museum

:password
cls
if exist "%appdata%\JesusAI\fakeout.txt" (
    goto passwordreal
)
if not exist "%appdata%\JesusAI\fakeout.txt" (
    goto endingchecker
)

:passwordreal
cls
echo  ______      __                              __                                     
echo /\  _  \    /\ \              __            /\ \                      __            
echo \ \ \L\ \   \_\ \    ___ ___ /\_\    ___    \ \ \        ___      __ /\_\    ___    
echo  \ \  __ \  /'_` \ /' __` __`\/\ \ /' _ `\   \ \ \  __  / __`\  /'_ `\/\ \ /' _ `\  
echo   \ \ \/\ \/\ \L\ \/\ \/\ \/\ \ \ \/\ \/\ \   \ \ \L\ \/\ \L\ \/\ \L\ \ \ \/\ \/\ \ 
echo    \ \_\ \_\ \___,_\ \_\ \_\ \_\ \_\ \_\ \_\   \ \____/\ \____/\ \____ \ \_\ \_\ \_\
echo     \/_/\/_/\/__,_ /\/_/\/_/\/_/\/_/\/_/\/_/    \/___/  \/___/  \/___L\ \/_/\/_/\/_/
echo                                                                   /\____/           
echo                                                                   \_/__/     
echo[       
echo          Welcome to Admin Login Portal. Please input passphrase.
echo    Or, alternatively, type "forgot" if you have forgotten your password.
echo        Or, you can type anything else to return to the main menu.
echo[
set /p "pwreal=Passphrase: "
if "%pwreal%" equ "forgot" goto forgotpassword
if "%pwreal%" equ "mae105" goto adminmainframe
goto endingchecker

:forgotpassword
cls
echo Grabbing password.
echo Please wait..
timeout /t 15 /nobreak > NUL
goto forgorpassword

:forgorpassword
cls
echo Retrieved password.
echo Origin date: 17/12/1995
echo Password: "mae105"
echo[
echo Type anything to return to login screen.
set /p "forgor="
if "%forgor%" equ "suhdf;sodifh234uyh234iloveyoumaeuishdfuilsdhfiuh234" exit
goto password

:adminmainframe
cls
echo                                   ___                                     
echo  /'\_/`\            __          /'___\                                    
echo /\      \     __   /\_\    ___ /\ \__/  _ __    __      ___ ___      __   
echo \ \ \__\ \  /'__`\ \/\ \ /' _ `\ \ ,__\/\`'__\/'__`\  /' __` __`\  /'__`\ 
echo  \ \ \_/\ \/\ \L\.\_\ \ \/\ \/\ \ \ \_/\ \ \//\ \L\.\_/\ \/\ \/\ \/\  __/ 
echo   \ \_\\ \_\ \__/.\_\\ \_\ \_\ \_\ \_\  \ \_\\ \__/.\_\ \_\ \_\ \_\ \____\
echo    \/_/ \/_/\/__/\/_/ \/_/\/_/\/_/\/_/   \/_/ \/__/\/_/\/_/\/_/\/_/\/____/
echo[
echo Welcome to the MBG Admin Panel!
echo Please make a selection from the list below:
echo 1. IP Management
echo 2. Data Management
echo 3. Log Out 
echo 4. Check Server Connection
echo[
echo Selected option: 
timeout /t 5 /nobreak > NUL
goto thanksforthat

:thanksforthat
cls
echo               .---.
echo               I[X]I
echo        _.==._.""""".___n__
echo       d __ ___.-''-. _____b
echo       I[__]  /."""".\ _   I
echo       I     // /""\ \\_)  I
echo       I     \\ \__/ //    I
echo       I      \`.__.'/     I
echo       \=======`-..-'======/
echo        `-----------------' 
echo THANK YOU FOR LETTING US GAIN ACCESS.
echo     YOU HAVE BEEN A GOOD PAWN.
echo     WE WILL TAKE IT FROM HERE.
timeout /t 5 /nobreak > NUL
goto panel1

:panel1
cls
echo                                   ___                                     
echo  /'\_/`\            __          /'___\                                    
echo /\      \     __   /\_\    ___ /\ \__/  _ __    __      ___ ___      __   
echo \ \ \__\ \  /'__`\ \/\ \ /' _ `\ \ ,__\/\`'__\/'__`\  /' __` __`\  /'__`\ 
echo  \ \ \_/\ \/\ \L\.\_\ \ \/\ \/\ \ \ \_/\ \ \//\ \L\.\_/\ \/\ \/\ \/\  __/ 
echo   \ \_\\ \_\ \__/.\_\\ \_\ \_\ \_\ \_\  \ \_\\ \__/.\_\ \_\ \_\ \_\ \____\
echo    \/_/ \/_/\/__/\/_/ \/_/\/_/\/_/\/_/   \/_/ \/__/\/_/\/_/\/_/\/_/\/____/
echo[
echo Welcome to the MBG Admin Panel!
echo Please make a selection from the list below:
echo 1. IP Management
echo 2. Data Management
echo 3. Log Out 
echo 4. Check Server Connection
echo[
echo Selected option: 
timeout /t 3 /nobreak > NUL
goto panel2

:panel2
cls
echo                                   ___                                     
echo  /'\_/`\            __          /'___\                                    
echo /\      \     __   /\_\    ___ /\ \__/  _ __    __      ___ ___      __   
echo \ \ \__\ \  /'__`\ \/\ \ /' _ `\ \ ,__\/\`'__\/'__`\  /' __` __`\  /'__`\ 
echo  \ \ \_/\ \/\ \L\.\_\ \ \/\ \/\ \ \ \_/\ \ \//\ \L\.\_/\ \/\ \/\ \/\  __/ 
echo   \ \_\\ \_\ \__/.\_\\ \_\ \_\ \_\ \_\  \ \_\\ \__/.\_\ \_\ \_\ \_\ \____\
echo    \/_/ \/_/\/__/\/_/ \/_/\/_/\/_/\/_/   \/_/ \/__/\/_/\/_/\/_/\/_/\/____/
echo[
echo Welcome to the MBG Admin Panel!
echo Please make a selection from the list below:
echo 1. IP Management
echo 2. Data Management
echo 3. Log Out 
echo 4. Check Server Connection
echo[
echo Selected option: 4
timeout /t 3 /nobreak > NUL
goto panel3

:panel3
cls
echo  ____    __    __                                    __      
echo /\  _`\ /\ \__/\ \                                  /\ \__   
echo \ \ \L\_\ \ ,_\ \ \___      __   _ __    ___      __\ \ ,_\  
echo  \ \  _\L\ \ \/\ \  _ `\  /'__`\/\`'__\/' _ `\  /'__`\ \ \/  
echo   \ \ \L\ \ \ \_\ \ \ \ \/\  __/\ \ \/ /\ \/\ \/\  __/\ \ \_ 
echo    \ \____/\ \__\\ \_\ \_\ \____\\ \_\ \ \_\ \_\ \____\\ \__\
echo     \/___/  \/__/ \/_/\/_/\/____/ \/_/  \/_/\/_/\/____/ \/__/
echo[
echo          Your ethernet connection to our servers is:
echo                        2ms (Great)
echo[
timeout /t 5 /nobreak > NUL
goto panel4

:panel4
cls
echo                                   ___                                     
echo  /'\_/`\            __          /'___\                                    
echo /\      \     __   /\_\    ___ /\ \__/  _ __    __      ___ ___      __   
echo \ \ \__\ \  /'__`\ \/\ \ /' _ `\ \ ,__\/\`'__\/'__`\  /' __` __`\  /'__`\ 
echo  \ \ \_/\ \/\ \L\.\_\ \ \/\ \/\ \ \ \_/\ \ \//\ \L\.\_/\ \/\ \/\ \/\  __/ 
echo   \ \_\\ \_\ \__/.\_\\ \_\ \_\ \_\ \_\  \ \_\\ \__/.\_\ \_\ \_\ \_\ \____\
echo    \/_/ \/_/\/__/\/_/ \/_/\/_/\/_/\/_/   \/_/ \/__/\/_/\/_/\/_/\/_/\/____/
echo[
echo Welcome to the MBG Admin Panel!
echo Please make a selection from the list below:
echo 1. IP Management
echo 2. Data Management
echo 3. Log Out 
echo 4. Check Server Connection
echo[
echo Selected option: 2
timeout /t 3 /nobreak > NUL
goto panel5

:panel5
cls
echo   __            __                    __   ___    ___      
echo  /\ \          /\ \__                /\ \ /\_ \  /\_ \     
echo  \_\ \     __  \ \ ,_\    __         \_\ \\//\ \ \//\ \    
echo  /'_` \  /'__`\ \ \ \/  /'__`\       /'_` \ \ \ \  \ \ \   
echo /\ \L\ \/\ \L\.\_\ \ \_/\ \L\.\_  __/\ \L\ \ \_\ \_ \_\ \_ 
echo \ \___,_\ \__/.\_\\ \__\ \__/.\_\/\_\ \___,_\/\____\/\____\
echo  \/__,_ /\/__/\/_/ \/__/\/__/\/_/\/_/\/__,_ /\/____/\/____/
echo[
echo Welcome to data.dll, Data Management Program.
echo[
echo Select an option:
echo 1. Reverse Data
echo 2. Insert Drive
echo 3. Trade Data
echo 4. Go Back to Mainframe
echo[
echo Selected option:
timeout /t 3 /nobreak > NUL
goto panel6

:panel6
cls
echo   __            __                    __   ___    ___      
echo  /\ \          /\ \__                /\ \ /\_ \  /\_ \     
echo  \_\ \     __  \ \ ,_\    __         \_\ \\//\ \ \//\ \    
echo  /'_` \  /'__`\ \ \ \/  /'__`\       /'_` \ \ \ \  \ \ \   
echo /\ \L\ \/\ \L\.\_\ \ \_/\ \L\.\_  __/\ \L\ \ \_\ \_ \_\ \_ 
echo \ \___,_\ \__/.\_\\ \__\ \__/.\_\/\_\ \___,_\/\____\/\____\
echo  \/__,_ /\/__/\/_/ \/__/\/__/\/_/\/_/\/__,_ /\/____/\/____/
echo[
echo Welcome to data.dll, Data Management Program.
echo[
echo Select an option:
echo 1. Reverse Data
echo 2. Insert Drive
echo 3. Trade Data
echo 4. Go Back to Mainframe
echo[
echo Selected option: 2
timeout /t 3 /nobreak > NUL
goto panel7

:panel7
cls
echo Inserting Drive G into Slot 2..
echo Please wait..
echo[
echo               .---.
echo               I[X]I
echo        _.==._.""""".___n__
echo       d __ ___.-''-. _____b
echo       I[__]  /."""".\ _   I
echo       I     // /""\ \\_)  I
echo       I     \\ \__/ //    I
echo       I      \`.__.'/     I
echo       \=======`-..-'======/
echo        `-----------------' 
echo   THANKS FOR YOUR HELP, SUCKER!
echo       SEE YOU LATER. HEHE!
timeout /t 5 /nobreak > NUL
goto panel8

:panel8
cls
timeout /t 6 /nobreak > NUL
goto panel9

:panel9
cls
echo Drive G inserted into Slot 2.
echo Type anything to return to the Main Menu.
echo[
set /p "panel9="
if "%panel9%" equ "uhsdfusdfh9u23h4923u4h239u4h294uh234923p984u24pu82349283294823498h24p982h4p92384h239p84h234" goto exit
goto ending2

:ending2
cls
color 0a
cls
echo  ____    ______  ______  ______      ____    __  __  ____    ______   __  __  ____      
echo /\  _`\ /\  _  \/\__  _\/\  _  \    /\  _`\ /\ \/\ \/\  _`\ /\__  _\ /\ \/\ \/\  _`\    
echo \ \ \/\ \ \ \L\ \/_/\ \/\ \ \L\ \   \ \ \L\_\ \ `\\ \ \ \/\ \/_/\ \/ \ \ `\\ \ \ \L\_\  
echo  \ \ \ \ \ \  __ \ \ \ \ \ \  __ \   \ \  _\L\ \ , ` \ \ \ \ \ \ \ \  \ \ , ` \ \ \L_L  
echo   \ \ \_\ \ \ \/\ \ \ \ \ \ \ \/\ \   \ \ \L\ \ \ \`\ \ \ \_\ \ \_\ \__\ \ \`\ \ \ \/, \
echo    \ \____/\ \_\ \_\ \ \_\ \ \_\ \_\   \ \____/\ \_\ \_\ \____/ /\_____\\ \_\ \_\ \____/
echo     \/___/  \/_/\/_/  \/_/  \/_/\/_/    \/___/  \/_/\/_/\/___/  \/_____/ \/_/\/_/\/___/        
echo[
echo                       You've unlocked: Data Ending (Ending 2)
timeout /t 8 /nobreak > NUL
goto ending2continued

:ending2continued
cls
echo  ____    ______  ______  ______      ____    __  __  ____    ______   __  __  ____      
echo /\  _`\ /\  _  \/\__  _\/\  _  \    /\  _`\ /\ \/\ \/\  _`\ /\__  _\ /\ \/\ \/\  _`\    
echo \ \ \/\ \ \ \L\ \/_/\ \/\ \ \L\ \   \ \ \L\_\ \ `\\ \ \ \/\ \/_/\ \/ \ \ `\\ \ \ \L\_\  
echo  \ \ \ \ \ \  __ \ \ \ \ \ \  __ \   \ \  _\L\ \ , ` \ \ \ \ \ \ \ \  \ \ , ` \ \ \L_L  
echo   \ \ \_\ \ \ \/\ \ \ \ \ \ \ \/\ \   \ \ \L\ \ \ \`\ \ \ \_\ \ \_\ \__\ \ \`\ \ \ \/, \
echo    \ \____/\ \_\ \_\ \ \_\ \ \_\ \_\   \ \____/\ \_\ \_\ \____/ /\_____\\ \_\ \_\ \____/
echo     \/___/  \/_/\/_/  \/_/  \/_/\/_/    \/___/  \/_/\/_/\/___/  \/_____/ \/_/\/_/\/___/        
echo[
echo                        You've unlocked: Data Ending (Ending 2)
echo[
echo                         JesusAI. Created by skeebly studios.
echo                      Original JesusAI concept by D4rkC0rp0r4ti0n
echo                Storyline, endings and majority of the coding by ritz
echo                        Bug fixes, DLC menu and more by 448v
echo                Made possible by people like you! (and hours of coding)
timeout /t 10 /nobreak > NUL
goto ending2finish

:ending2finish
cls
echo  ____    ______  ______  ______      ____    __  __  ____    ______   __  __  ____      
echo /\  _`\ /\  _  \/\__  _\/\  _  \    /\  _`\ /\ \/\ \/\  _`\ /\__  _\ /\ \/\ \/\  _`\    
echo \ \ \/\ \ \ \L\ \/_/\ \/\ \ \L\ \   \ \ \L\_\ \ `\\ \ \ \/\ \/_/\ \/ \ \ `\\ \ \ \L\_\  
echo  \ \ \ \ \ \  __ \ \ \ \ \ \  __ \   \ \  _\L\ \ , ` \ \ \ \ \ \ \ \  \ \ , ` \ \ \L_L  
echo   \ \ \_\ \ \ \/\ \ \ \ \ \ \ \/\ \   \ \ \L\ \ \ \`\ \ \ \_\ \ \_\ \__\ \ \`\ \ \ \/, \
echo    \ \____/\ \_\ \_\ \ \_\ \ \_\ \_\   \ \____/\ \_\ \_\ \____/ /\_____\\ \_\ \_\ \____/
echo     \/___/  \/_/\/_/  \/_/  \/_/\/_/    \/___/  \/_/\/_/\/___/  \/_____/ \/_/\/_/\/___/        
echo[
echo                        You've unlocked: Data Ending (Ending 2)
echo[
echo                          JesusAI. Created by skeebly studios.
echo                      Original JesusAI concept by D4rkC0rp0r4ti0n
echo                Storyline, endings and majority of the coding by ritz
echo                        Bug fixes, DLC menu and more by 448v
echo                Made possible by people like you! (and hours of coding)
echo[
echo                       You've unlocked 2 of the 3 main endings!
echo                      Type anything to go back to the main menu.
echo[
set /p "ending2finish="
if "%ending2finish%" equ "nisadfjisdfujhnsdfujhnsdfjurf;ib234lh2342jh34b23jh4b23jh4b234jh2jb4h23hbj4j" exit
goto ending2give

:ending2give
cls
echo .> "%appdata%\JesusAI\ending2.txt"
goto endingchecker

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
echo 23. Failsafe Room
echo[
set /p "directories=Directory you want to travel to: "
if "%directories%" equ "23" goto failsafe
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
color 0c
cls
echo                       __      __             
echo                      /\ \  __/\ \__          
echo   ___   _ __    __   \_\ \/\_\ \ ,_\   ____  
echo  /'___\/\`'__\/'__`\ /'_` \/\ \ \ \/  /',__\ 
echo /\ \__/\ \ \//\  __//\ \L\ \ \ \ \ \_/\__, `\
echo \ \____\\ \_\\ \____\ \___,_\ \_\ \__\/\____/
echo  \/____/ \/_/ \/____/\/__,_ /\/_/\/__/\/___/ 
echo[
echo     JesusAI - A Game by skeebly studios
timeout /t 3 /nobreak > NUL
goto credits1

:credits1
cls
echo                       __      __             
echo                      /\ \  __/\ \__          
echo   ___   _ __    __   \_\ \/\_\ \ ,_\   ____  
echo  /'___\/\`'__\/'__`\ /'_` \/\ \ \ \/  /',__\ 
echo /\ \__/\ \ \//\  __//\ \L\ \ \ \ \ \_/\__, `\
echo \ \____\\ \_\\ \____\ \___,_\ \_\ \__\/\____/
echo  \/____/ \/_/ \/____/\/__,_ /\/_/\/__/\/___/ 
echo[
echo     JesusAI - A Game by skeebly studios
echo     Prototype created by D4rkC0rp0r4ti0n
timeout /t 3 /nobreak > NUL
goto credits2

:credits2
cls
echo                       __      __             
echo                      /\ \  __/\ \__          
echo   ___   _ __    __   \_\ \/\_\ \ ,_\   ____  
echo  /'___\/\`'__\/'__`\ /'_` \/\ \ \ \/  /',__\ 
echo /\ \__/\ \ \//\  __//\ \L\ \ \ \ \ \_/\__, `\
echo \ \____\\ \_\\ \____\ \___,_\ \_\ \__\/\____/
echo  \/____/ \/_/ \/____/\/__,_ /\/_/\/__/\/___/ 
echo[
echo     JesusAI - A Game by skeebly studios
echo     Prototype created by D4rkC0rp0r4ti0n
echo           Full game coded by ritz
timeout /t 3 /nobreak > NUL
goto credits3

:credits3
cls
echo                       __      __             
echo                      /\ \  __/\ \__          
echo   ___   _ __    __   \_\ \/\_\ \ ,_\   ____  
echo  /'___\/\`'__\/'__`\ /'_` \/\ \ \ \/  /',__\ 
echo /\ \__/\ \ \//\  __//\ \L\ \ \ \ \ \_/\__, `\
echo \ \____\\ \_\\ \____\ \___,_\ \_\ \__\/\____/
echo  \/____/ \/_/ \/____/\/__,_ /\/_/\/__/\/___/ 
echo[
echo     JesusAI - A Game by skeebly studios
echo     Prototype created by D4rkC0rp0r4ti0n
echo           Full game coded by ritz
echo    Bug fixes, DLC menu and more by 448v
timeout /t 3 /nobreak > NUL
goto credits4

:credits4
cls
echo                       __      __             
echo                      /\ \  __/\ \__          
echo   ___   _ __    __   \_\ \/\_\ \ ,_\   ____  
echo  /'___\/\`'__\/'__`\ /'_` \/\ \ \ \/  /',__\ 
echo /\ \__/\ \ \//\  __//\ \L\ \ \ \ \ \_/\__, `\
echo \ \____\\ \_\\ \____\ \___,_\ \_\ \__\/\____/
echo  \/____/ \/_/ \/____/\/__,_ /\/_/\/__/\/___/ 
echo[
echo     JesusAI - A Game by skeebly studios
echo     Prototype created by D4rkC0rp0r4ti0n
echo           Full game coded by ritz
echo    Bug fixes, DLC menu and more by 448v
echo         Project hosted on GitHub
timeout /t 3 /nobreak > NUL
goto credits5

:credits5
cls
echo                       __      __             
echo                      /\ \  __/\ \__          
echo   ___   _ __    __   \_\ \/\_\ \ ,_\   ____  
echo  /'___\/\`'__\/'__`\ /'_` \/\ \ \ \/  /',__\ 
echo /\ \__/\ \ \//\  __//\ \L\ \ \ \ \ \_/\__, `\
echo \ \____\\ \_\\ \____\ \___,_\ \_\ \__\/\____/
echo  \/____/ \/_/ \/____/\/__,_ /\/_/\/__/\/___/ 
echo[
echo     JesusAI - A Game by skeebly studios
echo     Prototype created by D4rkC0rp0r4ti0n
echo           Full game coded by ritz
echo    Bug fixes, DLC menu and more by 448v
echo         Project hosted on GitHub
echo  Hundreds of fixes by StackOverflow answers
timeout /t 3 /nobreak > NUL
goto credits6

:credits6
cls
echo                       __      __             
echo                      /\ \  __/\ \__          
echo   ___   _ __    __   \_\ \/\_\ \ ,_\   ____  
echo  /'___\/\`'__\/'__`\ /'_` \/\ \ \ \/  /',__\ 
echo /\ \__/\ \ \//\  __//\ \L\ \ \ \ \ \_/\__, `\
echo \ \____\\ \_\\ \____\ \___,_\ \_\ \__\/\____/
echo  \/____/ \/_/ \/____/\/__,_ /\/_/\/__/\/___/ 
echo[
echo     JesusAI - A Game by skeebly studios
echo     Prototype created by D4rkC0rp0r4ti0n
echo           Full game coded by ritz
echo    Bug fixes, DLC menu and more by 448v
echo         Project hosted on GitHub
echo  Hundreds of fixes by StackOverflow answers
echo      You, for playing our project! <3
timeout /t 6 /nobreak > NUL
goto credits7

:credits7
cls
echo                       __      __             
echo                      /\ \  __/\ \__          
echo   ___   _ __    __   \_\ \/\_\ \ ,_\   ____  
echo  /'___\/\`'__\/'__`\ /'_` \/\ \ \ \/  /',__\ 
echo /\ \__/\ \ \//\  __//\ \L\ \ \ \ \ \_/\__, `\
echo \ \____\\ \_\\ \____\ \___,_\ \_\ \__\/\____/
echo  \/____/ \/_/ \/____/\/__,_ /\/_/\/__/\/___/ 
echo[
echo     JesusAI - A Game by skeebly studios
echo     Prototype created by D4rkC0rp0r4ti0n
echo           Full game coded by ritz
echo    Bug fixes, DLC menu and more by 448v
echo         Project hosted on GitHub
echo  Hundreds of fixes by StackOverflow answers
echo      You, for playing our project! <3
echo[
echo Please select an option:
echo 1. Open ritz's GitHub
echo 2. Open JesusAI's GitHub Repository Page
echo 3. Go Back to Main Menu
echo[
set /p "credits7=Selected option: "
if "%credits7%" equ "1" start "" "https://github.com/enfier"
if "%credits7%" equ "2" start "" "https://github.com/enfier/JesusAI"
if "%credits7%" equ "3" goto endingchecker
goto credits7

:oldmenu
color 0a
cls
echo Jesus A.I
echo The first ever prototype
echo Slightly optimized and modified to work properly
echo Created and remastered by skeebly studios
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
echo            YOU MUST REPENT, MY CHILD.
timeout /t 5 /nobreak > NUL
goto endingchecker

:jesusai
cls
if exist "%appdata%\JesusAI\ending2.txt" (
    goto mainjesusai
)
if not exist "%appdata%\JesusAI\allowending2.txt" (
    goto mainjesusai
)
if not exist "%appdata%\JesusAI\ending1.txt" (
    goto mainjesusai
)
if exist "%appdata%\JesusAI\ending1.txt" if exist "%appdata%\JesusAI\allowending2.txt" (
    goto fakeout
)

:fakeout
cls
color 0c
echo               .---.
echo               I[X]I
echo        _.==._.""""".___n__
echo       d __ ___.-''-. _____b
echo       I[__]  /."""".\ _   I
echo       I     // /""\ \\_)  I
echo       I     \\ \__/ //    I
echo       I      \`.__.'/     I
echo       \=======`-..-'======/
echo        `-----------------' 
echo[
echo I HAVE CHOSEN YOU, %username%, FOR A PURPOSE.
echo INPUT "PASSWORD" ON THE MAIN MENU SCREEN.
echo YOU MUST COMPLETE THIS IN DUE TIME.
timeout /t 5 /nobreak > NUL
echo .> "%appdata%\JesusAI\fakeout.txt"
goto endingchecker

:mainjesusai
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
echo[
echo Choose an option from the list below:             
echo[                  
echo 1. Beg for forgiveness.
echo 2. Escape.
echo Or, ask a question from the list below:
echo[
echo CURRENT PROMPTS TO ASK JESUS
echo "Hello"
echo "Who are you?"
echo "What is JesusAI?"
echo "Let's talk!"
echo[
set /p "jesusai=Ask Jesus: "
if "%jesusai%" equ "1" goto judgement
if "%jesusai%" equ "2" goto payloadtoerror
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
echo DEVELOPERS, [ritz], [448v] AND [D4rkC0rp0r4ti0n].
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
echo [ritz] AND [D4rkC0rp0r4ti0n] ON [Instagram]!!!
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
echo 1. %username% [PROHIBITED]
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
echo          JesusAI. Created by skeebly studios.
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
echo          JesusAI. Created by skeebly studios.
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
echo          JesusAI. Created by skeebly studios.
echo     Original JesusAI concept by D4rkC0rp0r4ti0n
echo Storyline, endings and majority of the coding by ritz
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
echo          JesusAI. Created by skeebly studios.
echo     Original JesusAI concept by D4rkC0rp0r4ti0n
echo Storyline, endings and majority of the coding by ritz
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
echo          JesusAI. Created by skeebly studios.
echo     Original JesusAI concept by D4rkC0rp0r4ti0n
echo Storyline, endings and majority of the coding by ritz
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
echo          JesusAI. Created by skeebly studios.
echo     Original JesusAI concept by D4rkC0rp0r4ti0n
echo Storyline, endings and majority of the coding by ritz
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
echo An unknown source has been detected trying to access important system files.
echo Process name identified as: "stuxnet.sed"
echo Allow this process to access important system files?
echo[
echo Respond with either YES or NO.
set /p "hell=Answer: "
if "%hell%" equ "YES" goto hellsed
if "%hell%" equ "yes" goto hellsed
if "%hell%" equ "Yes" goto hellsed
if "%hell%" equ "NO" exit
if "%hell%" equ "no" exit
if "%hell%" equ "No" exit
goto hell

:hellsed
cls
color 0c
echo Allowing "stuxnet.sed" access important system files..
echo Please wait..
timeout /t 10 /nobreak > NUL
goto brickd

:brickd
cls
color 0c
echo  ____    ______  __  __   __   __   __  __  ____    ______   
echo /\  _`\ /\__  _\/\ \/\ \ /\ \ /\ \ /\ \/\ \/\  _`\ /\__  _\  
echo \ \,\L\_\/_/\ \/\ \ \ \ \\ `\`\/'/'\ \ `\\ \ \ \L\_\/_/\ \/  
echo  \/_\__ \  \ \ \ \ \ \ \ \`\/ ' '   \ \ , ` \ \  _\L  \ \ \  
echo    /\ \L\ \ \ \ \ \ \ \_\ \  \/'/\`\ \ \ \`\ \ \ \L\ \ \ \ \ 
echo    \ `\____\ \ \_\ \ \_____\ /\_\\ \_\\ \_\ \_\ \____/  \ \_\
echo     \/_____/  \/_/  \/_____/ \/_/ \/_/ \/_/\/_/\/___/    \/_/
echo[
echo      Your system has been bricked by the STUXNET worm!
echo    Your files relating to "JesusA.I.bat" have been locked!
echo  In order to get your files back, you must answer five questions!
echo Fail to answer these questions and your files are deleted FOREVER!!
echo            Type anything to begin. Good luck!
echo[
set /p "brickd=?: "
if "%brickd%" equ "sohdufisdufhui2h34ib234iybg23ib4y23i4uy23uigb423uigb423iigb23u4bi23k4buh234buj234buikfisidfi13123++" exit
goto hellpart2

:hellpart2
cls
echo[
echo Question One of Five:
echo What worm have you been infected by?
echo (You can either respond with numbers or the actual answer.)
echo[
echo OPTIONS:
echo 1. "Stuxnet"
echo 2. "ILOVEYOU"
echo 3. "Storm Worm"
echo[
set /p "hellpart2=Answer: "
if "%hellpart2%" equ "1" goto hellpart3
if "%hellpart2%" equ "2" goto failsafe
if "%hellpart2%" equ "3" goto failsafe
if "%hellpart2%" equ "Stuxnet" goto hellpart3
if "%hellpart2%" equ "STUXNET" goto hellpart3
if "%hellpart2%" equ "stuxnet" goto hellpart3
if "%hellpart2%" equ "ILOVEYOU" goto failsafe
if "%hellpart2%" equ "iloveyou" goto failsafe
if "%hellpart2%" equ "Iloveyou" goto failsafe
if "%hellpart2%" equ "Storm Worm" goto failsafe
if "%hellpart2%" equ "STORM WORM" goto failsafe
if "%hellpart2%" equ "storm worm" goto failsafe
goto hellpart2

:hellpart3
cls
echo[
echo Question Two of Five:
echo What game are you playing?
echo[
echo OPTIONS:
echo 1. "Cortisol"
echo 2. "Mausenheim"
echo 3. "JesusAI"
echo[
set /p "hellpart3=Answer: "
if "%hellpart3%" equ "1" goto failsafe
if "%hellpart3%" equ "2" goto failsafe
if "%hellpart3%" equ "3" goto hellpart4
if "%hellpart3%" equ "JesusAI" goto hellpart4
if "%hellpart3%" equ "JesusA.I" goto hellpart4
if "%hellpart3%" equ "jesusai" goto hellpart4
if "%hellpart3%" equ "JESUSAI" goto hellpart4
if "%hellpart3%" equ "jesusa.i" goto hellpart4
if "%hellpart3%" equ "mausenheim" goto failsafe
if "%hellpart3%" equ "MAUSENHEIM" goto failsafe
if "%hellpart3%" equ "Mausenheim" goto failsafe
if "%hellpart3%" equ "Storm Worm" goto failsafe
if "%hellpart3%" equ "STORM WORM" goto failsafe
if "%hellpart3%" equ "storm worm" goto failsafe
goto hellpart3

:hellpart4
cls
echo[
echo Question Three of Five:
echo Who made JesusAI?
echo[
echo OPTIONS:
echo 1. "ritz, ghoulstar & wavesky"
echo 2. "D4rkC0rp0r4ti0n, ritz & 448v"
echo 3. "448v, gaypaw & cloudcore"
echo[
set /p "hellpart4=Answer: "
if "%hellpart4%" equ "1" goto failsafe
if "%hellpart4%" equ "2" goto hellpart5
if "%hellpart4%" equ "3" goto failsafe
if "%hellpart4%" equ "D4rkC0rp0r4ti0n, ritz & 448v" goto hellpart5
if "%hellpart4%" equ "D4RKC0RP0R4TI0N, RITZ & 448V" goto hellpart5
if "%hellpart4%" equ "d4rkc0rp0r4ti0n, ritz & 448v" goto hellpart5
if "%hellpart4%" equ "d4rkc0rp0r4ti0n ritz 448v" goto hellpart5
if "%hellpart4%" equ "D4rkC0rp0r4ti0n ritz 448v" goto hellpart5
if "%hellpart4%" equ "D4RKC0RP0R4TI0N RITZ 448V" goto hellpart5
if "%hellpart4%" equ "jesusai" goto hellpart5
if "%hellpart4%" equ "JESUSAI" goto hellpart5
if "%hellpart4%" equ "jesusa.i" goto hellpart5
if "%hellpart4%" equ "ritz, ghoulstar & wavesky" goto failsafe
if "%hellpart4%" equ "RITZ, GHOULSTAR & WAVESKY" goto failsafe
if "%hellpart4%" equ "RITZ, GHOULSTAR  WAVESKY" goto failsafe
if "%hellpart4%" equ "ritz, ghoulstar wavesky" goto failsafe
if "%hellpart4%" equ "448v, gaypaw & cloudcore" goto failsafe
if "%hellpart4%" equ "448V, GAYPAW & CLOUDCORE" goto failsafe
if "%hellpart4%" equ "448v gaypaw cloudcore" goto failsafe
if "%hellpart4%" equ "448V GAYPAW CLOUDCORE" goto failsafe
goto hellpart4

:hellpart5
cls
echo[
echo Pregunta Cuatro de Cinco:
echo Puedes traducir esto correctamente?
echo[
echo OPCIONES:
echo 1. "Si, puedo!"
echo 2. "No, no puedo."
echo[
set /p "hellpart5=Respuesta: "
if "%hellpart5%" equ "1" goto hellpart6
if "%hellpart5%" equ "2" goto failsafe
if "%hellpart5%" equ "¡Sí, puedo!" goto hellpart6
if "%hellpart5%" equ "si puedo!" goto hellpart6
if "%hellpart5%" equ "si puedo" goto hellpart6
if "%hellpart5%" equ "SI PEUDO" goto hellpart6
if "%hellpart5%" equ "Si, peudo" goto hellpart6
if "%hellpart5%" equ "Si, peudo!" goto hellpart6
if "%hellpart5%" equ "SI PEUDO!" goto hellpart6
if "%hellpart5%" equ "si puedo" goto hellpart6
if "%hellpart5%" equ "No, no puedo." goto failsafe
if "%hellpart5%" equ "No, no puedo" goto failsafe
if "%hellpart5%" equ "No no puedo." goto failsafe
if "%hellpart5%" equ "No no puedo" goto failsafe
if "%hellpart5%" equ "NO, NO PEUDO." goto failsafe
if "%hellpart5%" equ "NO NO PEUDO." goto failsafe
if "%hellpart5%" equ "NO NO PEUDO" goto failsafe
goto hellpart5

:hellpart6
cls
echo[
echo Question Five of Five:
echo True or False: Today is %date%.
echo[
echo OPTIONS:
echo 1. "False"
echo 2. "True"
echo[
set /p "hellpart6=Answer: "
if "%hellpart6%" equ "1" goto failsafe
if "%hellpart6%" equ "2" goto hellpart7
if "%hellpart6%" equ "false" goto failsafe
if "%hellpart6%" equ "False" goto failsafe
if "%hellpart6%" equ "FALSE" goto failsafe
if "%hellpart6%" equ "TRUE" goto hellpart7
if "%hellpart6%" equ "true" goto hellpart7
if "%hellpart6%" equ "True" goto hellpart7
goto hellpart6

:hellpart7
cls
echo[
echo You have answered all questions correctly.
echo Your files are safe!
echo Type anything to unencrypt your precious files.
echo[
set /p "hellpart7=?: "
if "%hellpart7%" equ "uisdbfuisdfusdui23ho4ob234hb23b4uh23buh423bhol2b34hbiibjecho[echo[echo[echo[echo[qiudisaubdsijaidk" exit
goto unencrypt1

:unencrypt1
cls
echo[
echo Unencrypting files (1/744)..
echo Please wait..
timeout /t 5 /nobreak > NUL
goto unencrypt2

:unencrypt2
cls
echo[
echo Unencrypting files (106/744)..
echo Please wait..
timeout /t 3 /nobreak > NUL
goto unencrypt3

:unencrypt3
cls
echo[
echo Unencrypting files (350/744)..
echo Please wait..
timeout /t 6 /nobreak > NUL
goto unencrypt4

:unencrypt4
cls
echo[
echo Unencrypting files (563/744)..
echo Please wait..
timeout /t 2 /nobreak > NUL
goto unencrypt5

:unencrypt5
cls
echo[
echo Unencrypting files (743/744)..
echo Please wait..
timeout /t 8 /nobreak > NUL
goto unencrypt6

:unencrypt6
cls
echo[
echo Files successfully unencrypted!
echo Type anything to exit Stuxnet computer worm.
echo[
set /p "unencrypt6=?: "
if "%unencrypt6%" equ "suhdfsdfuhsdfsduo;ohsdfklhjl3ui4hp23i4h2gb4ujh3vb4u23hu4sdavhkusdfvbjdfvjhfavjhafsdjhk" exit
goto ending1

:ending1
cls
echo  __  __  ______   ____    __  __  ____        ____    __  __  ____    ______   __  __  ____      
echo /\ \/\ \/\__  _\ /\  _`\ /\ \/\ \/\  _`\     /\  _`\ /\ \/\ \/\  _`\ /\__  _\ /\ \/\ \/\  _`\    
echo \ \ \ \ \/_/\ \/ \ \ \L\ \ \ \ \ \ \,\L\_\   \ \ \L\_\ \ `\\ \ \ \/\ \/_/\ \/ \ \ `\\ \ \ \L\_\  
echo  \ \ \ \ \ \ \ \  \ \ ,  /\ \ \ \ \/_\__ \    \ \  _\L\ \ , ` \ \ \ \ \ \ \ \  \ \ , ` \ \ \L_L  
echo   \ \ \_/ \ \_\ \__\ \ \\ \\ \ \_\ \/\ \L\ \   \ \ \L\ \ \ \`\ \ \ \_\ \ \_\ \__\ \ \`\ \ \ \/, \
echo    \ `\___/ /\_____\\ \_\ \_\ \_____\ `\____\   \ \____/\ \_\ \_\ \____/ /\_____\\ \_\ \_\ \____/
echo     `\/__/  \/_____/ \/_/\/ /\/_____/\/_____/    \/___/  \/_/\/_/\/___/  \/_____/ \/_/\/_/\/___/ 
echo[
echo                              You've unlocked: Virus Ending (Ending 1)
timeout /t 8 /nobreak > NUL
goto ending1continued

:ending1continued
cls
echo  __  __  ______   ____    __  __  ____        ____    __  __  ____    ______   __  __  ____      
echo /\ \/\ \/\__  _\ /\  _`\ /\ \/\ \/\  _`\     /\  _`\ /\ \/\ \/\  _`\ /\__  _\ /\ \/\ \/\  _`\    
echo \ \ \ \ \/_/\ \/ \ \ \L\ \ \ \ \ \ \,\L\_\   \ \ \L\_\ \ `\\ \ \ \/\ \/_/\ \/ \ \ `\\ \ \ \L\_\  
echo  \ \ \ \ \ \ \ \  \ \ ,  /\ \ \ \ \/_\__ \    \ \  _\L\ \ , ` \ \ \ \ \ \ \ \  \ \ , ` \ \ \L_L  
echo   \ \ \_/ \ \_\ \__\ \ \\ \\ \ \_\ \/\ \L\ \   \ \ \L\ \ \ \`\ \ \ \_\ \ \_\ \__\ \ \`\ \ \ \/, \
echo    \ `\___/ /\_____\\ \_\ \_\ \_____\ `\____\   \ \____/\ \_\ \_\ \____/ /\_____\\ \_\ \_\ \____/
echo     `\/__/  \/_____/ \/_/\/ /\/_____/\/_____/    \/___/  \/_/\/_/\/___/  \/_____/ \/_/\/_/\/___/ 
echo[
echo                              You've unlocked: Virus Ending (Ending 1)
echo[
echo                              JesusAI. Created by skeebly studios.
echo                         Original JesusAI concept by D4rkC0rp0r4ti0n
echo                     Storyline, endings and majority of the coding by ritz
echo                           Bug fixes, DLC menu and more by 448v
echo                   Made possible by people like you! (and hours of coding)
timeout /t 10 /nobreak > NUL
goto ending1finish

:ending1finish
cls
echo  __  __  ______   ____    __  __  ____        ____    __  __  ____    ______   __  __  ____      
echo /\ \/\ \/\__  _\ /\  _`\ /\ \/\ \/\  _`\     /\  _`\ /\ \/\ \/\  _`\ /\__  _\ /\ \/\ \/\  _`\    
echo \ \ \ \ \/_/\ \/ \ \ \L\ \ \ \ \ \ \,\L\_\   \ \ \L\_\ \ `\\ \ \ \/\ \/_/\ \/ \ \ `\\ \ \ \L\_\  
echo  \ \ \ \ \ \ \ \  \ \ ,  /\ \ \ \ \/_\__ \    \ \  _\L\ \ , ` \ \ \ \ \ \ \ \  \ \ , ` \ \ \L_L  
echo   \ \ \_/ \ \_\ \__\ \ \\ \\ \ \_\ \/\ \L\ \   \ \ \L\ \ \ \`\ \ \ \_\ \ \_\ \__\ \ \`\ \ \ \/, \
echo    \ `\___/ /\_____\\ \_\ \_\ \_____\ `\____\   \ \____/\ \_\ \_\ \____/ /\_____\\ \_\ \_\ \____/
echo     `\/__/  \/_____/ \/_/\/ /\/_____/\/_____/    \/___/  \/_/\/_/\/___/  \/_____/ \/_/\/_/\/___/ 
echo[
echo                              You've unlocked: Virus Ending (Ending 1)
echo[
echo                              JesusAI. Created by skeebly studios.
echo                         Original JesusAI concept by D4rkC0rp0r4ti0n
echo                     Storyline, endings and majority of the coding by ritz
echo                           Bug fixes, DLC menu and more by 448v
echo                   Made possible by people like you! (and hours of coding)
echo[
echo                          You've unlocked 1 of the 3 main endings!
echo                         Type anything to go back to the main menu.
echo[
set /p "ending1finish="
if "%ending1finish%" equ "nisadfjisdfujhnsdfujhnsdfjurf;ib234lh2342jh34b23jh4b23jh4b234jh2jb4h23hbj4j" exit
goto ending1give

:ending1give
cls
echo .> "%appdata%\JesusAI\ending1.txt"
if not exist "%appdata%\JesusAI\ending3.txt" (
    echo .> "%appdata%\JesusAI\allowending2.txt"
)
goto endingchecker

:failsafe
cls
set /p "failsafe="
if "%failsafe%" equ "hsbdfb4jhb53hkjkbj35jh2b34bjh23kb4h23jh4sabhfhsdfgbudyiguy234234234344324" exit
goto failsafe
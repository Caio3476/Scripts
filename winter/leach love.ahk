#Requires AutoHotkey v1.0+
;coordenadas baseadas na tela
CoordMode, Mouse, screen
CoordMode, Pixel, screen
;nao tenho q ficar fechando p abrir
#SingleInstance, Force
;fazendo gui
Gui,2:+AlwaysOnTop
Gui,2:Add,Text,x10, Press U to start the macro
Gui,2:Add,Text,x10, Press G to stop the macro
Gui,2:+ToolWindow -Caption
Gui,2:Show,x160 y940

global exitFlag := false
G::
exitFlag := true
ExitApp
return


u::
goto, start





start:
loop{
    filename := A_ScriptDir . "\bin\yes.png"
    ImageSearch, foundX, foundY, 0, 0, 1920, 1080, *50 %filename%
    if (ErrorLevel = 0) {
        ; Image found, click the image
        Click, %foundX%, %foundY%
    }
    sleep 400
    filnename3 := A_ScriptDir . "\bin\lost.png"
    ImageSearch,,, 0, 0, 1920, 1080, %filename3%
        if (ErrorLevel = 0) {
            Click, 842, 568
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            Click, 970, 567
            Click, 960, 567
            Click, 967, 567
            loop 15 {
                Click, 1848, 309
                sleep 100
            }
            mousemove, 520, 440
            sleep 500
            ImageSearch, foundx, foundy, 0, 0, 1920, 1080, %A_ScriptDir%\bin\menu.png
            if (ErrorLevel = 0) {
                click, %foundX%, %foundY%
                sleep 100
            }
        }
    filename1 := A_ScriptDir . "\bin\portallove.png"
    filename2 := A_ScriptDir . "\bin\choseportal.png"
    filnename3 := A_ScriptDir . "\bin\lost.png"
    
    ; Search for portal.png
    ImageSearch, foundX, foundY, 0, 0, 1920, 1080, %filename1%
    if (ErrorLevel = 0) {
        ; Image found, click the image
        goto, pickportal
        break
    }
    
    ImageSearch,,, 0, 0, 1920, 1080, %filename3%
        if (ErrorLevel = 0) {
        ; Image found, click the image
        goto, choseportal
        break
    }
    Click, 1801, 328 
         
}




pickportal:
Click, 1194, 634
Sleep, 100
Click, 842, 568
Sleep, 100
goto, choseportal



choseportal:
Click, 842, 568
Sleep, 100
Click, 842, 568
Sleep, 100
Click, 970, 567
Click, 960, 567
Click, 967, 567
loop 15 {
    Click, 1848, 309
    sleep 100
}
mousemove, 520, 440
sleep 500
ImageSearch, foundx, foundy, 0, 0, 1920, 1080, %A_ScriptDir%\bin\menu.png
if (ErrorLevel = 0) {
    click, %foundX%, %foundY%
    sleep 100
}
goto, start

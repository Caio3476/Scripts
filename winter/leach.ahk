#Requires AutoHotkey v1.0+
;coordenadas baseadas na tela
CoordMode, Mouse, screen
CoordMode, Pixel, screen
;nao tenho q ficar fechando p abrir
#SingleInstance, Force
;fazendo gui
Gui,2:+AlwaysOnTop
Gui,2:Add,Text,x10, Aperte U para comecar o macro
Gui,2:Add,Text,x10, Aperte G para parar o macro
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
    filename1 := A_ScriptDir . "\bin\portal.png"
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
namektimes := 0
loop 5{     
    namektimes := namektimes + 1  
    filename4 := A_ScriptDir . "\bin\namek" . namektimes . ".png"
    MouseMove, 1195, 505
    sleep 500
    ImageSearch, foundX, foundY, 1266, 561, 1513, 645, *50 %filename4%
    if (ErrorLevel = 0) {
        Click, 1194, 634
        Sleep, 100
        Click, 842, 568
        Sleep, 100
        goto, choseportal
    }

    MouseMove, 960, 505
    sleep 500
    ImageSearch, foundX, foundY, 1029, 570, 1272, 637, *50 %filename4%
    if (ErrorLevel = 0) {
        Click, 960, 622
        Sleep, 100
        Click, 842, 568
        Sleep, 100
        goto, choseportal
    }

    MouseMove, 725, 505
    sleep 500
    ImageSearch, foundX, foundY, 800, 547, 1047, 620, *50 %filename4%
    if (ErrorLevel = 0) {
        Click, 725, 635
        Sleep, 100
        Click, 842, 568
        Sleep, 100
        goto, choseportal
    }
}
; Search for shibuya.png
MouseMove, 1195, 505
Sleep, 500
ImageSearch, foundX, foundY, 1266, 561, 1513, 645, *50 %A_ScriptDir%\bin\shibuya.png
if (ErrorLevel = 1) {
    ImageSearch, foundX, foundY, 1266, 561, 1513, 645, *50 %A_ScriptDir%\bin\spider.png
    if (ErrorLevel = 1) {
        Click, 1194, 634
        Sleep, 100
        Click, 842, 568
        Sleep, 100
        goto, choseportal
    }
}

MouseMove, 960, 505
Sleep, 500
ImageSearch, foundX, foundY, 1029, 570, 1272, 637, *50 %A_ScriptDir%\bin\shibuya.png
if (ErrorLevel = 1) {
    ImageSearch, foundX, foundY, 1029, 570, 1272, 637, *50 %A_ScriptDir%\bin\spider.png
    if (ErrorLevel = 1) {
        Click, 960, 622
        Sleep, 100
        Click, 842, 568
        Sleep, 100
        goto, choseportal
    }
}

MouseMove, 725, 505
Sleep, 500
ImageSearch, foundX, foundY, 800, 547, 1047, 620, *50 %A_ScriptDir%\bin\shibuya.png
if (ErrorLevel = 1) {
    ImageSearch, foundX, foundY, 800, 547, 1047, 620, *50 %A_ScriptDir%\bin\spider.png
    if (ErrorLevel = 1) {
        Click, 725, 635
        Sleep, 100
        Click, 842, 568
        Sleep, 100
        goto, choseportal
    }
}

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
#Requires AutoHotkey v1.0+
;coordenadas baseadas na tela
CoordMode, Mouse, screen
CoordMode, Pixel, screen
;nao tenho q ficar fechando p abrir
#SingleInstance, Force
;fazendo gui
Gui,2:+AlwaysOnTop
Gui,2:Add,Text,x10, Aperte P para setar onde o allucard vai*LADO DIREITO DA TELA*
Gui,2:Add,Text,x10, Aperte K para setar onde a saber vai*LADO DIREITO DA TELA*
Gui,2:Add,Text,x10, Aperte Y Para setar onde o speedwagon do meio vai*LADO ESQUERDO DA TELA*
Gui,2:Add,Text,x10, Aperte U para comecar o macro
Gui,2:Add,Text,x10, Aperte G para parar o macro
Gui,2:+ToolWindow -Caption
Gui,2:Show,x160 y940

global exitFlag := false

G::
exitFlag := true
ExitApp
return

global allucardX, allucardY
P::
MouseGetPos, allucardX, allucardY
allucardupgrade := allucardY - 5
return

global saberX, saberY
K::
MouseGetPos, saberX, saberY
saberupgrade := saberY - 5
return

global speedwagonX, speedwagonY
Y::
MouseGetPos, speedwagonX, speedwagonY
speedwagonX2 := speedwagonX + 18
speedwagonY2 := speedwagonY - 92
speedwagonX3 := speedwagonX + 78
speedwagonupgrade := speedwagonX - 10
speedwagonupgrade2 := speedwagonY2 - 5
speedwagonupgrade3 := speedwagonX3 - 10

return


U::
Goto, start


start:
sleep 400
Loop {
    filename := A_ScriptDir . "\bin\yes.png"
    ImageSearch, foundX, foundY, 0, 0, 1920, 1080, *50 %filename%
    if (ErrorLevel = 0) {
        ; Image found, click the image
        Click, %foundX%, %foundY%
        mousemove, 1808, 287
        break
    } else {
        sleep 100
    }
}
Loop {
    filename := A_ScriptDir . "\bin\yes.png"
    ImageSearch, foundX, foundY, 0, 0, 1920, 1080, *50 %filename%
    if (ErrorLevel = 1) {
        break
    }
}
Goto, macro


macro:
harukax := (saberX+allucardx)/2
harukay := (saberY+allucardY)/2
sleep 1000
Click, %speedwagonX%+18, %speedwagonY%-92
Send, 4
Sleep, 100
Click, %speedwagonX%, %speedwagonY%
sleep 20000
send 4
Click, %speedwagonX2%, %speedwagonY2%
sleep 100
Click, 1801, 328
send 4
sleep 100
Click, %speedwagonX3%, %speedwagonY%
sleep 100
Click, 1801, 328
send 2
click, %saberX%, %saberY%
sleep 100
click, 1801, 328
sleep 17000
send 1
sleep 100
click, %allucardX%, %allucardY% 
sleep 100
click, 1801, 328
sleep 100
click, %speedwagonupgrade%, %speedwagonY%
Loop, 220 {
    send t
    sleep 100
}
click, 1801, 328
sleep 100
click, %speedwagonX2%, %speedwagonupgrade2%
Loop, 150 {
    send t
    sleep 100
}
click, 1801, 328
sleep 100
click, %speedwagonupgrade3%, %speedwagonY%
Loop, 140 {
    filnename3 := A_ScriptDir . "\bin\lost.png"
    ImageSearch,,, 0, 0, 1920, 1080, %filename3%
        if (ErrorLevel = 0) {
        ; Image found, click the image
        goto, choseportal
        break
    }
    send t
    sleep 100
}
click, 1801, 328
sleep 100
send 3
click, %harukaX%, %harukaY%
click, 1801, 328
sleep 100
click, %allucardx%, %allucardupgrade%
loop, 170 {
    filnename3 := A_ScriptDir . "\bin\lost.png"
    ImageSearch,,, 0, 0, 1920, 1080, %filename3%
        if (ErrorLevel = 0) {
        ; Image found, click the image
        goto, choseportal
        break
    }
    send t
    sleep 100
}
click, 1801, 328
sleep 100
click, %saberX%, %saberupgrade%
sleep 100
loop, 1150 {
    filnename3 := A_ScriptDir . "\bin\lost.png"
    ImageSearch,,, 0, 0, 1920, 1080, %filename3%
        if (ErrorLevel = 0) {
        ; Image found, click the image
        goto, choseportal
        break
    }
    send t
    sleep 100
}
click, 1801, 328
sleep 100
click, 1801, 328
sleep 60000
click, %allucardx%, %allucardupgrade%
loop, 320 {
    filnename3 := A_ScriptDir . "\bin\lost.png"
    ImageSearch,,, 0, 0, 1920, 1080, %filename3%
        if (ErrorLevel = 0) {
        ; Image found, click the image
        goto, choseportal
        break
    }
    send t
    sleep 100
}
click, 1801, 328
sleep 60000
Loop {
    filename1 := A_ScriptDir . "\bin\portal.png"
    filename2 := A_ScriptDir . "\bin\victory.png"
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
    ; Images not found, sleep for 1 second
    sleep 1000
}
pickportal:
namektimes := 0
loop 6{     
    namektimes := namektimes + 1  
    filename4 := A_ScriptDir . "\bin\namek" . namektimes . ".png"
    MouseMove, 1195, 505
    sleep 500
    ImageSearch, foundX, foundY, 1266, 561, 1513, 645, *90 %filename4%
    if (ErrorLevel = 0) {
        Click, 1194, 634
        Sleep, 100
        Click, 842, 568
        Sleep, 100
        goto, choseportal
    }

    MouseMove, 960, 505
    sleep 500
    ImageSearch, foundX, foundY, 1029, 570, 1272, 637, *90 %filename4%
    if (ErrorLevel = 0) {
        Click, 960, 622
        Sleep, 100
        Click, 842, 568
        Sleep, 100
        goto, choseportal
    }

    MouseMove, 725, 505
    sleep 500
    ImageSearch, foundX, foundY, 800, 547, 1047, 620, *90 %filename4%
    if (ErrorLevel = 0) {
        Click, 725, 635
        Sleep, 100
        Click, 842, 568
        Sleep, 100
        goto, choseportal
    }
}
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
Click, 725, 635
Sleep, 100
Click, 842, 568
Sleep, 100
goto, choseportal

choseportal:
Click, 967, 567
loop 15 {
    Click, 1848, 309
    sleep 100
}
loop 4{
    filename2 := A_ScriptDir . "\bin\choseportal.png"
    filename8 := A_ScriptDir . "\bin\victory.png"
    ImageSearch, foundX, foundY, 0, 0, 1920, 1080, *50 %filename2%
    if (ErrorLevel = 0) {
        ; Image found, click the image
        click, 505, 840
        goto, success
        break
    }
    ImageSearch,,, 0, 0, 1920, 1080, *50 %filename8%
    if (ErrorLevel = 0) {
        ; Image found, click the image
        click, 505, 840
        goto, success
        break
    }
}
click 505, 840
goto, success




success:
mousemove, 520, 440
sleep 500
loop 2{
    namektimesa := 0
    loop 6{
        namektimesa := namektimesa + 1
        filename6 := A_ScriptDir . "\bin\namek" . namektimesa ".png"
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 520, 440
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 695, 440
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 695, 440
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 870, 440
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 870, 440
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 1045, 440
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 1045, 440
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 1220, 440
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 1220, 440
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 1395, 440
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 1395, 440
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 520, 600
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 520, 600
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 695, 600
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 695, 600
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 870, 600
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 870, 600
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 1045, 600
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 1045, 600
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 1220, 600
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 1220, 600
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 1395, 600
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 1395, 600
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 520, 760
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 520, 760
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 695, 760
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 695, 760
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 870, 760
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 870, 760
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 1045, 760
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 1045, 760
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 1220, 760
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 1220, 760
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
        mousemove, 1395, 760
        sleep 500
        ImageSearch,,, 0,0,1920,1080,*90 %filename6%
        if (ErrorLevel = 0) {
            click, 1395, 760
            sleep 200
            click, 820, 568
            sleep 200
            click, 820, 568
            sleep 200
            Click, 725, 635
            Sleep, 100
            Click, 842, 568
            Sleep, 100
            loop 15 {
            Click, 1848, 309
            sleep 100
            }
            goto, start
        }
    }
    Loop, 5 ; 20 iterations * 100ms = 2000ms (2 seconds)
        {
            MouseClick, WheelDown
            Sleep, 100 ; 100 milliseconds
        }
}
FormatTime, TimeString,, Time
MsgBox, Parou %TimeString%.

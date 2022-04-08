righttext := "Вправо"
gotext := "Вперёд"
lefttext := "Влево"
downtext := "Вниз"
savetext := "Сохранить"

Gui, Font, S8 CDefault Bold, Cosmic
Gui, Add, Hotkey, x12 y9 w100 h20 vGo, %Go%
Gui, Add, Hotkey, x12 y39 w100 h20 vRigght, %Rigght%
Gui, Add, Text, x112 y39 w100 h20 , %righttext%
Gui, Add, Hotkey, x12 y69 w100 h20 vLefft, %Lefft%
Gui, Add, Text, x112 y9 w100 h20 , %gotext%
Gui, Add, Text, x112 y69 w100 h20 , %lefttext%
Gui, Add, Hotkey, x12 y99 w100 h20 vBack, %Back%
Gui, Add, Text, x112 y99 w100 h20 , %downtext%
Gui, Font, S8 CDefault Bold, Cosmic sans
Gui, Add, Button, x12 y139 w110 h30 gSave, %savetext%
Gui, Font, S12 Bold, Cosmic sans
Gui, Add, Button, x362 y149 w100 h30 gGame, GAME
Gui, Add, Button, x362 y109 w100 h30 gVk, VK
Gui, Add, Button, x362 y69 w100 h30 gGit, GIT
; Generated using SmartGUI Creator for SciTE
Gui, Show, w476 h191, Untitled GUI
return

GuiClose:
ExitApp

game:
run https://hazbo.ru/
return
git:
run https://github.com/grishakiselevru
return
vk:
Run https://vk.com/giglon
return

save:
Hotkey, %Go%, Off, UseErrorLevel
Gui, submit, NoHide
Hotkey, %Go%, goa,On,  UseErrorLevel
Hotkey, %Back%, Off, UseErrorLevel
Gui, submit, NoHide
Hotkey, %Back%, backa,On,  UseErrorLevel
Hotkey, %Rigght%, Off, UseErrorLevel
Gui, submit, NoHide
Hotkey, %Rigght%, riga,On,  UseErrorLevel
Hotkey, %Lefft%, Off, UseErrorLevel
Gui, submit, NoHide
Hotkey, %Lefft%, lefa,On,  UseErrorLevel
return

goa:
SendInput, GO000 {Enter}
return

backa:
SendInput, DOWN000 {Enter}
return

riga:
SendInput, RIGHT000 {Enter}
return

lefa:
SendInput, LEFT000 {Enter}
return

Numpad0::Reload
Numpad9::ExitApp
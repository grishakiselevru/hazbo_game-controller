
Gui, Add, Hotkey, x12 y9 w80 h20 vGo, %Go%
Gui, Add, Hotkey, x12 y49 w80 h20 vBack, %Back%
Gui, Add, Hotkey, x12 y89 w80 h20 vRigght, %Rigght%
Gui, Add, Hotkey, x12 y129 w80 h20 vLefft, %Lefft%
Gui, Add, Text, x92 y9 w100 h20 , Вперёд
Gui, Add, Text, x92 y49 w100 h20 , Назад
Gui, Add, Text, x92 y89 w100 h20 , Право
Gui, Add, Text, x92 y129 w100 h20 , Лево
Gui, Add, Button, x12 y149 w100 h30 gSave, СОХРАНИТЬ
Gui, Show, w326 h187, Хазбо Лабиринт v0.0.1
return

GuiClose:
ExitApp
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
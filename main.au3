#include <Constants.au3>
#include <GUIConstantsEx.au3>

Local $hGUI = GUICreate("Hello World", 200, 100)
GUICtrlCreateLabel("Hello world! How are you?", 30, 10)
Local $iOKButton = GUICtrlCreateButton("OK", 70, 50, 60)
GUISetState(@SW_SHOW, $hGUI)

Local $iMsg = 0
While 1
    $iMsg = GUIGetMsg()
    Switch $iMsg
        Case $iOKButton
            MsgBox($MB_SYSTEMMODAL, "GUI Event", "You selected the OK button.")

        Case $GUI_EVENT_CLOSE
            MsgBox($MB_SYSTEMMODAL, "GUI Event", "You selected the Close button. Exiting...")
            ExitLoop
    EndSwitch
WEnd

GUIDelete($hGUI)

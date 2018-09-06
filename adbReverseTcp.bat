@ECHO OFF
adb reverse tcp:8081 tcp:8081 && adb shell input text "RR"

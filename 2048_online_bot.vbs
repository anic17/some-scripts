' Bot created for this video:
' https://www.youtube.com/watch?v=PL-GXzQU_x0
'
' Created by anic17.
'
' It simply send random keys
'


msgbox "_"
wscript.sleep(1000)
ls = 0
var = 0
Set keys = createObject("WScript.Shell")
Do While var < 255
	rand = Int((4-1+1)*Rnd+1)
	
	If ls = rand Then
		var = var + 1
	Else
		ls = rand
	
		If rand = 1 Then keys.sendkeys "left"
		If rand = 2 Then keys.sendkeys "right"
		If rand = 3 Then keys.sendkeys "up"
		If rand = 4 Then keys.sendkeys "down"
		keys.sendkeys "{ENTER}"
		WScript.Sleep(5000)
		var = var + 1
		tempvar = var Mod 10
		if tempvar = 0 Then
			keys.sendkeys "Bot created by anic17!"
			keys.sendkeys "{ENTER}"
			WScript.Sleep(2000)
		End if
	End If
Loop

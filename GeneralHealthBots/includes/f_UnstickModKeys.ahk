f_UnstickModKeys()
{
	VNI=1.0.0.13
	BlockInput,On
	SendInput, {Ctrl Up}
	SendInput, {V Up}
	SendInput, {Shift Up}
	SendInput, {Alt Up}
	BlockInput,Off
}


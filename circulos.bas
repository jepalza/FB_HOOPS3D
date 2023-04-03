   #Include "hoops3d.bi"
	#Inclib "hoops"
	
	Var lic="license=(customer=empresa_ejemplo,product=(im,kanji,classic),key=aaa-bbb-ccc-ddd)"

	HC_Define_System_Options(lic)

	'HC_Print_Version()
	'HC_Define_System_Options("no errors, no warnings")
	'HC_Define_System_Options("code generation = On")
	
	Dim As single q(2),r(2),s(2)
	
	q(0)=0.0
	q(1)=0.7
	q(2)=0.0
	
	r(0)=0.7
	r(1)=0.0
	r(2)=0.0
	
	s(0)=0.0
	s(1)=-0.7
	s(2)=0.0
	
	HC_Open_Segment("?Picture")
		HC_Open_Segment("Drahtmodell")
			HC_Set_Window(-1.0,0.0,-1.0,0.0)
			HC_Insert_Circle(@q(0),@r(0),@s(0))
			HC_Set_Visibility("faces=off")
		HC_Close_Segment()
		HC_Open_Segment("Flachenmodell")
			HC_Set_Window(0.0,1.0,-1.0,1.0)
			HC_Open_Segment("Streifen")
				HC_Set_Window(-1.0,1.0,0.33,1.0)
				HC_Insert_Circle(@q(0),@r(0),@s(0))
				HC_Set_Face_Pattern("==")
			HC_Close_Segment()
			HC_Open_Segment("Karos")
				HC_Set_Window(-1.0,1.0,-1.0,-0.33)
				HC_Insert_Circle(@q(0),@r(0),@s(0))
				HC_Set_Face_Pattern("<>")
			HC_Close_Segment()
			HC_Insert_Circle(@q(0),@r(0),@s(0))
		HC_Close_Segment()
		HC_Pause()
		' al pulsar una tecla o raton, se adapta a la ventana
		HC_Set_Camera_Projection("stretched")
	HC_Close_Segment()
	HC_Pause()

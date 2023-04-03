   #Include "hoops3d.bi"
   #Inclib "hoops"
   	
	Var lic="license=(customer=empresa_ejemplo,product=(im,kanji,classic),key=aaa-bbb-ccc-ddd)"

	HC_Define_System_Options(lic)

	Dim As single puntos(...) = { 0.2, 0.2, 0.0, 0.4, 0.7, 0.0, 0.6, 0.3, 0.0, 0.8, 0.8, 0.0}

	HC_Open_Segment ("?picture")
		HC_Insert_Polyline (4, @puntos(0))
		' probar con
					' -- --
					' -...
					' -..
					' ...
					' - -
					' -.-
					' ---
		HC_Set_Line_Pattern ("-...")
		
		HC_Set_Color ("lines = red")
		HC_Set_Line_Weight (10.0)
	HC_Close_Segment ( )
	HC_Pause ( )
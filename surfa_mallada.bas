   #Include "hoops3d.bi"
   #Include "hoops3d.bi"
	#Inclib "hoops"
	
	Var lic="license=(customer=empresa_ejemplo,product=(im,kanji,classic),key=aaa-bbb-ccc-ddd)"

	HC_Define_System_Options(lic)
	
	'HC_Define_System_Options("no errors, no warnings")
	'HC_Define_System_Options("code generation = On")
	

function sin_cos( x As single, y As Single) As single
  Dim As Single xfreq = 4.0 
  Dim As single yfreq = 2.0 
  return ((0.25 + 0.5 * sin(x * 1.5 + 1.0)) * sin (xfreq*x) * cos (yfreq*y))
End Function

 Function graph_function(xstart As single, xend As Single, xpoints As Integer, ystart As Single, yend As Single, ypoints As integer) As integer
  
  Dim As HC_POINT ptr point_list
  Dim As Single puntos(xpoints*ypoints*3)
  point_list=@puntos(0)
   
  Dim As HC_POINT ptr p1 = point_list
  
  Dim As Single xinc = (xend - xstart) / (xpoints - 1)
  Dim As Single yinc = (yend - ystart) / (ypoints - 1)
  Dim As Single xendr = xend + xinc / 2.0 
  Dim As Single yendr = yend + yinc / 2.0 
  
  for y As Single = ystart To yendr Step yinc
     for x As Single= xstart To xendr Step xinc
        p1->x = x
        ' evaluate function 
        p1->y = sin_cos(x, y)
        p1->z = y
        p1+=1
		Next
  Next
  
  Dim As Integer key = HC_KInsert_Mesh(xpoints, ypoints, point_list)

  return key
End Function


  Dim As Integer u,v
  u=20
  v=20
  Dim Shared As Single verts(u,v)
  
  HC_Open_Segment("?Picture") 
   HC_Set_Rendering_Options("hsr algorithm = software z-buffer")
   HC_insert_Distant_Light(5.0, 5.0, -5.0)
   graph_function(-1.0, 1.0, u,   -1.0, 1.0, v)
   HC_Rotate_Object(-20.0, 10.0, 0.0) 
   ' podemos ver los vertices como circulos, quitando "no markers"
   ' podemos ver solo los bordes exteriores de cada surfa con "edges=mesh quads only"
   ' o podemos ver los triangulos, con "edges=on" en vez del  "edges=mesh quads only"
   HC_Set_Visibility("no markers, edges=mesh quads only")
   HC_Set_Color("faces=dark green")
  HC_Close_Segment()
  HC_Pause()	

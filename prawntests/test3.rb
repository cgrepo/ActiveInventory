require 'prawn'
require 'date'

#pdf = Prawn::Document.new
Prawn::Document.generate 'theyard.pdf' do 
	stroke_axis
	Prawn::Font::AFM.hide_m17n_warning = true
	imgshield = "logodire.png"	
	image imgshield, at: [26,710], fit:[82,82]
	
	imgdir = "direccion.png"
	image imgdir, at: [215,710], fit:[302,302]
	font_families.update('Calibri' => { normal:'Calibri.ttf'  })
	font_families.update('Verdana' => { normal:'Verdana.ttf'  })
 	formatted_text_box [ 
    	{:text => "SOLICITUD DE SERVICIO" , size:24, style:[:bold], font:'Verdana', color:'747373'  },
     ], at:[130,650], width:420, height:300

  formatted_text_box [ 
    	{:text => "PRIORIDAD: " , size:11, style:[:normal], font:'Calibri' },
    	{:text => " URGENTE-ATENDER LA SIGUIENTE SOLICITUD DE MANERA INMEDIATA!" , size:8, style:[:normal],
    		font:'Calibri', color:'f90101' },
    	{:text => " FECHA: " , size:9, style:[:normal], font:'Verdana', color:'a5a0a0' },
    	{:text => "#{Time.now.strftime("%m/%d/%Y")} " , size:9, style:[:bold], font:'Helvetica' },
    	{:text => " FOLIO: " , size:9, style:[:normal], font:'Calibri', color:'a5a0a0' },
    	{:text => " 00000000001" , size:9, style:[:bold], font:'Verdana' }
     ], at:[5,620]
  formatted_text_box [ 
    	{:text => 'Por medio de la presente se solicita el servicio a el equipo especificado en este documento a la empresa:' , 
    		size:11, style:[:normal], font:'Calibri' },
     ], at:[10,605]

  
  bounding_box([5,595], width:550, height:53 ) do
  	move_down 6
  	indent 5 do
  		#stroke_axis(:step_length => 50)
  		text 'Nombre Empresa: COPY SERVICIOS BAJA', size:10, font:'Helvetica'
  		move_down 4
  		text 'Direccion : Avenida Niños Heroes S/N. Centro.. Cabo San Lucas, Baja California Sur.', size:10, font:'Helvetica'
  		move_down 4
  		text 'Telefono(s): (624)144-4725 (624)144-4725 RFC: OEII789927H78 Email: carlos_albinoggat@hotmail.com', size:10, font:'Helvetica'
  	end
  	transparent(0.7) { stroke_bounds}
  end
  line [85,580],[550,580]
  line [55, 564],[550,564]
  line [60, 547],[185,547]
  line [205,547],[270,547]
  line [298,547],[550,547]
	stroke_color 'c5c1c1'#'a5a0a0'
  stroke do

  	horizontal_line 78,550, at:525
  	horizontal_line 70,550, at:510
  	horizontal_line 57,550, at:494
  	rounded_rectangle [5,540], 550,70, 6

  end
  formatted_text_box [ 
  		{text:'Area solicitante: ', size:10, font:'Calibri', style:[:normal]},
    	{text:' TRANSITO CANCREJOS DEL CSL Responsable: C. Carlos Albino Garcia Grijalba', size:10, font:'Calibri', color:'a5a0a0'},
     ], at:[10,535]
  formatted_text_box [ 
    	{text:'Dependencia: ', size:10, font:'Calibri' },
    	{text:' TRANSITO CANCREJOS DEL CSL Responsable: C. Carlos Albino Garcia Grijalba', size:10, font:'Calibri', color:'a5a0a0'},
    	#{text:'Direccion: ', size:10, font:'Calibri'},
    	#{text:'C. XHIpiro E/Playhon y Rocallon Manzan 11 Lote 14 Residencial Las Peñalosas', size:10, font:'Calibri', color:'a5a0a0'}
     ], at:[10,520]
  formatted_text_box [ 
    	{text:'Direccion: ', size:10, font:'Calibri'},
    	{text:'C. XHIpiro E/Playhon y Rocallon Manzan 11 Lote 14 Residencial Las Peñalosas', size:10, font:'Calibri', color:'a5a0a0'}
     ], at:[10,505]
  # bounding_box([5,540], width:550, height:70 ) do
  # 	move_down 6
  # 	indent(5) do
  # 		stroke_axis(:step_length => 50)
  # 		text 'Area solicitante: Cerrito del Timbre C. Matamoros SN E/Lazaro C ', size:10, font:'Calibri'
  # 		move_down 4
  # 		text 'Dependencia: TRANSITO CANCREJOS DEL CSL Responsable: C. Carlos Albino Garcia Grijalba', size:10, font:'Calibri'
  # 		move_down 4
  # 		text 
  # 		move_down 4
  # 		text 'Telefono(s): 144-4725 144-4725 Celular:(624)144-4725 Folio Solicitud: ZFMT/CSL-110/09/09/2016', size:10, font:'Calibri' 
  # 	end
  # 	transparent(1) { stroke_bounds}
  # end
  
  # line [],[]
  # line [],[]
  # line [],[]
  # line [],[]
  # line [],[]
  # line [],[]
  # bounding_box([5,400], width:550 ) do
  # 	transparent(1) { stroke_bounds}
  # end
  # bounding_box([5,300], width:550 ) do
  # 	transparent(1) { stroke_bounds}
  # end
  # bounding_box([5,200], width:550 ) do
  # 	transparent(1) { stroke_bounds}
  # end
  # bounding_box([5,100], width:550 ) do
  # 	transparent(1) { stroke_bounds}
  # end
end

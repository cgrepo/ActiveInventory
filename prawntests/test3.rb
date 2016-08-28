require 'prawn'
require 'date'

Prawn::Document.generate 'theyard.pdf' do 
	#stroke_axis
#-----------START--------------------------------------------------------------------------------------------------------------------
	Prawn::Font::AFM.hide_m17n_warning = true
	imgshield = "logodire.png"	
	image imgshield, at: [26,710], fit:[82,82]
	
	imgdir = "direccion.png"
	image imgdir, at: [215,710], fit:[302,302]
	font_families.update('Calibri' => { normal:'Calibri.ttf'  })
	font_families.update('Verdana' => { normal:'Verdana.ttf'  })
 	formatted_text_box [
    {:text => "SOLICITUD DE SERVICIO" , size:24, style:[:bold], font:'Verdana', color:'747373'  }, ], 
    at:[130,650], width:420, height:300

  formatted_text_box [
    {:text => "PRIORIDAD: " , size:11, style:[:normal], font:'Calibri' },
    {:text => " URGENTE-ATENDER LA SIGUIENTE SOLICITUD DE MANERA INMEDIATA!" , size:8, style:[:normal],
    	font:'Calibri', color:'f90101' },
    {:text => " FECHA: " , size:9, style:[:normal], font:'Verdana', color:'b0a8a8' },
    {:text => "#{Time.now.strftime("%m/%d/%Y")} " , size:9, style:[:bold], font:'Helvetica' },
    {:text => " FOLIO: " , size:9, style:[:normal], font:'Calibri', color:'b0a8a8' },
    {:text => " 00000000001" , size:9, style:[:bold], font:'Verdana' }
  ], at:[30,620]
  formatted_text_box [
    {:text => 'Por medio de la presente se solicita el servicio a el equipo especificado en este documento a la empresa:' , size:11, 
      style:[:normal], font:'Calibri' },
  ], at:[10,605]

	stroke_color 'c5c1c1'#
  stroke do
    #-------FIRST BOX-------------------
      rounded_rectangle [5,595], 550,50, 6
      horizontal_line 10,550, at:580
      horizontal_line 10,550, at:564
    #-------SECOND----------------------
      rounded_rectangle [5,540], 550,63, 6
      horizontal_line 10,550, at:525
      horizontal_line 10,550, at:510
      horizontal_line 10,550, at:495
    #-------THIRD-----------------------
      rounded_rectangle [5,472], 550,100, 6
      horizontal_line 10,550, at:442
      horizontal_line 10,550, at:428
    #-------FOURT-----------------------
      rounded_rectangle [5,367], 550,68, 6
      horizontal_line 103,550, at:350
      horizontal_line 10,550, at:337
      horizontal_line 10,550, at:324
    #------FIFTH------------------------
      rounded_rectangle [5,294], 550,55, 6
      horizontal_line 73,550, at:278
      horizontal_line 10,550, at:265
      horizontal_line 10,550, at:252
  end
#--------------FIRST BOX DATA--------------------------------------------------------------------------------------------------------
  formatted_text_box [
    {text:'Nombre empresa: ', size:10, font:'Calibri', style:[:normal]},
    {text:' BAJA DIGITAL S.A DE C.V. ', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'}
  ], at:[10,590]
  formatted_text_box [
    {text:' Dirección: ', size:10, font:'Calibri', style:[:normal]},
    {text:' AVE. IGNACIO ALLENDE #880, LOCAL 1 Y 2 COL. CENTRO LA PAZ BCS.', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'}
  ], at:[10,574]
  formatted_text_box [
    {text:' Telefono(s): ', size:10, font:'Calibri', style:[:normal]},
    {text:' (624)144-4725 (624)144-4725 ', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
    {text:' RFC: ', size:10, font:'Calibri', style:[:normal]},
    {text:' BDI981121TY8 ', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
    {text:' Email: ', size:10, font:'Calibri', style:[:normal]},
    {text:' carlos_albinogg@yahoo.com.mx-----', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'}
  ], at:[10,558]

#--------------SECOND BOX DATA-------------------------------------------------------------------------------------------------------
  formatted_text_box [ 
  	{text:'Dependencia: ', size:10, font:'Calibri' },
    {text:' SECRETARIA PARTICULA MUNICIPAL ', size:10, font:'Calibri', color:'b0a8a8'},
  ], at:[10,535]
  formatted_text_box [ 
    {text:' Responsable: ', size:10, font:'Calibri', style:[:normal]},
    {text:' HÉCTOR ARAGÓN AGÚNDEZ ', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
    {text:' Folio de solicitud: ', size:10, font:'Calibri', style:[:normal]},
    {text:' SOL SISTEMAS', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'}
  ], at:[10,520]
  formatted_text_box [ 
    {text:'Dirección: ', size:10, font:'Calibri'},
    {text:'Palacio Municipal, XIi Ayuntamiento de Los Cabos Blvar. Mijares esq. e/ Avee Manuel Doblado', size:10, font:'Calibri', color:'b0a8a8'}
  ], at:[10,505]
  formatted_text_box [ 
    {text:'Telefono(s): ', size:10, font:'Calibri'},
    {text:'(624)144-4725 (624)144-4725 ', size:10, font:'Calibri', color:'b0a8a8'},
    {text:'Telefono(s): ', size:10, font:'Calibri'},
    {text:'(624)144-4725', size:10, font:'Calibri', color:'b0a8a8'}
  ], at:[10,490]

#--------------THIRD BOX DATA--------------------------------------------------------------------------------------------------------
 desc = 'ANTECEDENTES: CONSTANTE ATASCO DE HOJA, RODILLO DE ACCESO DE HOJA DETERIORADO, RUIDO EN LA UNIDAD ADF. MANTENIMINETO Y DIAGNOSTICO EN GENERAL'

  formatted_text_box [ 
    {text:'Descripción del equipo', size:10, font:'Calibri' },
  ], at:[10,467]
  formatted_text_box [ 
    {text:'Marca: ', size:10, font:'Calibri', style:[:normal]},
    {text:' CANON ', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
    {text:' Modelo: ', size:10, font:'Calibri', style:[:normal]},
    {text:' IMAGERUNNER 2525 ', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
    {text:' No. activo: ', size:10, font:'Calibri', style:[:normal]},
    {text:' 034794', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'}
   ], at:[10,452]
   formatted_text_box [ 
    {text:'No. serie: ', size:10, font:'Calibri', style:[:normal]},
    {text:' FRV90485 ', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
    {text:' Tipo: ', size:10, font:'Calibri', style:[:normal]},
    {text:' REPARACION ', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
    {text:' Localidad: ', size:10, font:'Calibri', style:[:normal]},
    {text:' SAN JOSE DEL CABO', size:10, font:'Calibri', style:[:normal], color:'b0a8a8'}
   ], at:[10,437]
   formatted_text_box [ 
    {text:'Descripción del error', size:10, font:'Calibri' },
  ], at:[10,422]
  formatted_text_box [ 
    {text:"#{desc}", size:10, font:'Calibri', style:[:bold], color:'b0a8a8' },
  ], at:[10,407]

  # formatted_text_box [ 
  #   {text:'Dirección: ', size:10, font:'Calibri'},
  #   {text:'Palacio Municipal, XIi Ayuntamiento de Los Cabos Blvar. Mijares esq. e/ Avee Manuel Doblado', size:10, font:'Calibri', color:'b0a8a8'}
  # ], at:[10,505]
  # formatted_text_box [ 
  #   {text:'Telefono(s): ', size:10, font:'Calibri'},
  #   {text:'(624)144-4725 (624)144-4725 ', size:10, font:'Calibri', color:'b0a8a8'},
  #   {text:'Telefono(s): ', size:10, font:'Calibri'},
  #   {text:'(624)144-4725', size:10, font:'Calibri', color:'b0a8a8'}
  # ], at:[10,490]

#--------------FOURTH BOX DATA-------------------------------------------------------------------------------------------------------
  formatted_text_box [ 
    {text:'Materiales y/o piezas: ', size:10, font:'Calibri' },
  ], at:[10,360]
  formatted_text_box [ 
    {text:'Hora entrada: ', size:10, font:'Calibri' },
  ], at:[10,311]
  formatted_text_box [ 
    {text:'Fecha visita: ', size:10, font:'Calibri' },
  ], at:[200,311]
  formatted_text_box [ 
    {text:'Hora salida: ', size:10, font:'Calibri' },
  ], at:[420,311]

#--------------FIFTH BOX DATA--------------------------------------------------------------------------------------------------------
  formatted_text_box [ 
    {text:'Observaciones: ', size:10, font:'Calibri' },
  ], at:[10,289]

#--------------SELECT DATA-----------------------------------------------------------------------------------------------------------
  formatted_text_box [
      {:text => 'Esta conforme con la atencion que proporciono la empresa al dar el servicio a el equipo especificado. Califique el servicio : ' , 
        size:8, style:[:normal], font:'Calibri', color:'000000' },
    ], at:[10,230]

  formatted_text_box [
    {:text => 'BUENO                              REGULAR                                MALO' , 
      size:8, style:[:normal], font:'Calibri', color:'000000' },
  ], at:[45,212]

  formatted_text_box [ {:text => 'FIRMA AUTORIZACION',  size:8, style:[:normal], font:'Calibri', color:'000000' }, ], at:[15,145]
  formatted_text_box [ {:text => 'FIRMA SOLICITANTE',  size:8, style:[:normal], font:'Calibri', color:'000000' },  ], at:[245,145]
  formatted_text_box [ {:text => 'FIRMA PROVEEDOR',  size:8, style:[:normal], font:'Calibri', color:'000000' }, ], at:[470,145]

#--------------OPTIONS---------------------------------------------------------------------------------------------------------------
  stroke_color '9f9a9a'
  fill_color 'cfd0cb'
  #stroke_color '948b8b'      
  rectangle [30,215], 10,10
  fill_and_stroke
  rectangle [107,215], 10,10
  fill_and_stroke
  rectangle [195,215], 10,10
  fill_and_stroke

#--------------SIGNS N LINE----------------------------------------------------------------------------------------------------------
  stroke_color '9f9a9a'
  fill_color 'cecece'
  rectangle [5,190], 100,40
  fill_and_stroke
  rectangle [225,190], 100,40
  fill_and_stroke
  rectangle [455,190], 100,40
  fill_and_stroke
  
  stroke_color '138CBA'
  self.line_width = 4       
  stroke do
    horizontal_line 7, 555, :at => 110
  end

#--------------FOOT STINK------------------------------------------------------------------------------------------------------------
  
  bounding_box([7, 103], :width => 125, :height => 45) do
    font('Calibri', size:10, color:'b8b8b8') do
      text 'Prolongación Manuel doblado'
      text 'Plaza Centenario local 5 y 6'
      text 'Col. Centro, San José del Cabo'
    end
  end
  bounding_box([405, 103], :width => 150, :height => 45) do
    font('Calibri', size:10, color:'b8b8b8') do
      text 'Tel. 624-146-7600 ext 127', align: :right
      text 'email: sistemas@loscabos.gob.mx', align: :right
      text 'www.loscabos.gob.mx', align: :right
    end
  end
end

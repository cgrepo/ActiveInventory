class ServiceRequestPdf < Prawn::Document
  def initialize(service_request)
    super() # ojo sin los parentesis marca un error loco !!!!
    #-----------DATA-PARSING-------------------------------------------------------------------------------------------------------------
	    @service_request = service_request
	    data = Hash.new
	    
	    if @service_request.Priority == 'ALTA' 
	    	pri = 'URGENTE-ATENDER LA SIGUIENTE SOLICITUD DE MANERA INMEDIATA!   '
	    else
	    	pri = 'FAVOR DE ATENDER LA SIGUIENTE SOLICITUD.                                                              '
	    end
	    

	   	if @service_request.Copier
	   		checkout(1,data)
	   	elsif @service_request.Printer
	   		checkout(2,data)
	   	elsif @service_request.Screen
	   		checkout(3,data)
	   	elsif @service_request.Telephone
	   		checkout(4,data)
	   	elsif @service_request.Power
	   		checkout(5,data)
	   	end
		#-----------START--------------------------------------------------------------------------------------------------------------------
			Prawn::Font::AFM.hide_m17n_warning = true
			imgshield = "#{Rails.root.to_s}/app/assets/images/logodire.png"	
			image imgshield, at: [26,710], fit:[82,82]
			
			imgdir = "#{Rails.root.to_s}/app/assets/images/direccion.png"
			image imgdir, at: [215,710], fit:[302,302]
			#font_families.update("#{Rails.root.to_s}/app/assets/fonts/Calibri" => { normal:'Calibri.ttf'  }) not working on rails this way
			#font_families.update("#{Rails.root.to_s}/app/assets/fonts/Verdana" => { normal:'Verdana.ttf'  }) not working on rails this way
			font_families["Verdana"] = { normal:{file:"#{Rails.root.to_s}/app/assets/fonts/Verdana.ttf", font:"Verdana"} }
			font_families["Calibri"] = { normal:{file:"#{Rails.root.to_s}/app/assets/fonts/Calibri.ttf", font:"Calibri"} }

			formatted_text_box [
			  {:text => "SOLICITUD DE SERVICIO" , size:24, style:[:bold], font:"Verdana", color:'747373'  }, ], at:[130,650], width:420, height:300

			formatted_text_box [
			  {:text => "PRIORIDAD: " , size:11, style:[:normal], font:'Calibri' },
			  {:text => "#{pri}" , size:8, style:[:normal],
			   	font:'Calibri', color:'f90101' },
			  {:text => " FECHA: " , size:9, style:[:normal], font:'Verdana', color:'b0a8a8' },
			  {:text => "#{Time.now.strftime("%m/%d/%Y")} " , size:9, style:[:bold], font:'Helvetica' },
			  {:text => " FOLIO: " , size:9, style:[:normal], font:'Calibri', color:'b0a8a8' },
			  {:text => " #{@service_request.idFolio}" , size:9, style:[:bold], font:'Verdana' }
			], at:[25,620]

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
  	#-----------FIRST BOX DATA-----------------------------------------------------------------------------------------------------------
		  formatted_text_box [
		    {text:'Nombre empresa: ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{@service_request.Provider.name} ", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'}
		  ], at:[10,590]
		  formatted_text_box [
		    {text:' Dirección: ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{@service_request.Provider.address}", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'}
		  ], at:[10,574]
		  formatted_text_box [
		    {text:' Telefono(s): ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{@service_request.Provider.telephone} ", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
		    {text:' RFC: ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{@service_request.Provider.rfc} ", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
		    {text:' Email: ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{@service_request.Provider.email} ", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'}
		  ], at:[10,558]
		#-----------SECOND BOX DATA----------------------------------------------------------------------------------------------------------
		  formatted_text_box [ 
		  	{text:'Dependencia: ', size:10, font:'Calibri' },
		    {text:" #{@service_request.Dependency.name} ", size:10, font:'Calibri', color:'b0a8a8'},
		  ], at:[10,535]
		  formatted_text_box [ 
		    {text:' Responsable: ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{@service_request.Dependency.responsable} ", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
		    {text:' Folio de solicitud: ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{@service_request.DocumentRequest}", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'}
		  ], at:[10,520]
		  formatted_text_box [ 
		    {text:'Dirección: ', size:10, font:'Calibri'},
		    {text:" #{@service_request.Dependency.address} ", size:10, font:'Calibri', color:'b0a8a8'}
		  ], at:[10,505]
		  formatted_text_box [ 
		    {text:'Telefono(s): ', size:10, font:'Calibri'},
		    {text:" #{@service_request.Dependency.telephone} ", size:10, font:'Calibri', color:'b0a8a8'},
		    {text:'Responsable email: ', size:10, font:'Calibri'},
		    {text:" #{@service_request.Dependency.responsable_email} ", size:10, font:'Calibri', color:'b0a8a8'}
		  ], at:[10,490]
		#-----------THIRD BOX DATA-----------------------------------------------------------------------------------------------------------
		  
		  formatted_text_box [ {text:'Descripción del equipo', size:10, font:'Calibri' }, ], at:[10,467]
		  formatted_text_box [ 
		    {text:'Marca: ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{data[:brand]}    ", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
		    {text:' Modelo: ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{data[:model]}    ", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
		    {text:' No. activo: ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{data[:inventary]}      ", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'}
		   ], at:[10,452]
		   formatted_text_box [ 
		    {text:'No. serie: ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{data[:serie]}      ", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
		    {text:' Tipo: ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{@service_request.kind}       ", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
		    {text:' Localidad: ', size:10, font:'Calibri', style:[:normal]},
		    {text:" #{@service_request.Delegation.name} ", size:10, font:'Calibri', style:[:normal], color:'b0a8a8'},
		    ], at:[10,437]

		    if @service_request.Copier || @service_request.Printer
		    	formatted_text_box [ {text:' Medidor de Impresion:', size:10, font:'Calibri', style:[:normal]}	], at:[400,437]	
		    end
		   
		   formatted_text_box [ 
		    {text:'Descripción del error', size:10, font:'Calibri' },
		  ], at:[10,422]
		  formatted_text_box [ 
		    {text:"#{@service_request.itDiagnosis}", size:10, font:'Calibri', style:[:bold], color:'b0a8a8' },
		  ], at:[10,407]
		#-----------FOURTH BOX DATA----------------------------------------------------------------------------------------------------------
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
		#-----------FIFTH BOX DATA-----------------------------------------------------------------------------------------------------------
		  formatted_text_box [ 
		    {text:'Observaciones: ', size:10, font:'Calibri' },
		  ], at:[10,289]
		#-----------SELECT DATA--------------------------------------------------------------------------------------------------------------
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
		#-----------OPTIONS------------------------------------------------------------------------------------------------------------------
		  stroke_color '9f9a9a'
		  fill_color 'cfd0cb'
		  #stroke_color '948b8b'      
		  rectangle [30,215], 10,10
		  fill_and_stroke
		  rectangle [107,215], 10,10
		  fill_and_stroke
		  rectangle [195,215], 10,10
		  fill_and_stroke
		#-----------SIGNS N LINE-------------------------------------------------------------------------------------------------------------
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
		#-----------FOOT STINK---------------------------------------------------------------------------------------------------------------
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

  private
  def checkout(equipment,data)
  	
  	case equipment
  		when 1
  			data[:brand] = @service_request.Copier.brand? ? @service_request.Copier.brand : 'SIN MARCA'
	  		data[:brand] = @service_request.Copier.brand? ? @service_request.Copier.brand : 'SIN MARCA'
	  		data[:model] = @service_request.Copier.model? ? @service_request.Copier.model : 'SIN MODELO'
	  		data[:inventary] = @service_request.Copier.ninventary? ? @service_request.Copier.ninventary : 'SIN NUMERO'
	  		data[:serie] = @service_request.Copier.nserie? ? @service_request.Copier.nserie : 'SIN SERIE'
  		when 2
  			data[:brand] = @service_request.Printer.brand? ? @service_request.Printer.brand : 'SIN MARCA'
	  		data[:brand] = @service_request.Printer.brand? ? @service_request.Printer.brand : 'SIN MARCA'
	  		data[:model] = @service_request.Printer.model? ? @service_request.Printer.model : 'SIN MODELO'
	  		data[:inventary] = @service_request.Printer.ninventary? ? @service_request.Printer.ninventary : 'SIN NUMERO'
	  		data[:serie] = @service_request.Printer.nserie? ? @service_request.Printer.nserie : 'SIN SERIE'
  		when 3
  			data[:brand] = @service_request.Screen.brand? ? @service_request.Screen.brand : 'SIN MARCA'
	  		data[:brand] = @service_request.Screen.brand? ? @service_request.Screen.brand : 'SIN MARCA'
	  		data[:model] = @service_request.Screen.model? ? @service_request.Screen.model : 'SIN MODELO'
	  		data[:inventary] = @service_request.Screen.ninventary? ? @service_request.Screen.ninventary : 'SIN NUMERO'
	  		data[:serie] = @service_request.Screen.nserie? ? @service_request.Screen.nserie : 'SIN SERIE'
  		when 4
  			data[:brand] = @service_request.Telephone.brand? ? @service_request.Telephone.brand : 'SIN MARCA'
	  		data[:brand] = @service_request.Telephone.brand? ? @service_request.Telephone.brand : 'SIN MARCA'
	  		data[:model] = @service_request.Telephone.model? ? @service_request.Telephone.model : 'SIN MODELO'
	  		data[:inventary] = @service_request.Telephone.ninventary? ? @service_request.Telephone.ninventary : 'SIN NUMERO'
	  		data[:serie] = @service_request.Telephone.nserie? ? @service_request.Telephone.nserie : 'SIN SERIE'
  		when 5
  			data[:brand] = @service_request.Power.brand? ? @service_request.Power.brand : 'SIN MARCA'
	  		data[:brand] = @service_request.Power.brand? ? @service_request.Power.brand : 'SIN MARCA'
	  		data[:model] = @service_request.Power.model? ? @service_request.Power.model : 'SIN MODELO'
	  		data[:inventary] = @service_request.Power.ninventary? ? @service_request.Power.ninventary : 'SIN NUMERO'
	  		data[:serie] = @service_request.Power.nserie? ? @service_request.Power.nserie : 'SIN SERIE'
  	end
  end
end

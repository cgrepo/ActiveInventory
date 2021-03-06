class BrokenEquipment < Prawn::Document
    require "open-uri"
    def initialize(brokens)
        super()
        stroke_axis
        @brokens = brokens
        Prawn::Font::AFM.hide_m17n_warning = true
        #printRepo
        headers
        printRepo2
    end
    
    def headers
        imgshield="#{Rails.root.to_s}/app/assets/images/logodire.png"	
		image imgshield, at: [10,710], fit:[82,82]
		font_families["Verdana"] = { normal:{file:"#{Rails.root.to_s}/app/assets/fonts/Verdana.ttf", font:"Verdana"} }
		font_families["Calibri"] = { normal:{file:"#{Rails.root.to_s}/app/assets/fonts/Calibri.ttf", font:"Calibri"} }
		formatted_text_box [
			  {:text => "COORDINACION MUNICIPAL DE INFORMATICA Y SISTEMAS" , size:14, style:[:bold], font:"Verdana", color:'000000'  }, ], at:[96,690], width:500, height:100
		formatted_text_box [ 
			  {:text => "EQUIPO PARA BAJA" , size:22, style:[:bold], font:"Verdana", color:'747373'  }, ], at:[180,660], width:420, height:300
    end
    
    def printRepo2
        formatted_text_box [
			  {:text => "NO OFICIAL" , size:10, style:[:bold], font:"Verdana", color:'000000'  }, 
			  ], at:[20,600], width:70, height:20
        formatted_text_box [
			  {:text => "NO SERIE" , size:10, style:[:bold], font:"Verdana", color:'000000'  }, 
			  ], at:[100,600], width:50, height:20
	    formatted_text_box [
			  {:text => "DEPENDENCIA" , size:10, style:[:bold], font:"Verdana", color:'000000'  }, 
			  ], at:[175,600], width:80, height:20
	    formatted_text_box [
			  {:text => "DESCRIPCION" , size:10, style:[:bold], font:"Verdana", color:'000000'  }, 
			  ], at:[345,600], width:80, height:20
		formatted_text_box [
			  {:text => "MODELO" , size:10, style:[:bold], font:"Verdana", color:'000000'  }, 
			  ], at:[440,600], width:60, height:20
		
		rowData = 585
	#	rowImg  = 570
        @brokens.each do |broken|
            eqInfo = getEquipmentData(broken)
            formatted_text_box [
    			  {:text => "011742" , size:8, style:[:bold], font:"Verdana", color:'000000'  }, 
    			  ], at:[26,rowData], width:40, height:20
    	    formatted_text_box [
    			  {:text => eqInfo[1] , size:8, style:[:bold], font:"Verdana", color:'000000'  }, 
    			  ], at:[100,rowData], width:70, height:20
    	    formatted_text_box [
    			  {:text => 'COOR. DE INFORMATICA Y SISTEMAS', size:8, style:[:bold], font:"Verdana", color:'000000'  }, 
    			  ], at:[175,rowData], width:180, height:20
    		formatted_text_box [
    			  {:text => 'REGULADOR/UPS', size:8, style:[:bold], font:"Verdana", color:'000000'  }, 
    			  ], at:[345,rowData], width:150, height:20
    		formatted_text_box [
    			  {:text => "MXD60801WG332dss23" , size:8, style:[:bold], font:"Verdana", color:'000000'  }, 
    			  ], at:[440,rowData], width:150, height:20
    		rowData = rowData - 20
    		image open(broken.picOf), at: [50,rowData], fit:[82,82]
    		image open(broken.picSerie), at: [210,rowData], fit:[82,82]
    		image open(broken.pic), at: [400,rowData], fit:[95,95]
    		rowData = rowData - 100
        end
    end
    
    def printRepo
        move_down 110
        data = [['No OFICIAL','No SERIE','DEPENDENCIA','DESCRIPCION','MODELO']]
        @brokens.each do |broken|
            #byebug
            eqInfo = getEquipmentData(broken)
            if broken.picOf.path
                imageNoOficial = broken.picOf.path
            else
                imageNoOficial = "#{Rails.root.to_s}/app/assets/images/blocked.png"
            end
            if broken.picSerie.path
                imageNoSerie =   broken.picSerie.path
            else
                imageNoSerie = "#{Rails.root.to_s}/app/assets/images/blocked.png"
            end
            if broken.pic.path
                imageFull = broken.pic.path
            else
                imageFull = "#{Rails.root.to_s}/app/assets/images/blocked.png"
            end
            #byebug
            #image = open("http://bobsriverside.com/uploads/marvelous-anime-girl-black-hair-blue-eyes-braids-choker-dress-horns-long-picture-of-woman-with-ideas-and-style_TFAST_2790.jpg")
            #imageNoSerie = image
            data += [
                        [eqInfo[0],eqInfo[1],broken.Dependency.name,eqInfo[2],eqInfo[3]],
                        [{:image => imageNoOficial, :fit => [110,120]},{:image => imageNoSerie, :fit => [150,170]},{:image => imageFull, :fit => [130,140]},"",""]
                    ]
            #break
        end
        table( data,header:true, :position=> :center,:cell_style=>{size:7, :padding=>[64,0,0,90]}) do
                cells.padding = 12
                #cells.borders = [:left, :right]
                cells.borders = []
                row(0).borders = [:bottom,:top]
                row(0).border_width = 0.5
                row(0).font_style = :bold
                row(0).background_color = 'f0f0f0'
        end
    end
    
    private
    
    def getEquipmentData(brokenEquipment)
        #byebug
        case brokenEquipment.gender
            when 'COMP'
                pc = Computer.find(brokenEquipment.idEquipment)
                return pc.ninventary,pc.nserie,'COMPUTADORA',pc.model
            when 'PRINT'
                printer = Printer.find(brokenEquipment.idEquipment)
                return printer.ninventary,printer.nserie,'IMPRESORA',printer.model
            when 'POW'
                ups = Power.find(brokenEquipment.idEquipment)
                return ups.ninventary,ups.nserie,'REGULADOR/UPS',ups.model
            when 'COPY'
                copier = Copier.find(brokenEquipment.idEquipment)
                return copier.ninventary,copier.nserie,'COPIADORA',copier.model
            when 'SCREEN'
                screen = Screen.find(brokenEquipment.idEquipment)
                return screen.ninventary,screen.nserie,'MONITOR',screen.model
        end
    end
end
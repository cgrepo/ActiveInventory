#------KILLERS---------------------------------------------
	# User.destroy_all
	# Delegation.destroy_all
	# Dependency.destroy_all
	# Processor.destroy_all
	# Network.destroy_all
	# Worker.destroy_all
	# ComputerBrand.destroy_all
	# Memo.destroy_all
	# Hardd.destroy_all
	# Osy.destroy_all
	# Officev.destroy_all
	# BrandModel.destroy_all
	# ServiceRequest.destroy_all
	# Copier.destroy_all
	# Printer.destroy_all
	# Provider.destroy_all

#------BIRTHERS---------------------------------------------
 	#---------------USERS-------------------------------------
		# User.create! [
		#  { username: "carlos", password: "th3pr!mag1n" },
		#  { username: "mary", password: "h3ngell" }
		# ]
	#---------------DELEGATIONS-------------------------------
		# Delegation.create! [
		# 	{name:"San Jose del Cabo"},
		# 	{name:"Cabo San Lucas"},
		# 	{name:"Miraflores"},
		# 	{name:"Santiago"},
		# 	{name:"La Rivera"}
		# ]
	#---------------DEPENDENCIES------------------------------
		# line = 'ATENCION CIUDADANA CSL,CATASTRO CSL,COMUNICACION SOCIAL CSL,CONTABILIDAD CSL,CONTRALORIA CSL,DELEGADO CSL,' + 
		# 				'FOMENTO ECONOMICO CSL,INGRESOS CSL,INSPECCION FISCAL CSL,ISABI CSL,JURIDICO CSL,OFICIAL MAYOR CSL,RECAUDACION CSL,' +
		# 				'RECURSOS HUMANOS CSL,SECRETARIA GENERAL CSL,PARTICIPACION CIUDADANA CSL,OFICIAL MAYOR ALMACEN CSL,' +
		# 				'INSTITUTO DE LA MUJER CSL,ZOFEMAT CSL,ECOLOGIA CSL,PROTECCION A LA TORTUGA CSL,EDUCACION CSL,CASA DE CULTURA CSL,' +
		# 				'INST. DE LA JUVENTUD CSL,PODER JOVEN CSL,OBRAS PUBLICAS CSL,DESARROLLO URBANO CSL,IMAGEN URBANA CSL,' +
		# 				'ASENTAMIENTOS HUMANOS CSL,DEPORTE CSL,TRANSITO CSL ADMINISTRACION,TRANSITO CSL COMANDANTE OPERACIONAL,' +
		# 				'TRANSITO CSL INFRACCIONES,TRANSITO CSL CAJAS,TRANSITO CSL ARCHIVO,TRANSITO CSL TRANSPORTE,TRANSITO CSL BARANDILLA,' +
		# 				'TRANSITO CSL JUEZ CALIFICADOR,TRANSITO CSL SECTOR 1,TRANSITO CSL SECTOR 2,TRANSITO CSL SECTOR 3,TRANSITO CSL SECTOR 4,' +
		# 				'TRANSITO CSL POLICIA COMERCIAL,TRANSITO CSL POLICIA TURISTICA,TRANSITO CSL PART. CIUDADANA Y VINCULACION SOC.,' +
		# 				'TRANSITO CSL VIALIDAD Y PERITAJE,LICENCIAS DE CONSTRUCCION.,PROTECCION CIVIL CSL, DIF CSL, VISITADURIA ITERNA CSL'
		# line.split(',').each do | nombre|
		# 	dep = Dependency.create! name:nombre
		# 	dep.Delegation = Delegation.find_by(name:"Cabo San Lucas")
		# 	dep.save!
		# end
		# 	csl = Delegation.find_by(name:'Cabo San Lucas')
		# 	sjc = Delegation.find_by(name:'San Jose del Cabo')
		# 	Dependency.create! [

		# 		{ name:'ADMINISTRACION DE SEG. PUB. Y TRANS. CSL CANGREJOS',	address:'KM. 3.5 CARRETERA A TODOS SANTOS, COL CANGREJOS',	telephone:'14-6-76-00 EXT.1580 624-35-5-95-65',	responsable:'LIC. ROSARIO MARQUEZ MARQUEZ',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'ALMACEN GENERAL MUNICIPAL',	address:'ALTA TENSION S/N COL. ZACATAL, ANTES BODEGON FRUT Y VERDURAS.',	telephone:'10-5-20-51',	responsable:'MIGUEL ANGEL RAMOS PADILLA',	responsable_email:'miguelramos_07@hotmail.com',	Delegation:sjc },	
		# 		{ name:'CONTRALORIA MUNICIPAL',	address:'Palacio Municipal, XIi Ayuntamiento de Los Cabos Blvar. Mijares esq. e/ Avee Manuel Doblado',	telephone:'14-6-76-00 EXT. 1120',	responsable:'MARIA ELENA CAMACHO LOPEZ',	responsable_email:'nenacamacho08@hotmail.com',	Delegation:sjc },	
		# 		{ name:'COOR. ASENTAMIENTOS HUMANOS CSL',	address:'BLVR. CONSTITUYENTES FRENTE A GIMNASIO AUDITORIO',	telephone:'1422863 6241574880',	responsable:'CARLOS MANUEL CARENZO GROSS',	responsable_email:'ccarenzo@msn.com',	Delegation:csl },	
		# 		{ name:'COOR. ATENCION CIUDADANA CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. CASA DE LA CULTURA CSL',	address:'CALLE NIÑOS HEROES E/ MATAMOROS Y MELCHOR OCAMPO',	telephone:'1430749 6241799610',	responsable:'LIC. LUIS ANGEL ORTIZ CATALAN',	responsable_email:'luisangeloc1@gmail.com',	Delegation:csl },	
		# 		{ name:'COOR. CATASTRO CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. COMUNICACION SOCIAL CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. CONTABILIDAD CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. CONTRALORIA CSL',	address:'AVE. HIDALGO E/ BLVR. CONSTITUYENTES, COL. EJIDAL EDIFICIO DELEGACIONAL',	telephone:'14-6-76-00 EXT.1419',	responsable:'LIC. CIRO JIMENEZ BLAS',	responsable_email:'cjbjimenitoz@hotmail.com',	Delegation:csl },	
		# 		{ name:'COOR. DELEGADO CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. DEPORTE CSL',	address:'BLVR. CONTITUY. INT. GIMNASIO AUDITORIO MPAL. LEONARDO GAST.',	telephone:'14-33938 6241179309',	responsable:'PROF. ENRIQUE JOSE MARTINEZ ZUMAYA',	responsable_email:'deportiva_dimar@hotmail.com',	Delegation:csl },	
		# 		{ name:'COOR. DESARROLLO URBANO CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. ECOLOGIA CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. EDUCACION CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. FOMENTO ECONOMICO CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. IMAGEN URBANA CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. INGRESOS CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. INSPECCION FISCAL CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. INST. DE LA JUVENTUD CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. INSTITUTO DE LA MUJER CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. ISABI CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. JURIDICO CSL',	address:'AVE. HIDALGO E/ BLVR. CONSTITUYENTES, COL. EJIDAL EDIFICIO DELEGACIONAL',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. OBRAS PUBLICAS CSL',	address:'CALLE NIÑOS HEROES E/ MATAMOROS Y MELCHOR OCAMPO',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. OFICIALIA MAYOR CSL',	address:'CALLE NIÑOS HEROES E/ MATAMOROS Y MELCHOR OCAMPO',	telephone:'14-67600 EXT.1421, 1422',	responsable:'C. FRANCISCO TORRES GERALDO',	responsable_email:'oficialiacsl@loscabos.gob.mx',	Delegation:csl },	
		# 		{ name:'COOR. OFICIALIA MAYOR CSL ALMACEN',	address:'',	telephone:'14-34045',	responsable:'C.FRANCISCO TORRES GERALDO',	responsable_email:'oficialiacsl@loscabos.gob.mx',	Delegation:csl },	
		# 		{ name:'COOR. PARTICIPACION CIUDADANA CSL',	address:'',	telephone:'10-50945 6241223237',	responsable:'ERIC RAUL TALAMANTES LIZARRAGA',	responsable_email:'eric70talamantes@hotmail.com',	Delegation:csl },	
		# 		{ name:'COOR. PODER JOVEN CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. PROTECCION A LA TORTUGA CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. PROTECCION CIVIL CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. RECAUDACION CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. RECURSOS HUMANOS CSL',	address:'COL. ARENAL, CALLE EJIDO,ESQ. 5 DE FREBRERO',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. SECRETARIA GENERAL CSL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'COOR. SERVICIOS PUBLICOS CSL',	address:'MESA DE SANTA ANITA K.54.3 CAMINO A LOS NARANJOS PASANDO  EL CERESO',	telephone:'14-32786 14-34728 6241214557',	responsable:'LIC. DENNY MANUEL GUERRERO CRUZ',	responsable_email:'admon.spcsl@hotmail.com',	Delegation:csl },	
		# 		{ name:'COOR. ZOFEMAT CSL',	address:'PALACIO MUNICIPAL, XII AYUNT. DE LOS CABOS  BLVAR. MIJARES ESQ. E/ AVE.  M. DOBLADO',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'DIR. ADM. DE RASTRO T.I.F',	address:'CALLE ZARAGOZA #25, COLONIA CENTRO',	telephone:'624-11-3-75-69',	responsable:'C. ROBERTO DE JESUS PÉREZ OJEDA',	responsable_email:'licrjpo@hotmail.com',	Delegation:sjc },	
		# 		{ name:'DIR. DE ADMINISTRACIÓN',	address:'CARR. TRANSP. KM 36.4, PLAZA ARAMBURO, LOCAL 11 Y 12, COL.SANTA ROSA',	telephone:'14-6-76-00 EXT. 1098 6241214615',	responsable:'LIC. JESUS HUMBERTO MARQUEZ ALVAREZ',	responsable_email:'humbertomar_quez@yahoo.com.mx',	Delegation:sjc },	
		# 		{ name:'DIR. GRAL. DE DESARROLLO URBANO',	address:'PLAZA CENTENARIO, PROLOG. MANUEL DOBLADO CENTRO E/ BLVAR. MIJARES Y BLVR. CENTERNARIO.',	telephone:'14-2-11-11',	responsable:'ING. ÁLVARO JAVIER RAMÍREZ GÁLVEZ',	responsable_email:'alvaroramirezcadro@gmail.com',	Delegation:sjc },	
		# 		{ name:'DIR. GRAL. DE FOMENTO ECONOMICO Y TURISMO',	address:'BV. ANTONIO MIJARES E/ BENITO JUAREZ Y VALERIO GONZALEZ (A UN COSTADO DE LOS BOMBEROS)',	telephone:'13-0-78-98 6241770772',	responsable:'ING. VICTOR MANUEL CARBAJAL AYALA',	responsable_email:'"elvico2007@hotmail.com',	Delegation:sjc },	
		# 		{ name:'DIR. MPAL. ASUNTOS JURIDICOS, LEGIS. Y REGLAMT.',	address:'PALACIO MUNICIPAL, XII AYUNTAMIENTO DE LOS CABOS  BLVAR. MIJARES ESQ. E/ AVE.  MANUEL DOBLADO',	telephone:'13-0-75-82',	responsable:'LIC. CESAR GERONIMO CHAVEZ RODRIGUEZ',	responsable_email:',',	Delegation:sjc },	
		# 		{ name:'DIR. MPAL. CATASTRO',	address:'PALACIO MUNICIPAL, XII AYUNT. DE LOS CABOS  BLVAR. MIJARES ESQ. E/ AVE.  M. DOBLADO',	telephone:'1424020',	responsable:'LIC. EDUARDO RIGOBERTO CUERVO GONZÁLEZ',	responsable_email:'victorcarbajal@loscabos.gob.mx"',	Delegation:sjc },	
		# 		{ name:'DIR. MPAL. DE ATENCON CIUDADANA',	address:'"PALACION MPAL. XII. AYUNT. DE LOS CABOS, BLV. MIJARES ESQ. E/ M',	telephone:'14-6-76-00 EXT.1140',	responsable:'MICHELLE NATHALIE VALDEZ QUIROZ',	responsable_email:'"cesargeronimochavez@hotmail.com',	Delegation:sjc },	
		# 		{ name:'DIR. MPAL. DE CONTABILIDAD',	address:'PALACIO MUNICIPAL, XII AYUNTAMIENTO DE LOS CABOS  BLVAR. MIJARES ESQ. E/ AVE.  MANUEL DOBLADO',	telephone:'14-6-76-00 EXT.1260 6241223345',	responsable:'LUZ MARIA OTAÑEZ BARRON',	responsable_email:'cesargeronimochavez@hotmail.com"',	Delegation:sjc },	
		# 		{ name:'DIR. MPAL. DE EGRESOS',	address:'PALACIO MUNICIPAL, XII AYUNTAMIENTO DE LOS CABOS  BLVAR. MIJARES ESQ. E/ AVE.  MANUEL DOBLADO"',	telephone:'14-6-76-00 EXT. 1024',	responsable:'PATRICIO GARCIA GERALDO',	responsable_email:'rigobertocuervo@hotmail.com',	Delegation:sjc },	
		# 		{ name:'DIR. MPAL. DE RECURSOS HUMANOS',	address:'Palacio Municipal, XIi Ayuntamiento de Los Cabos Blvar. Mijares esq. e/ Avee Manuel Doblado',	telephone:'14-6-76-00 EXT. 1104, 1105',	responsable:'C. JULIO CÉSAR CASTRO PÉREZ',	responsable_email:'Michelle_n88@hotmail.com',	Delegation:sjc },	
		# 		{ name:'DIR. MPAL. INVER. PROGRAMAS FED. Y ESTATALES',	address:'EDIF. AÑUITI,2DO. PISO  LOCAL #17,  CARR. TRANSP.  COL. GUAYMITAS, SAN JOSE DEL CABO',	telephone:'14-6-76-00 EXT. 1508 (624)3589018 (pedro)',	responsable:'LIC. JOSE ALBERTO ROBLES SAHAGUN',	responsable_email:'luznorrab@live.com.mx',	Delegation:sjc },	
		# 		{ name:'LICENCIAS DE CONSTRUCCION.',	address:'',	telephone:'',	responsable:'',	responsable_email:'quelele@yahoo.com.mx',	Delegation:sjc },	
		# 		{ name:'OFICIALIA MAYOR MUNICIPAL',	address:'PALACIO MUNICIPAL, XII AYUNTAMIENTO DE LOS CABOS  BLVAR. MIJARES ESQ. E/ AVE.  MANUEL DOBLADO',	telephone:'14-6-76-00 EXT. 1090 612-14-0-48-88',	responsable:'LIC. JOSÉ JULIO BELMAR PIMENTEL AMADOR',	responsable_email:'jcastroperez@yahoo.com.mx',	Delegation:sjc },	
		# 		{ name:'SECRETARIA PARTICULA MUNICIPAL',	address:'Palacio Municipal, XIi Ayuntamiento de Los Cabos Blvar. Mijares esq. e/ Avee Manuel Doblado',	telephone:'14-6-76-00 EXT. 1003',	responsable:' HÉCTOR ARAGÓN AGÚNDEZ',	responsable_email:'pedroglez5@live.com.mx',	Delegation:sjc },	
		# 		{ name:'SINDICATURA MUNICIPAL',	address:'PALACIO MUNICIPAL, XII AYUNT. DE LOS CABOS  BLVAR. MIJARES ESQ. E/ AVE.  M. DOBLADO',	telephone:'14-2-57-01',	responsable:'LIC. SUSANA DEL CARMEN ZATARAIN GARCIA',	responsable_email:'',	Delegation:sjc },	
		# 		{ name:'TRANSITO CSL ADMINISTRACION',	address:'',	telephone:'',	responsable:'',	responsable_email:'belmarpimentel@hotmail.com',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL ARCHIVO',	address:'',	telephone:'',	responsable:'',	responsable_email:'aragonjr1@msn.com',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL BARANDILLA',	address:'',	telephone:'',	responsable:'',	responsable_email:'sczatarain@gmail.com, elisa8402.j@gmail.com',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL CAJAS',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL COMANDANTE OPERACIONAL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL INFRACCIONES',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL JUEZ CALIFICADOR',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL PART. CIUDADANA Y VINCULACION SOC.',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL POLICIA COMERCIAL',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL POLICIA TURISTICA',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL SECTOR 1',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL SECTOR 2',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL SECTOR 3',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL SECTOR 4',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL TRANSPORTE',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl },	
		# 		{ name:'TRANSITO CSL VIALIDAD Y PERITAJE',	address:'',	telephone:'',	responsable:'',	responsable_email:'',	Delegation:csl }	

		# ]
	#---------------PROCESSORS--------------------------------
		# line = 'AMD(R),Athlon(TM),Dual Core,2.2GHz:AMD(R),Athlon(TM),Dual Core,2.6GHz:AMD(R),Athlon(TM),Dual Core 4450B,2.3GHz:AMD(R),Athlon(TM),II X2 240,2.8GHz:Intel(R),Atom(TM),D525,1.8GHz:Intel(R),Celeron(R),G440,1.6GHz:Intel(R),Celeron(R),J1900,1.9GHz:Intel(R),Celeron(R),J1900,1.9GHz:Intel(R),Core(TM),13-4330,3.5GHz:Intel(R),Core(TM),2 6300,1.8GHz:Intel(R),Core(TM),2 6400,2.1GHz:Intel(R),Core(TM),2 6600,2.4GHz:Intel(R),Core(TM),2 Duo E4600,2.3GHz:Intel(R),Core(TM),2 Duo E6550,2.3GHz:Intel(R),Core(TM),2 Duo T5780,2.0GHz:Intel(R),Core(TM),2 Duo i3,2.9GHz:Intel(R),Core(TM),2 Duo i3-2130,3.4GHz:Intel(R),Core(TM),2 Duo i3-4130,3.4GHz:Intel(R),Core(TM),2 Duo,1.8GHz:Intel(R),Core(TM),2 Duo,2.1GHz:Intel(R),Core(TM),2 Duo,2.3GHz:Intel(R),Core(TM),2 Duo,2.4GHz:Intel(R),Core(TM),2 Duo,1.8GHz:Intel(R),Core(TM),i5-3330,3.0GHz:Intel(R),Core(TM),i3 4150,3.5GHz:Intel(R),Core(TM),i3-2100,3.1GHz:Intel(R),Core(TM),i3-2350M,2.3GHz:Intel(R),Core(TM),i3-2370M,2.4GHz:Intel(R),Core(TM),i3-3220,3.3GHz:Intel(R),Core(TM),i3-4005U,1.7GHz:Intel(R),Core(TM),i3-4150,3.5GHz:Intel(R),Core(TM),i3-4330,3.5GHz:Intel(R),Core(TM),i5-3330,3.0GHz:Intel(R),Core(TM),i5-3330,3.6GHz:Intel(R),Core(TM),i5-4460,3.2GHz:Intel(R),Core(TM),i5-4590,3.3GHz:Intel(R),Pentium(R),4,1.8GHz:Intel(R),Pentium(R),4,2.3GHz:Intel(R),Pentium(R),4,2.4GHz:Intel(R),Pentium(R),4,2.8GHz:Intel(R),Pentium(R),4,2.9GHz:Intel(R),Pentium(R),4,3.0GHz:Intel(R),Pentium(R),4,3.1GHz:Intel(R),Pentium(R),4,3.2GHz:Intel(R),Pentium(R),4,3.4GHz:Intel(R),Pentium(R),4,3.6GHz:Intel(R),Pentium(R),4,2.4GHz:Intel(R),Pentium(R),D,2.8GHz:Intel(R),Pentium(R),D,2.9GHz:Intel(R),Pentium(R),D,3.0GHz:Intel(R),Pentium(R),Dual Core,2.6GHz:Intel(R),Pentium(R),Dual Core,2.8GHz:Intel(R),Pentium(R),Dual E2200 A,2.2GHz:Intel(R),Pentium(R),G630,2.7GHz:Intel(R),Pentium(R),4,3.0GHz:Intel(R),Pentium(R),4,3.2GHz:Intel(R),Xenon(R),E3-1245V3,3.4GHz:Intel(R),Core(TM),i7-4600,2.9Ghz:Intel(R),Celeron(R),N3050,1.8GHz'
		# line.split(':').each do |e|
		# 	p = e.split(',')
		# 	Processor.create! brand:p[0], genus:p[1],  modelp:p[2], speed:p[3]
		# end
	#---------------NETWORKS----------------------------------
		# Network.create! [
		# 	{linktype:'ADSL-MODEM', location:'DIF CSL', iprange:'192.168.1.0/24', ip:'192.168.1.254'},
		# 	{linktype:'ADSL-MODEM', location:'DESARROLLO URBANO CSL', iprange:'10.10.10.0/24', ip:'10.10.10.10'},
		# 	{linktype:'ADSL-MODEM', location:'PROTECCION CIVIL', iprange:'192.168.1.0/24', ip:'192.168.1.254'},
		# 	{linktype:'ADSL-MODEM', location:'ALMACEN-CERRO DEL TIMBRE', iprange:'192.168.1.0/24', ip:'192.168.1.254'},
		# 	{linktype:'ADSL-MODEM', location:'ZOFEMAT-CERRO DEL TIMBRE', iprange:'192.168.1.0/24', ip:'192.168.1.254'},
		# 	{linktype:'ADSL-MODEM', location:'ECOLOGIA-CERRO DEL TIMBRE', iprange:'192.168.1.0/24', ip:'192.168.1.254'},
		# 	{linktype:'ADSL-MODEM', location:'JUVENTUD-CERRO DEL TIMBRE', iprange:'192.168.1.0/24', ip:'192.168.1.254'},
		# 	{linktype:'ADSL-MODEM', location:'SERVICIOS PUBLICOS CSL', iprange:'192.168.1.0/24', ip:'192.168.1.254'},
		# 	{linktype:'ADSL-MODEM', location:'COMANDANCIA CANGREJOS', iprange:'192.168.1.0/24', ip:'192.168.1.254'},
		# 	{linktype:'ADSL-MODEM', location:'BIBLIOTECA LOMAS DEL SOL', iprange:'192.168.1.0/24', ip:'192.168.1.254'},
		# 	{linktype:'ADSL-MODEM', location:'BIBLIOTECA AMELIA WILKES', iprange:'192.168.1.0/24', ip:'192.168.1.254'},
		# 	{linktype:'ADSL-MODEM', location:'CULTURA CSL-CERRO DEL TIMBRE', iprange:'192.168.1.0/24', ip:'192.168.1.254'},
		#   {linktype:'ADSL-MODEM', location:'COMANDANCIA CANGREJOS CSL', iprange:'192.168.1.0/24', ip:'192.168.1.254'},
		# 	{linktype:'ENLACE-WIFI', location:'MODULO REGISTRO CIVIL', iprange:'', ip:''},
		# 	{linktype:'ENLACE-WIFI', location:'MODULO DESARROLLO URBANO', iprange:'', ip:''}
		# ]
	#---------------WORKERS-----------------------------------
		#  Worker.create! [
		#  	{name:'Carlos A. Garcia G.', email:'carlos.garcia@loscabos.gob.mx', profile:'Asistente de la Direccion Mpal. de Sistemas'},
		#  	{name:'Maria J. Ochoa A.', email:'sistemas_csl@loscabos.gob.mx', profile:'Coordinadora de Sistemas en CSL'},
		#  	{name:'Jose A. Casillas E.', email:'carlos.garcia@loscabos.gob.mx', profile:'Asistente de la Direccion Mpal. de Sistemas'},
		# 	{name:'Alan Manriquez', email:'', profile:'Inspector Desarrollo Urbano CSL'},
		# 	{name:'Florencia Olachea Villafaña', email:'dif.enlace.csl@outlook.com', profile:'Recepcion DIF CSL'},
		# 	{name:'Gabriela vernadet herrera salas', email:'', profile:'Abogada Juridico Dif CSL'},
		# 	{name:'Gustavo costich olvera ', email:'gustavoco25@gmail.com', profile:'Abogado Juridico Dif CSL'},
		# 	{name:'Isodel Adara Canett Ojeda', email:'isodel891@hotmail.com', profile:'Coordinadora de Desarrollo Urbano CSL'},
		# 	{name:'Luz Maria Norrab ', email:'luznorrab@live.com.mx', profile:'Directora de Contabilidad'},
		# 	{name:'Maria Isabel Ventura Zavala ', email:'isabelventura78@hotmail.com ', profile:'Asistente de Coordinacion de Imagen Urbana CSL'},
		# 	{name:'Monserrat anahi marron castro ', email:'monse_marron@hotmail.com ', profile:'Abogada Juridico Dif CSL'},
		# 	{name:'Omar Navarro ', email:'omar.navarro@loscabos.gob.mx ', profile:'Contabilidad SJC'},
		# 	{name:'Pablo miranda ', email:'', profile:'Inspector Desarrollo Urbano CSL'},
		#  ]
	#---------------COMPUTERS---------------------------------
		# ComputerBrand.create! [
		# 	{name:'ACER'},
		# 	{name:'ASUS'},
		# 	{name:'CLON'},
		# 	{name:'COMPAQ'},
		# 	{name:'DELL'},
		# 	{name:'HP'},
		# 	{name:'IBM'},
		# 	{name:'LENOVO'},
		# 	{name:'SAMSUNG'},
		# 	{name:'SONY'}	
		# ]
	#---------------MEMORIES----------------------------------
		# Memo.create! [
		# 	{size:'192', msize:'MB'},
		# 	{size:'256', msize:'MB'},
		# 	{size:'512', msize:'MB'},
		# 	{size:'768', msize:'MB'},
		# 	{size:'896', msize:'MB'},
		# 	{size:'1', msize:'GB'},
		# 	{size:'1.2', msize:'GB'},
		# 	{size:'1.5', msize:'GB'},
		# 	{size:'2', msize:'GB'},
		# 	{size:'2.5', msize:'GB'},
		# 	{size:'3', msize:'GB'},
		# 	{size:'3.5', msize:'GB'},
		# 	{size:'4', msize:'GB'},
		# 	{size:'4.5', msize:'GB'},
		# 	{size:'6', msize:'GB'},
		# 	{size:'6.5', msize:'GB'},
		# 	{size:'8', msize:'GB'},
		# 	{size:'8.5', msize:'GB'},
		# 	{size:'12', msize:'GB'},
		# 	{size:'16', msize:'GB'},
		# 	{size:'32', msize:'GB'}
		# ]
	#---------------HDDs--------------------------------------
		# Hardd.create! [
		# 	{size:'40',tsize:'GB'},
		# 	{size:'80',tsize:'GB'},
		# 	{size:'100',tsize:'GB'},
		# 	{size:'120',tsize:'GB'},
		# 	{size:'150',tsize:'GB'},
		# 	{size:'160',tsize:'GB'},
		# 	{size:'200',tsize:'GB'},
		# 	{size:'220',tsize:'GB'},
		# 	{size:'250',tsize:'GB'},
		# 	{size:'280',tsize:'GB'},
		# 	{size:'300',tsize:'GB'},
		# 	{size:'320',tsize:'GB'},
		# 	{size:'350',tsize:'GB'},
		# 	{size:'500',tsize:'GB'},
		# 	{size:'1',tsize:'TB'},
		# 	{size:'1.5',tsize:'TB'},
		# 	{size:'2',tsize:'TB'},
		# 	{size:'2.5',tsize:'TB'},
		# 	{size:'3',tsize:'TB'},
		# 	{size:'3.5',tsize:'TB'}
		# ]
	#---------------OSs---------------------------------------
		# Osy.create! [
		# 	{name:'LINUX UBUNTU',version:'x32'},
		# 	{name:'WINDOWS HOME SP3',version:'x32'},
		# 	{name:'WINDOWS XP SP2',version:'x32'},
		# 	{name:'WINDOWS XP SP3',version:'x32'},
		# 	{name:'WINDOWS XP PRO SP2',version:'x32'},
		# 	{name:'WINDOWS XP PRO SP3',version:'x32'},
		# 	{name:'WINDOWS VISTA',version:'x32'},
		# 	{name:'WINDOWS VISTA BUSSINES',version:'x32'},
		# 	{name:'WINDOWS 7 STARTER',version:'x32'},
		# 	{name:'WINDOWS 7',version:'x32'},
		# 	{name:'WINDOWS 7 PRO',version:'x32'},
		# 	{name:'WINDOWS 8',version:'x32'},
		# 	{name:'WINDOWS 8.1',version:'x32'},
		# 	{name:'WINDOWS 10',version:'x32'},
		# 	{name:'WINDOWS 10 PRO',version:'x32'},
		# 	{name:'WINDOWS SERVER 2003',version:'x32'},
		# 	{name:'WINDOWS SERVER 2008',version:'x32'},
		# 	{name:'WINDOWS SERVER 2012',version:'x32'},
		# 	{name:'WINDOWS MULTIPOINT SERVER 2010',version:'x32'},
		# 	{name:'WINDOWS XP PRO SP2',version:'x64'},
		# 	{name:'WINDOWS XP PRO SP3',version:'x64'},
		# 	{name:'WINDOWS VISTA',version:'x64'},
		# 	{name:'WINDOWS VISTA BUSSINES',version:'x64'},
		# 	{name:'WINDOWS 7 STARTER',version:'x64'},
		# 	{name:'WINDOWS 7',version:'x64'},
		# 	{name:'WINDOWS 7 PRO',version:'x64'},
		# 	{name:'WINDOWS 8',version:'x64'},
		# 	{name:'WINDOWS 8.1',version:'x64'},
		# 	{name:'WINDOWS 10',version:'x64'},
		# 	{name:'WINDOWS 10 PRO',version:'x64'},
		# 	{name:'WINDOWS SERVER 2003',version:'x64'},
		# 	{name:'WINDOWS SERVER 2008',version:'x64'},
		# 	{name:'WINDOWS SERVER 2012',version:'x64'},
		# 	{name:'WINDOWS MULTIPOINT SERVER 2010',version:'x64'}
		# ]
  #---------------OFFICEs-----------------------------------
		# Officev.create! [
		# 	{name:'OFFICE 2000 Standar'},
		# 	{name:'OFFICE 2000 Profesional'},
		# 	{name:'OFFICE XP Standar'},
		# 	{name:'OFFICE XP Profesional'},
		# 	{name:'OFFICE XP Prof. edicion Esp'},
		# 	{name:'OFFICE 2003 Basic'},
		# 	{name:'OFFICE 2003 Student'},
		# 	{name:'OFFICE 2003 Small B'},
		# 	{name:'OFFICE 2003 Prof. Edit'},
		# 	{name:'OFFICE 2003 Enterprice Edic.'},
		# 	{name:'OFFICE 2007 Home Basic'},
		# 	{name:'OFFICE 2007 Home and Std'},
		# 	{name:'OFFICE 2007 Standard'},
		# 	{name:'OFFICE 2007 Small B'},
		# 	{name:'OFFICE 2007 Prof.'},
		# 	{name:'OFFICE 2007 Prof. Plus.'},
		# 	{name:'OFFICE 2007 Enterprise'},
		# 	{name:'OFFICE 2007 Ultimate.'},
		# 	{name:'OFFICE 2010-2013-2016 Start'},
		# 	{name:'OFFICE 2010-2013-2016 Online'},
		# 	{name:'OFFICE 2010-2013-2016 Home and st.'},
		# 	{name:'OFFICE 2010-2013-2016 Home and Business'},
		# 	{name:'OFFICE 2010-2013-2016 Small B.'},
		# 	{name:'OFFICE 2010-2013-2016 Standar'},
		# 	{name:'OFFICE 2010-2013-2016 Profesional'},
		# 	{name:'OFFICE 2010-2013-2016 Prof. Plus.'},
		# 	{name:'OFFICE 365'}
		# ]
	#---------------BRANDsMODELs------------------------------
		# BrandModel.create! [
		# 	{ description:'COMPUTADORA', brandx:'ACER', modelx:''},
		# 	{ description:'COMPUTADORA',brandx:'ASUS', modelx:''},
		# 	{ description:'COMPUTADORA',brandx:'CLON', modelx:''},
		# 	{ description:'COMPUTADORA',brandx:'COMPAQ', modelx:''},
		# 	{ description:'COMPUTADORA',brandx:'DELL', modelx:''},
		# 	{ description:'COMPUTADORA',brandx:'HP', modelx:''},
		# 	{ description:'COMPUTADORA',brandx:'IBM', modelx:''},
		# 	{ description:'COMPUTADORA',brandx:'LENOVO', modelx:''},
		# 	{ description:'COMPUTADORA',brandx:'SAMSUNG', modelx:''},
		# 	{ description:'COMPUTADORA',brandx:'SONY', modelx:''},
		# 	{ description:'REGULADOR/UPS',brandx:'ISB SOLABASIC', modelx:'XRN-21-801'},
		# 	{ description:'REGULADOR/UPS',brandx:'ISB SOLABASIC', modelx:'DN-21-132'},
		# 	{ description:'MONITOR',brandx:'HP', modelx:'V244h'},
		# 	{ description:'MONITOR',brandx:'HP', modelx:'VH22'},
		# 	{ description:'MONITOR',brandx:'HP', modelx:'P240va'},
		# 	{ description:'IMPRESORA',brandx:'HP', modelx:'k550'},
		# 	{ description:'IMPRESORA',brandx:'HP', modelx:'P2va'},
		# 	{ description:'IMPRESORA',brandx:'EPSON', modelx:'P240va1'},
		# 	{ description:'IMPRESORA',brandx:'EPSON', modelx:'788'},
		# 	{ description:'IMPRESORA',brandx:'SAMSUNG', modelx:'788'},
		# 	{ description:'IMPRESORA',brandx:'CANON', modelx:'788'},
		# 	{ description:'IMPRESORA',brandx:'BROTHER', modelx:'788'},
		# 	{ description:'IMPRESORA',brandx:'LEXMARK', modelx:'788'},
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'IMAGERUNNER 1025if' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'IMAGERUNNER ADVANCE 400iF' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'imageCLASS D880' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'ImageRUNNER 3530' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'IMAGERUNNER 1600' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'IMAGERUNNER 1600' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'IMAGERUNNER 2535i' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'IMAGERUNNER 2525' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'IMAGERUNNER ADVANCE IRC2030' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'IMAGERUNNER 2020' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'IMAGERUNNER ADV-C2230' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'IMAGERUNNER 1025if' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'ImageRUNNER 2525' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'ImageRUNNER 1025if' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'ImageRUNNER 6265' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'ImageRUNNER 1025if' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'IMAGERUNNER 2525' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'ImageRUNNER ADVANCE 4200' },
		# 	{ description:'COPIADORA', brandx:'CANON',	modelx:'ImageCLASS D1120' },
		# 	{ description:'IMPRESORA', brandx:'HP',	modelx:'LASERJET SERIE 500, M551' },
		# 	{ description:'IMPRESORA', brandx:'HP',	modelx:'LASERJET COLOR HP SERIE 500, M551' },
		# 	{ description:'IMPRESORA', brandx:'HP',	modelx:'LASERJET COLOR 5100 TN' },
		# 	{ description:'COPIADORA', brandx:'KONICA',	modelx:'MINOLTA BIZHUB 180' },
		# 	{ description:'COPIADORA', brandx:'XEROX',	modelx:'COPYCENTRE C20' },
		# 	{ description:'COPIADORA', brandx:'XEROX',	modelx:'PHASER 3300 MFP' },
		# 	{ description:'COPIADORA', brandx:'XEROX',	modelx:'WORK CENTRE 5020' },
		# 	{ description:'COPIADORA', brandx:'XEROX',	modelx:'WORK CENTRE 5020' },
		# 	{ description:'COPIADORA', brandx:'XEROX',	modelx:'XEROX WORK CENTRE 5335' },
		# 	{description:'TELEFONO',brandx:'PANASONIC', modelx:'KX-TS6LX'},
		# 	{description:'TELEFONO',brandx:'CISCO', modelx:'CS-899'}
		# ]
	#---------------PROVIDERS---------------------------------
		# Provider.create! [
		# 	{ 
		# 		name:"COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO", 
		# 		address:"ROSARIO MORALES ESQ-IGNACIO ZARAGOZA LOCAL-2 PLAZA SAN MARCOS CABO SAN LUCAS BCS",
		# 		telephone:"17-2-01-74 14-4-47-25 CEL:6241416559",
		# 		rfc:"AEMD750922QT4",
		# 		email:"ceesga@hotmail.com"
		# 	},

						
		# 	{
		# 		name:"BAJA DIGITAL S.A DE C.V.", 
		# 		address:"AVE. IGNACIO ALLENDE #880, LOCAL 1 Y 2 COL. CENTRO LA PAZ BCS.",
		# 		telephone:"14-2-22-32",
		# 		rfc:"BDI981121TY8",
		# 		email:"facturacioncabo@bajadigital.com.mx"
		# 	}				
		# ]
	#---------------COPIERS-----------------------------------
		# Copier.create! [
		# 	{ ninventary:'036794',	nserie:'(21)DRL85468',	brand:'CANNON',	model:'IMAGERUNNER 1025if',	Dependency: Dependency.find_by(name:'DIR. MPAL. INVER. PROGRAMAS FED. Y ESTATALES')},
		# 	{ ninventary:'031328',	nserie:'(21)QLA02913',	brand:'CANNON',	model:'IMAGERUNNER ADVANCE 400iF',	Dependency: Dependency.find_by(name:'COOR. SERVICIOS PUBLICOS CSL')},
		# 	{ ninventary:'001963',	nserie:'JXY41001',	brand:'CANON',	model:'imageCLASS D880',	Dependency: Dependency.find_by(name:'COOR. PARTICIPACION CIUDADANA CSL')},
		# 	{ ninventary:'009184',	nserie:'(21)KVH01193',	brand:'CANON',	model:'ImageRUNNER 3530',	Dependency: Dependency.find_by(name:'COOR. OFICIALIA MAYOR CSL ALMACEN')},
		# 	{ ninventary:'005469',	nserie:'MQ520562',	brand:'CANON',	model:'IMAGERUNNER 1600',	Dependency: Dependency.find_by(name:'COOR. DEPORTE CSL')},
		# 	{ ninventary:'012671',	nserie:'MQS20726',	brand:'CANON',	model:'IMAGERUNNER 1600',	Dependency: Dependency.find_by(name:'DIR. MPAL. DE RECURSOS HUMANOS')},
		# 	{ ninventary:'007758',	nserie:'FUM80578',	brand:'CANON',	model:'IMAGERUNNER 2535i',	Dependency: Dependency.find_by(name:'CONTRALORIA MUNICIPAL')},
		# 	{ ninventary:'034794',	nserie:'FRV90485',	brand:'CANON',	model:'IMAGERUNNER 2525',	Dependency: Dependency.find_by(name:'SECRETARIA PARTICULA MUNICIPAL')},
		# 	{ ninventary:'037509',	nserie:'EZ510539',	brand:'CANON',	model:'IMAGERUNNER ADVANCE IRC2030',	Dependency: Dependency.find_by(name:'OFICIALIA MAYOR MUNICIPAL')},
		# 	{ ninventary:'007943',	nserie:'MCE00786',	brand:'CANON',	model:'IMAGERUNNER 2020',	Dependency: Dependency.find_by(name:'DIR. MPAL. DE ATENCON CIUDADANA')},
		# 	{ ninventary:'033857',	nserie:'(21) N600077307',	brand:'CANON',	model:'IMAGERUNNER ADV-C2230',	Dependency: Dependency.find_by(name:'DIR. GRAL. DE DESARROLLO URBANO')},
		# 	{ ninventary:'030484',	nserie:'(21)DRL78609',	brand:'CANON',	model:'IMAGERUNNER 1025if',	Dependency: Dependency.find_by(name:'DIR. MPAL. DE EGRESOS')},
		# 	{ ninventary:'999990',	nserie:'(21)FRU89505',	brand:'CANON',	model:'ImageRUNNER 2525',	Dependency: Dependency.find_by(name:'ADMINISTRACION DE SEG. PUB. Y TRANS. CSL CANGREJOS')},
		# 	{ ninventary:'021268',	nserie:'(21)DRL07396',	brand:'CANON',	model:'ImageRUNNER 1025if',	Dependency: Dependency.find_by(name:'SECRETARIA PARTICULA MUNICIPAL')},
		# 	{ ninventary:'030706',	nserie:'NML02552',	brand:'CANON',	model:'ImageRUNNER 6265',	Dependency: Dependency.find_by(name:'1DIR. MPAL. DE CONTABILIDAD')},
		# 	{ ninventary:'037012',	nserie:'F190502',	brand:'CANON',	model:'ImageRUNNER 1025if',	Dependency: Dependency.find_by(name:'SINDICATURA MUNICIPAL')},
		# 	{ ninventary:'007853',	nserie:'F1907000',	brand:'CANON',	model:'IMAGERUNNER 2525',	Dependency: Dependency.find_by(name:'DIR. MPAL. ASUNTOS JURIDICOS, LEGIS. Y REGLAMT.')},
		# 	{ ninventary:'031414',	nserie:'',	brand:'CANON',	model:'ImageRUNNER ADVANCE 4200',	Dependency: Dependency.find_by(name:'DIR. DE ADMINISTRACIÓN')},
		# 	{ ninventary:'028884',	nserie:'GSS05840',	brand:'CANON',	model:'ImageCLASS D1120',	Dependency: Dependency.find_by(name:'DIR. GRAL. DE FOMENTO ECONOMICO Y TURISMO')},
		# 	{ ninventary:'025722',	nserie:'30754934',	brand:'KONICA',	model:'MINOLTA BIZHUB 180',	Dependency: Dependency.find_by(name:'DIR. ADM. DE RASTRO T.I.F')},
		# 	{ ninventary:'038088',	nserie:'XL3502130',	brand:'XEROX',	model:'XEROX WORK CENTRE 5335',	Dependency: Dependency.find_by(name:'DIR. MPAL. INVER. PROGRAMAS FED. Y ESTATALES')},
		# 	{ ninventary:'011410',	nserie:'RYR382633',	brand:'XEROX',	model:'COPYCENTRE C20',	Dependency: Dependency.find_by(name:'COOR. CASA DE LA CULTURA CSL')},
		# 	{ ninventary:'027330',	nserie:'NRB448405',	brand:'XEROX',	model:'PHASER 3300 MFP',	Dependency: Dependency.find_by(name:'DIR. MPAL. DE RECURSOS HUMANOS')},
		# 	{ ninventary:'999991',	nserie:'0034003765D',	brand:'XEROX',	model:'WORK CENTRE 5020',	Dependency: Dependency.find_by(name:'ALMACEN GENERAL MUNICIPAL')},
		# 	{ ninventary:'017304',	nserie:'00340037708',	brand:'XEROX',	model:'WORK CENTRE 5020',	Dependency: Dependency.find_by(name:'COOR. CONTRALORIA CSL')},
		# ]
	#---------------PRINTERS----------------------------------
		# Printer.create! [
		# 	{ninventary:'032681', nserie:'CNDCGCM133', brand:'HP', model:'LASERJET COLOR HP SERIE 500, M551', genus:'Laser Color', Dependency: Dependency.find_by(name:'DIR. MPAL. CATASTRO')},
		# 	{ninventary:'032679', nserie:'CNDCGCM13G', brand:'HP', model:'LASERJET COLOR HP SERIE 500, M551', genus:'Laser Color', Dependency: Dependency.find_by(name:'DIR. MPAL. CATASTRO')},
		# 	{ninventary:'001990', nserie:'CB002245513', brand:'HP', model:'LASERJET COLOR 5100 TN', genus:'Laser Color', Dependency: Dependency.find_by(name:'DIR. MPAL. CATASTRO')}
		# ]
	#---------------SERVICEREQUESTS---------------------------
		# ServiceRequest.create! [
		# 		{ idFolio:'190516140-SJC/CC2',	kind:'REPARACION',		itDiagnosis:'-UNIDAD ADF HACE RUIDO Y SE ATORA',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'DMIPFYE/198/2016',	RequestDate: DateTime.strptime('19/05/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. INVER. PROGRAMAS FED. Y ESTATALES' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'038088'), Priority:'ALTA' },
		# 		{ idFolio:'190516140-SJC/F7E',	kind:'REPARACION',		itDiagnosis:'.',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'CORREO 19052016',	RequestDate: DateTime.strptime('19/05/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. INVER. PROGRAMAS FED. Y ESTATALES' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'036794'), Priority:'ALTA' },
		# 		{ idFolio:'190516140-CSL/17C',	kind:'REPARACION',		itDiagnosis:'.',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'CORREO',	RequestDate: DateTime.strptime('19/05/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"Cabo San Lucas"),	Dependency: Dependency.find_by(name:'COOR. SERVICIOS PUBLICOS CSL' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'031328'), Priority:'ALTA' },
		# 		{ idFolio:'190516140-CSL/DAF',	kind:'REPARACION',		itDiagnosis:'.',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('19/05/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"Cabo San Lucas"),	Dependency: Dependency.find_by(name:'COOR. PARTICIPACION CIUDADANA CSL' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'001963'), Priority:'ALTA' },
		# 		{ idFolio:'190516140-CSL/33D',	kind:'MANTENIMIENTO',	itDiagnosis:'.',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('19/05/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"Cabo San Lucas"),	Dependency: Dependency.find_by(name:'COOR. OFICIALIA MAYOR CSL ALMACEN' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'009184') },
		# 		{ idFolio:'190516140-CSL/6DE',	kind:'MANTENIMIENTO',	itDiagnosis:'.',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('19/05/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"Cabo San Lucas"),	Dependency: Dependency.find_by(name:'COOR. CASA DE LA CULTURA CSL' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'011410'), Priority:'NORMAL' },
		# 		{ idFolio:'060616158-SJC/D21',	kind:'MANTENIMIENTO',	itDiagnosis:'SACA LAS COPIAS  MANCHADAS DE UN COSTADO',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'EVALUACION SIST.',	RequestDate: DateTime.strptime('06/06/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. DE RECURSOS HUMANOS' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'012671') },
		# 		{ idFolio:'060616158-SJC/42C',	kind:'MANTENIMIENTO',	itDiagnosis:'.',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('06/06/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. DE RECURSOS HUMANOS' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'027330') },
		# 		{ idFolio:'070616159-SJC/5E5',	kind:'MANTENIMIENTO',	itDiagnosis:'- ATORAMIENTO DE HOJA.  SE VISUALIZA PIEZA QUEBRADA',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('07/06/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'CONTRALORIA MUNICIPAL' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'007758') },
		# 		{ idFolio:'070616159-SJC/400',	kind:'MANTENIMIENTO',	itDiagnosis:'- ATASCO DE HOJA, SE OBSERVA RODILLO DE ACCESO DE HOJA DETERIORADO SE REQUIERE EVALUACION Y DIAGNOSTICO EN GENERAL.',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('07/06/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'SECRETARIA PARTICULA MUNICIPAL' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'034794') },
		# 		{ idFolio:'070616159-SJC/4DC',	kind:'DIAGNOSTICO',		itDiagnosis:'- EQUIPO NO ESTA FUNCIONANDO, SE REQUIRE DIAGNOSTICO GENERAL',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('07/06/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'OFICIALIA MAYOR MUNICIPAL' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'037509') },
		# 		{ idFolio:'290616181-SJC/91D',	kind:'REPARACION',		itDiagnosis:'NO ESTA EN FUNCION SACA LA COPIA CON UNA RAYA NEGRA, ATORA LAS HOJAS POR PIEZA QUEBRADA EN BANDEJA',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('29/06/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. DE ATENCON CIUDADANA' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'007943') },
		# 		{ idFolio:'300616182-SJC/970',	kind:'MANTENIMIENTO',	itDiagnosis:'IMPRESIONES MANCHADAS, REQUIERE MANTENIMIENTO',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('30/06/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. CATASTRO' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Printer: Printer.find_by(ninventary:'032681') },
		# 		{ idFolio:'300616182-SJC/332',	kind:'MANTENIMIENTO',	itDiagnosis:'IMPRESIONES MANCHADAS, REQUIERE MANTENIMIENTO',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('30/06/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. CATASTRO' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Printer: Printer.find_by(ninventary:'032679') },
		# 		{ idFolio:'300616182-SJC/F4C',	kind:'MANTENIMIENTO',	itDiagnosis:'ALARMA DE CAMBIO KIT DE MANTENIMIENTO',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('30/06/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. CATASTRO' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Printer: Printer.find_by(ninventary:'001990') },
		# 		{ idFolio:'050716187-SJC/DEC',	kind:'REPARACION',		itDiagnosis:'SACA LA COPIA MANCHADA, ARROJA ALARMA DE CABIO DE TAMBOR',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('05/07/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. GRAL. DE DESARROLLO URBANO' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'033857') },
		# 		{ idFolio:'060716188-SJC/658',	kind:'REPARACION',		itDiagnosis:'IMPRIME CON RAYAS, ALARMA DE PAPEL ATORADO, REQUIERE DE MANTENIMIENTO EN GENERAL',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'DMEYRF/CGRAL/14/2016',	RequestDate: DateTime.strptime('06/07/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. DE EGRESOS' ),	Provider: Provider.find_by(name:'COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO' ),	Copier: Copier.find_by(ninventary:'030484') },
		# 		{ idFolio:'220716204-CSL/A4D',	kind:'MANTENIMIENTO',	itDiagnosis:'ATORA LAS HOJAS, HACE RUIDO EN LA PIEZA DEL FUSOR SE REQUIERE MANTENIMMIENTO GENERAL',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('22/07/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"Cabo San Lucas"),	Dependency: Dependency.find_by(name:'ADMINISTRACION DE SEG. PUB. Y TRANS. CSL CANGREJOS' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'999990') },
		# 		{ idFolio:'250716207-SJC/B58',	kind:'MANTENIMIENTO',	itDiagnosis:'SACA LA COPIA MANCHADA, ARROJA ALARMA DE CABIO DE TAMBOR',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SISTEMAS',	RequestDate: DateTime.strptime('25/07/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. GRAL. DE DESARROLLO URBANO' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'033857') },
		# 		{ idFolio:'260716208-SJC/F1C',	kind:'REPARACION',		itDiagnosis:'NO SACA COPIAS,  MUESTRA ERROR SIN CALOR EN PANTALLA',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SISTEMAS',	RequestDate: DateTime.strptime('26/07/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. DE RECURSOS HUMANOS' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'027330') },
		# 		{ idFolio:'280716210-SJC/4FC',	kind:'REPARACION',		itDiagnosis:'NO SE ENCUENTRA EN FUNCIÓN, ATORA LAS HOJAS, REQUIERE REMPLAZO DE RODILLOS Y MANTENIMIENTO EN GENERAL.',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('28/07/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'SECRETARIA PARTICULA MUNICIPAL' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'021268') },
		# 		{ idFolio:'020816215-SJC/E31',	kind:'REPARACION',		itDiagnosis:'NO FUNCIONA DESPLIEGA EN PANTALLA ERROR: E000014-0001,',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('02/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. DE CONTABILIDAD' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'030706') },
		# 		{ idFolio:'040816217-SJC/D92',	kind:'MANTENIMIENTO',	itDiagnosis:'MANTENIMIENTO EN GENERAL.',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'T.I.F. 199/02/08/16',	RequestDate: DateTime.strptime('04/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. ADM. DE RASTRO T.I.F' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'025722') },
		# 		{ idFolio:'090816222-SJC/74D',	kind:'REPARACION',		itDiagnosis:'ALARMA CAMBIO DE TAMBOR, PELICULA DE FIJACIÓN Y ATORAMIENTO DE HOJA.',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('09/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'SINDICATURA MUNICIPAL' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'037012') },
		# 		{ idFolio:'110816224-SJC/9F7',	kind:'MANTENIMIENTO',	itDiagnosis:'REQUIERE CAMBIO DE TAMBOR MODELO:  DRUM CARTRIDGE (101R00432).',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'DAG/090/2016',	RequestDate: DateTime.strptime('11/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'ALMACEN GENERAL MUNICIPAL' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'999991') },
		# 		{ idFolio:'110816224-SJC/53F',	kind:'MANTENIMIENTO',	itDiagnosis:'IMPRIME CON RAYAS, ALARMA DE PAPEL ATASCADO, REQUIERE DE MANTENIMIENTO EN GENERAL',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'DMEYRF/CGRAL/14/2016',	RequestDate: DateTime.strptime('11/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. DE EGRESOS' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'030484') },
		# 		{ idFolio:'180816231-SJC/5E5',	kind:'REPARACION',		itDiagnosis:'RODILLO DE FIJACION DEL ADF CON RUIDO ESTA DAÑADO Y GOMA DE ALIMENTACION DESGASTADA.',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'dmipeye/198/2016',	RequestDate: DateTime.strptime('18/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. INVER. PROGRAMAS FED. Y ESTATALES' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'038088') },
		# 		{ idFolio:'180816231-SJC/879',	kind:'REPARACION',		itDiagnosis:'MANTENIMIENTO Y REVISION EN GENERAL',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'DMAJ/511/2016',	RequestDate: DateTime.strptime('18/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. MPAL. ASUNTOS JURIDICOS, LEGIS. Y REGLAMT.' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'007853') },
		# 		{ idFolio:'220816235-CSL/EE3',	kind:'DIAGNOSTICO',		itDiagnosis:'EQUIPO NO ESTA FUNCIONANDO FALLA EN SENSOR.  MANTENIMIENTO EN GENERAL',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('22/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"Cabo San Lucas"),	Dependency: Dependency.find_by(name:'COOR. CONTRALORIA CSL' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'017304') },
		# 		{ idFolio:'220816235-CSL/9FC',	kind:'REPARACION',		itDiagnosis:'ERROR EN GOMAS DE ALIMENTACIÓN Y SEPARACIÓN DE PAPEL, SENSOR DE PAPEL ANTES DEL REGISTRO. MANTENIMIENTO EN GENERAL.',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('22/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"Cabo San Lucas"),	Dependency: Dependency.find_by(name:'COOR. OFICIALIA MAYOR CSL ALMACEN' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'009184') },
		# 		{ idFolio:'230816236-SJC/F1A',	kind:'MANTENIMIENTO',	itDiagnosis:'MANTENIMIENTO EN GENERAL',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'DMA/1591/2016',	RequestDate: DateTime.strptime('23/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. DE ADMINISTRACIÓN' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'031414') },
		# 		{ idFolio:'230816236-SJC/6C9',	kind:'REPARACION',		itDiagnosis:'REPARACION Y MANTENIMIENTO EN GENERAL',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'DGFEYT/197/08/2016',	RequestDate: DateTime.strptime('23/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'DIR. GRAL. DE FOMENTO ECONOMICO Y TURISMO' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'028884') },
		# 		{ idFolio:'240816237-SJC/2FF',	kind:'REPARACION',		itDiagnosis:'EQUIPO NO ESTA FUNCIONANDO SE REQUIERE DIAGNOSTICO EN GENERAL, ERROR DISPLAY',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('24/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'OFICIALIA MAYOR MUNICIPAL' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'037509') },
		# 		{ idFolio:'250816238-SJC/F2E',	kind:'REPARACION',		itDiagnosis:'ANTECEDENTES: CONSTANTE ATASCO DE HOJA, RODILLO DE ACCESO DE HOJA DETERIORADO, RUIDO EN LA UNIDAD ADF.  MANTENIMINETO Y DIAGNOSTICO EN GENERAL',	ProviderDiagnosis:'',	material:'',	DocumentRequest:'SOL. SISTEMAS',	RequestDate: DateTime.strptime('25/08/2016','%d/%m/%Y'),	Delegation: Delegation.find_by(name:"San Jose del Cabo"),	Dependency: Dependency.find_by(name:'SECRETARIA PARTICULA MUNICIPAL' ),	Provider: Provider.find_by(name:'BAJA DIGITAL S.A DE C.V.' ),	Copier: Copier.find_by(ninventary:'034794') }

		# ]
		
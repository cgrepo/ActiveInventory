# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User.destroy_all
# Delegation.destroy_all
# Dependency.destroy_all
# Processor.destroy_all
# Network.destroy_all
# Worker.destroy_all

# User.create! [
#  { username: "carlos", password: "th3pr!mag1n" },
#  { username: "mary", password: "h3ngell" }
# ]

# Delegation.create! [
# 	{name:"San Jose del Cabo"},
# 	{name:"Cabo San Lucas"},
# 	{name:"Miraflores"},
# 	{name:"Santiago"},
# 	{name:"La Rivera"}
# ]
# line = "ATENCION CIUDADANA CSL,CATASTRO CSL,COMUNICACION SOCIAL CSL,CONTABILIDAD CSL,CONTRALORIA CSL,DELEGADO CSL,FOMENTO ECONOMICO CSL,INGRESOS CSL,INSPECCION FISCAL CSL,ISABI CSL,JURIDICO CSL,OFICIAL MAYOR CSL,RECAUDACION CSL,RECURSOS HUMANOS CSL,SECRETARIA GENERAL CSL,PARTICIPACION CIUDADANA CSL,OFICIAL MAYOR ALMACEN CSL,INSTITUTO DE LA MUJER CSL,ZOFEMAT CSL,ECOLOGIA CSL,PROTECCION A LA TORTUGA CSL,EDUCACION CSL,CASA DE CULTURA CSL,INST. DE LA JUVENTUD CSL,PODER JOVEN CSL,OBRAS PUBLICAS CSL,DESARROLLO URBANO CSL,IMAGEN URBANA CSL,ASENTAMIENTOS HUMANOS CSL,DEPORTE CSL,TRANSITO CSL ADMINISTRACION,TRANSITO CSL COMANDANTE OPERACIONAL,TRANSITO CSL INFRACCIONES,TRANSITO CSL CAJAS,TRANSITO CSL ARCHIVO,TRANSITO CSL TRANSPORTE,TRANSITO CSL BARANDILLA,TRANSITO CSL JUEZ CALIFICADOR,TRANSITO CSL SECTOR 1,TRANSITO CSL SECTOR 2,TRANSITO CSL SECTOR 3,TRANSITO CSL SECTOR 4,TRANSITO CSL POLICIA COMERCIAL,TRANSITO CSL POLICIA TURISTICA,TRANSITO CSL PART. CIUDADANA Y VINCULACION SOC.,TRANSITO CSL VIALIDAD Y PERITAJE,LICENCIAS DE CONSTRUCCION.,PROTECCION CIVIL CSL"
# line.split(',').each do | nombre|
# 	dep = Dependency.create! name:nombre
# 	dep.Delegation = Delegation.find_by(name:"Cabo San Lucas")
# 	dep.save!
# end

# Processor.create! [
# 	{brand:'Intel(R)', genus:'Core(TM)', modelp:'i7-4600', speed:'2.90Ghz '},
# 	{brand:'Intel(R)', genus:'Core(TM)', modelp:'i5-4590', speed:'3.30Ghz '},
# 	{brand:'Intel(R)', genus:'Core(TM)', modelp:'i3-2130', speed:'3.40Ghz '},
# 	{brand:'Intel(R)', genus:'Core(TM)', modelp:'2', speed:'6400Ghz '},
# 	{brand:'Intel(R)', genus:'Atom(TM)', modelp:'D525', speed:'1.80GHz '},
# 	{brand:'Intel(R)', genus:'Celeron(R) ', modelp:'N3050', speed:'1.80GHz '}
# ]

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
# 	{linktype:'ENLACE-WIFI', location:'MODULO REGISTRO CIVIL', iprange:'', ip:''},
# 	{linktype:'NLACE-WIFI', location:'MODULO DESARROLLO URBANO', iprange:'', ip:''}
# ]
# Worker.create! [
# 	{name:'Carlos A. Garcia G.', email:'carlos.garcia@loscabos.gob.mx', profile:'Asistente de la Direccion Mpal. de Sistemas'},
# 	{name:'Maria J. Ochoa A.', email:'sistemas_csl@loscabos.gob.mx', profile:'Asistente de la Direccion Mpal. de Sistemas'},
# 	{name:'Jose A. Casillas E..', email:'carlos.garcia@loscabos.gob.mx', profile:'Asistente de la Direccion Mpal. de Sistemas'},
# ]
#Manufacturer.create! [
# 	{name:"BROTHER"},
# 	{name:"CANON"},
# 	{name:"CISCO"},
# 	{name:"DELL"},
# 	{name:"EPSON"},
# 	{name:"HITACHI"},
# 	{name:"HP"},
# 	{name:"IBM"},
# 	{name:"ISB SOLABASIC"},
# 	{name:"KYOCERA"},
# 	{name:"LENOVO"},
# 	{name:"LEXMARK"},
# 	{name:"SAMSUNG"},
# 	{name:"XEROX"}
#]

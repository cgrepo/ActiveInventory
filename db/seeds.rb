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
# ComputerBrand.destroy_all
# Memo.destroy_all
# Hardd.destroy_all
# Osy.destroy_all
# Officev.destroy_all
#BrandModel.destroy_all
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
# line = "ATENCION CIUDADANA CSL,CATASTRO CSL,COMUNICACION SOCIAL CSL,CONTABILIDAD CSL,CONTRALORIA CSL,DELEGADO CSL,FOMENTO ECONOMICO CSL,INGRESOS CSL,INSPECCION FISCAL CSL,ISABI CSL,JURIDICO CSL,OFICIAL MAYOR CSL,RECAUDACION CSL,RECURSOS HUMANOS CSL,SECRETARIA GENERAL CSL,PARTICIPACION CIUDADANA CSL,OFICIAL MAYOR ALMACEN CSL,INSTITUTO DE LA MUJER CSL,ZOFEMAT CSL,ECOLOGIA CSL,PROTECCION A LA TORTUGA CSL,EDUCACION CSL,CASA DE CULTURA CSL,INST. DE LA JUVENTUD CSL,PODER JOVEN CSL,OBRAS PUBLICAS CSL,DESARROLLO URBANO CSL,IMAGEN URBANA CSL,ASENTAMIENTOS HUMANOS CSL,DEPORTE CSL,TRANSITO CSL ADMINISTRACION,TRANSITO CSL COMANDANTE OPERACIONAL,TRANSITO CSL INFRACCIONES,TRANSITO CSL CAJAS,TRANSITO CSL ARCHIVO,TRANSITO CSL TRANSPORTE,TRANSITO CSL BARANDILLA,TRANSITO CSL JUEZ CALIFICADOR,TRANSITO CSL SECTOR 1,TRANSITO CSL SECTOR 2,TRANSITO CSL SECTOR 3,TRANSITO CSL SECTOR 4,TRANSITO CSL POLICIA COMERCIAL,TRANSITO CSL POLICIA TURISTICA,TRANSITO CSL PART. CIUDADANA Y VINCULACION SOC.,TRANSITO CSL VIALIDAD Y PERITAJE,LICENCIAS DE CONSTRUCCION.,PROTECCION CIVIL CSL, DIF CSL, VISITADURIA ITERNA CSL"
# line.split(',').each do | nombre|
# 	dep = Dependency.create! name:nombre
# 	dep.Delegation = Delegation.find_by(name:"Cabo San Lucas")
# 	dep.save!
# end
# line = 'AMD(R),Athlon(TM),Dual Core,2.2GHz:AMD(R),Athlon(TM),Dual Core,2.6GHz:AMD(R),Athlon(TM),Dual Core 4450B,2.3GHz:AMD(R),Athlon(TM),II X2 240,2.8GHz:Intel(R),Atom(TM),D525,1.8GHz:Intel(R),Celeron(R),G440,1.6GHz:Intel(R),Celeron(R),J1900,1.9GHz:Intel(R),Celeron(R),J1900,1.9GHz:Intel(R),Core(TM),13-4330,3.5GHz:Intel(R),Core(TM),2 6300,1.8GHz:Intel(R),Core(TM),2 6400,2.1GHz:Intel(R),Core(TM),2 6600,2.4GHz:Intel(R),Core(TM),2 Duo E4600,2.3GHz:Intel(R),Core(TM),2 Duo E6550,2.3GHz:Intel(R),Core(TM),2 Duo T5780,2.0GHz:Intel(R),Core(TM),2 Duo i3,2.9GHz:Intel(R),Core(TM),2 Duo i3-2130,3.4GHz:Intel(R),Core(TM),2 Duo i3-4130,3.4GHz:Intel(R),Core(TM),2 Duo,1.8GHz:Intel(R),Core(TM),2 Duo,2.1GHz:Intel(R),Core(TM),2 Duo,2.3GHz:Intel(R),Core(TM),2 Duo,2.4GHz:Intel(R),Core(TM),2 Duo,1.8GHz:Intel(R),Core(TM),i5-3330,3.0GHz:Intel(R),Core(TM),i3 4150,3.5GHz:Intel(R),Core(TM),i3-2100,3.1GHz:Intel(R),Core(TM),i3-2350M,2.3GHz:Intel(R),Core(TM),i3-2370M,2.4GHz:Intel(R),Core(TM),i3-3220,3.3GHz:Intel(R),Core(TM),i3-4005U,1.7GHz:Intel(R),Core(TM),i3-4150,3.5GHz:Intel(R),Core(TM),i3-4330,3.5GHz:Intel(R),Core(TM),i5-3330,3.0GHz:Intel(R),Core(TM),i5-3330,3.6GHz:Intel(R),Core(TM),i5-4460,3.2GHz:Intel(R),Core(TM),i5-4590,3.3GHz:Intel(R),Pentium(R),4,1.8GHz:Intel(R),Pentium(R),4,2.3GHz:Intel(R),Pentium(R),4,2.4GHz:Intel(R),Pentium(R),4,2.8GHz:Intel(R),Pentium(R),4,2.9GHz:Intel(R),Pentium(R),4,3.0GHz:Intel(R),Pentium(R),4,3.1GHz:Intel(R),Pentium(R),4,3.2GHz:Intel(R),Pentium(R),4,3.4GHz:Intel(R),Pentium(R),4,3.6GHz:Intel(R),Pentium(R),4,2.4GHz:Intel(R),Pentium(R),D,2.8GHz:Intel(R),Pentium(R),D,2.9GHz:Intel(R),Pentium(R),D,3.0GHz:Intel(R),Pentium(R),Dual Core,2.6GHz:Intel(R),Pentium(R),Dual Core,2.8GHz:Intel(R),Pentium(R),Dual E2200 A,2.2GHz:Intel(R),Pentium(R),G630,2.7GHz:Intel(R),Pentium(R),4,3.0GHz:Intel(R),Pentium(R),4,3.2GHz:Intel(R),Xenon(R),E3-1245V3,3.4GHz:Intel(R),Core(TM),i7-4600,2.9Ghz:Intel(R),Celeron(R),N3050,1.8GHz'
# line.split(':').each do |e|
# 	p = e.split(',')
# 	Processor.create! brand:p[0], genus:p[1],  modelp:p[2], speed:p[3]
# end

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
# BrandModel.create! [
# 	{description:'COMPUTADORA', brandx:'ACER', modelx:''},
# 	{description:'COMPUTADORA',brandx:'ASUS', modelx:''},
# 	{description:'COMPUTADORA',brandx:'CLON', modelx:''},
# 	{description:'COMPUTADORA',brandx:'COMPAQ', modelx:''},
# 	{description:'COMPUTADORA',brandx:'DELL', modelx:''},
# 	{description:'COMPUTADORA',brandx:'HP', modelx:''},
# 	{description:'COMPUTADORA',brandx:'IBM', modelx:''},
# 	{description:'COMPUTADORA',brandx:'LENOVO', modelx:''},
# 	{description:'COMPUTADORA',brandx:'SAMSUNG', modelx:''},
# 	{description:'COMPUTADORA',brandx:'SONY', modelx:''},
# 	{description:'REGULADOR/UPS',brandx:'ISB SOLABASIC', modelx:'XRN-21-801'},
# 	{description:'REGULADOR/UPS',brandx:'ISB SOLABASIC', modelx:'DN-21-132'},
# 	{description:'MONITOR',brandx:'HP', modelx:'V244h'},
# 	{description:'MONITOR',brandx:'HP', modelx:'VH22'},
# 	{description:'MONITOR',brandx:'HP', modelx:'P240va'},
# 	{description:'IMPRESORA',brandx:'HP', modelx:'k550'},
# 	{description:'IMPRESORA',brandx:'HP', modelx:'P2va'},
# 	{description:'IMPRESORA',brandx:'EPSON', modelx:'P240va1'},
# 	{description:'IMPRESORA',brandx:'EPSON', modelx:'788'},
# 	{description:'IMPRESORA',brandx:'SAMSUNG', modelx:'788'},
# 	{description:'IMPRESORA',brandx:'CANON', modelx:'788'},
# 	{description:'IMPRESORA',brandx:'BROTHER', modelx:'788'},
# 	{description:'IMPRESORA',brandx:'LEXMARK', modelx:'788'},
# 	{description:'COPIADORA',brandx:'CANON', modelx:'dc456'},
# 	{description:'COPIADORA',brandx:'CANON', modelx:'scpp'},
# 	{description:'COPIADORA',brandx:'CANON', modelx:'cnn'},
# 	{description:'COPIADORA',brandx:'BROTHER', modelx:'BRT222'},
# 	{description:'COPIADORA',brandx:'BROTHER', modelx:'BRT78'},
# 	{description:'COPIADORA',brandx:'XEROX', modelx:'xrs'},
# 	{description:'TELEFONO',brandx:'PANASONIC', modelx:'KX-TS6LX'},
# 	{description:'TELEFONO',brandx:'CISCO', modelx:'CS-899'}

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

Provider.create! [
	{ 
		name:"COPY SERVICIOS BAJA Y /O DINORA GUILLERMINA ARCE MURILLO", 
		address:"ROSARIO MORALES ESQ-IGNACIO ZARAGOZA LOCAL-2 PLAZA SAN MARCOS CABO SAN LUCAS BCS",
		telephone:"17-2-01-74 14-4-47-25 CEL:6241416559",
		rfc:"AEMD750922QT4",
		email:"ceesga@hotmail.com"
	},

				
	{
		name:"BAJA DIGITAL S.A DE C.V.", 
		address:"AVE. IGNACIO ALLENDE #880, LOCAL 1 Y 2 COL. CENTRO LA PAZ BCS.",
		telephone:"14-2-22-32",
		rfc:"BDI981121TY8",
		email:"facturacioncabo@bajadigital.com.mx"
	}
					
]
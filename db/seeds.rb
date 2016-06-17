# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Delegation.destroy_all
Dependency.destroy_all
#Manufacturer.destroy_all

User.create! [
  { username: "carlos", password: "th3pr!mag1n" },
  { username: "mary", password: "h3ngell" }
]

Delegation.create! [
 	{name:"San Jose del Cabo"},
 	{name:"Cabo San Lucas"},
 	{name:"Miraflores"},
 	{name:"Santiago"},
 	{name:"La Rivera"}
]

Dependency.create! [
{name:"ATENCION CIUDADANA CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"CATASTRO CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"COMUNICACION SOCIAL CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"CONTABILIDAD CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"CONTRALORIA CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"DELEGADO CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"FOMENTO ECONOMICO CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"INGRESOS CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"INSPECCION FISCAL CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"ISABI CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"JURIDICO CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"OFICIAL MAYOR CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"RECAUDACION CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"RECURSOS HUMANOS CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"SECRETARIA GENERAL CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"PARTICIPACION CIUDADANA CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"OFICIAL MAYOR ALMACEN CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"INSTITUTO DE LA MUJER CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"ZOFEMAT CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"ECOLOGIA CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"PROTECCION A LA TORTUGA CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"EDUCACION CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"CASA DE CULTURA CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"INST. DE LA JUVENTUD CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"PODER JOVEN CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"OBRAS PUBLICAS CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"DESARROLLO URBANO CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"IMAGEN URBANA CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"ASENTAMIENTOS HUMANOS CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"DEPORTE CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL ADMINISTRACION", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL COMANDANTE OPERACIONAL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL INFRACCIONES", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL CAJAS", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL ARCHIVO", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL TRANSPORTE", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL BARANDILLA", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL JUEZ CALIFICADOR", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL SECTOR 1", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL SECTOR 7", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL SECTOR 3", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL SECTOR 4", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL POLICIA COMERCIAL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL POLICIA TURISTICA", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL PART. CIUDADANA Y VINCULACION SOC.", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"TRANSITO CSL VIALIDAD Y PERITAJE", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"LICENCIAS DE CONSTRUCCION.", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7},
{name:"PROTECCION CIVIL CSL", address:"", telephone:"", responsable:"", responsable_email:"", Delegation_id:7}
]
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

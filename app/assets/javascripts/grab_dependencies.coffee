$(document).on "turbolinks:load", ->
	$('.fechax').datepicker({ 
	dateFormat: 'dd/mm/yy',

 monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
 monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
 dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
 dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
 dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá']}).val()

	$('.delegations_collection').on 'change', ->
		$.ajax
			url:'/bridge_helper/get_dependencies'
			type:'GET'
			dataType:'script'
			data:
				Delegation_id: $('.delegations_collection option:selected').val()

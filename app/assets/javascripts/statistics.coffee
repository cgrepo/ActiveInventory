$(document).on "turbolinks:load", ->
	$('.dependencies4statistics').empty()
	$('.copiers4statistics').empty()
	$('.printers4statistics').empty()
	###$('.printerdiv').hide()
	$('.copydiv').hide()###

	$('.delegations4statistics').on 'change', ->
		$.ajax
			url:'/statistics/get_dependencies'
			type:'GET'
			dataType:'script'
			data:
				Delegation_id: $('.delegations4statistics option:selected').val()


	$('.dependencies4statistics').on 'change', ->
		$.ajax
			url:'/statistics/get_equipments'
			type:'GET'
			dataType:'script'
			data:
				Dependency_id: $('.dependencies4statistics option:selected').val()
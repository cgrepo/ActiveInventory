$(document).on "turbolinks:load", ->
	$('.models').empty()

	$('.brands').on 'change', ->
		$.ajax
			url:'/screens/get_models'
			type:'GET'
			dataType:'script'
			data:
				brand: $('.brands option:selected').val()

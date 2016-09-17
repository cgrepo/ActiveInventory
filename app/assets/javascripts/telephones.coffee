$(document).on "turbolinks:load", ->
	$('.net').hide ->

	$('.option_type').on 'change', ->
		if $('.option_type option:selected').val() == 'VOIP'
			$('.net').show ->
		else
			$('.net').hide ->
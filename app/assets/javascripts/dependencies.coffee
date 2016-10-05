$(document).on "turbolinks:load", ->
	$('input[type=radio][name=Delegation]').change ->
		sjc = $('input[type=radio][id=Delegation_1]').is(':checked')
		csl = $('input[type=radio][id=Delegation_2]').is(':checked')
		san = $('input[type=radio][id=Delegation_3]').is(':checked')
		mir = $('input[type=radio][id=Delegation_4]').is(':checked')
		riv = $('input[type=radio][id=Delegation_5]').is(':checked')
		if sjc
			d = 1
		else
			if csl
				d = 2
			else
				if san
					d = 3
				else
					if mir
						d = 4
					else
						if riv
							d = 5
		
		$.ajax
			url:'/dependencies/'
			type:'GET'
			dataType:'script'
			data:
				Delegation: d
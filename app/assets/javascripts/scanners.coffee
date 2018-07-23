$(document).on "turbolinks:load", ->
    $('.brands4scanner').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
    $('.models4scanner').empty()
    $('#showNet').hide()
    $('#net').change ->
        active = $('#net').is(':checked')
        if active
            $('#showNet').fadeToggle()
        else
            $('#showNet').fadeToggle()
    $('#scanner_brand').on 'change', ->
        if $('#scanner_brand option:selected').val() == ''
            $('#scanner_model').empty()
        else
            if $('#scanner_brand option:selected').val() == 'plus'
                $.ajax
                    type:'GET'
                    url: '/scanners/showmodal'
                    dataType: 'script'
            else
                $.ajax
                    url:'/bridge_helper/get_models'
                    type:'GET'
                    dataType:'script'
                    data:
                        {
                            brand: $('#scanner_brand option:selected').val()
                            genus:'ESCANER'
                        }
                    success: (data) ->
                        $('#scanner_model').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
    $('#scanner_model').on 'change', ->
        if $('#scanner_model option:selected').val() == 'plus'
            $.ajax
                type:'GET'
                url: '/scanners/showmodal'
                dataType: 'script'
                success: (data) ->
                    $('#brand_model_brandx').val($('#scanner_brand option:selected').val())
                    $('#brand_model_brandx').attr('disabled','true')
    $(document).on 'submit', 'form#modal4scanners', (e) ->
        e.preventDefault()
        if valuesCompleated()
            $.ajax
                type:'POST'
                url:'/scanners/addBrandModel4scanner'
                data:
                    {
                        brand: $('#brand_model_brandx').val()
                        model:$('#brand_model_modelx').val()
                        desc:'ESCANER'
                    }
                success: (data) ->
                    $('#scanner_brand').empty()
                    $('#scanner_model').empty()
                    $('#scanner_brand').append(data)
                    $('#modal-window').modal('hide')
                error: (data) ->
                    alert 'error' + data
    return
valuesCompleated=->
    if $('#brand_model_brandx').val() == ''
        alert 'Proporcione la Marca'
        return false
    if $('#brand_model_modelx').val() == ''
        alert 'Proporcione el Modelo'
        return false
    return true

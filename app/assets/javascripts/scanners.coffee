$(document).on "turbolinks:load", ->
    $('.brands4scanner').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
    $('.models4scanner').empty()
    
    $('.brands4scanner').on 'change', ->
        if $('.brands4scanner option:selected').val() == 'plus'
            url = "/brand_models/new?type=scanner"
            if url
                window.location.replace url
        if $('.brands4scanner option:selected').val() == ''
            $('.models4scanner').empty()
            return
        else
           $.ajax
            url: '/bridge_helper/get_models'
            cache: false
            dataType:'script'
            data:
                brand: $('.brands4scanner option:selected').val(),
                genus: 'ESCANER'
    $('#showNet').hide()
    $('#net').change ->
        active = $('#net').is(':checked')
        if active
            $('#showNet').fadeToggle()
        else
            $('#showNet').fadeToggle()

    $('label:eq(1)').remove()
    $('label:eq(2)').remove()
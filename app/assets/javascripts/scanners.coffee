$(document).on "turbolinks:load", ->
    $('.brands4scanner').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
    $('.models4scanner').empty()
    
    $('.brands4scanner').on 'change', ->
        if $('.brands4scanner option:selected').val() == 'plus'
            url = "/brand_models/new?type=scanner"
            if url
                window.location.replace url
        if $('.brands4scanner option:selected').val() == ''
            return
        else
           $.ajax
            url: '/bridge_helper/get_models'
            data:
                brand: $('.brands4scanner option:selected').val(),
                genus: 'ESCANER',
                cache: false,
                dataType:'script'
            success: (data) ->
                alert data
$(document).on "turbolinks:load", ->
    $brand = $('.brands4scanner')
    $models = $('.models4scanner')
    $models.empty()
    $brand.append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
    
    $brand.on 'change', ->
        selection = $(this).val()
        alert selection
        if selection == 'plus'
            url = "/brand_models/new?type=scanner"
            if url
                alert url
                window.location.replace url
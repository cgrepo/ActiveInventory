$(document).on "turbolinks:load", ->
    $('#computers').hide()
    $('#_Dependency_id').on 'change', ->
        $('#computers').hide()
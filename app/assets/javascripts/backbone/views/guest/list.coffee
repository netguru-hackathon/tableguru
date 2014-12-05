$ ->
  class TableGuru.Views.GuestList extends Backbone.View
    el: '#guest_list'

    initialize: ->
      @guests = new TableGuru.Collections.Guests()
      @guests.fetch(success: @render)

    render: =>
      _.each @guests.models, (m)=>
        $(@el).append('<div class="item">
          <img src="' + m.attributes.image_url + '"/>' + m.attributes.name + '</div>')

  guest_list = new TableGuru.Views.GuestList

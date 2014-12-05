$ ->
  class TableGuru.Views.GuestList extends Backbone.View
    el: '#guest_list'

    initialize: ->
      @guests = new TableGuru.Collections.Guests()
      @guests.fetch()
      @render()

    render: =>
      for guest in @guests.models
        $(@el).append('<div class="item">
          <img src="' + guest.image_url + '"/>' + model.name + '</div>')

  guest_list = new TableGuru.Views.GuestList

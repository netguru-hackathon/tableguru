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

  class TableGuru.Views.Furniture extends Backbone.View
    el: '.canvas'

    initialize: ->
      @chairs = new TableGuru.Collections.Chairs()
      @chairs.fetch(success: @render)

    render: =>
      _.each @chairs.models, (m)=>



        $(@el).append('<div class="item">
          <img src="' + m.attributes.image_url + '"/>' + m.attributes.name + '</div>')

  window.furnitureView = new TableGuru.Views.Furniture

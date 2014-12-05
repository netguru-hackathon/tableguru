class TableGuru.Models.Guest extends Backbone.Model

  idAttribute: "_id"

  #url: ->
    #debugger
    #if @id
      #Routes.guest_path(@id)
    #else
      #Routes.guests_path()

class TableGuru.Collections.Guests extends Backbone.Collection
  model: TableGuru.Models.Guest
  url: Routes.guests_path()

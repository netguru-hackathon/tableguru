class TableGuru.Models.Guest extends Backbone.Model

  url: ->
    if @isNew()
      Routes.guests_path()
    else
      Routes.guest_path(@id)

class TableGuru.Collections.Guests extends Backbone.Collection
  model: TableGuru.Models.Guest
  url: Routes.guests_path()

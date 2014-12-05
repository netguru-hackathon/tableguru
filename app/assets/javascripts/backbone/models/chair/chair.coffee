class TableGuru.Models.Chair extends Backbone.Model

  url: ->
    if @isNew()
      Routes.chairs_path()
    else
      Routes.chair_path(@id)

class TableGuru.Collections.Chairs extends Backbone.Collection
  model: TableGuru.Models.Chair
  url: Routes.chairs_path()

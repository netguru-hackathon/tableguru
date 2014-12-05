class TableGuru.Models.Table extends Backbone.Model

  url: ->
    if @isNew()
      Routes.tables_path()
    else
      Routes.table_path(@id)

class TableGuru.Collections.Tables extends Backbone.Collection
  model: TableGuru.Models.Table
  url: Routes.tables_path()

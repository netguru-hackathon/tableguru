class TableGuru.Models.Friendship extends Backbone.Model

  url: ->
    if @isNew()
      Routes.friendships_path()
    else
      Routes.friendship_path(@id)

class TableGuru.Collections.Friendships extends Backbone.Collection
  model: TableGuru.Models.Friendship
  url: Routes.friendships_path()

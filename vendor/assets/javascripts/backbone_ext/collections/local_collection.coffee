class BackboneExt.Collections.LocalCollection extends Backbone.Collection
  initialize: =>
    @searchQuery = ""

  results: =>
    @filter (item) =>
      item.filterTest(@searchQuery)

  search: (query) =>
    if @currentTimeout?
      clearTimeout(@currentTimeout)
      delete @currentTimeout
    @currentTimeout = setTimeout( =>
      @searchQuery = query
      @trigger('reset')
    , 500)


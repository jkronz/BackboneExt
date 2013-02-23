class BackboneExt.Views.TableView extends BackboneExt.View

  initialize: ->
    @collection.on 'sort reset', @renderItems
    @tableRows = []
    super()

  renderItems: =>
    @closeTableRows()
    _.each @collection.results(), @renderItem

  closeTableRows: =>
    _.each @tableRows, (vw) =>
      vw.onClose()
    @tableRows = []

  onClose: =>
    @closeTableRows()
    @collection.off()
    super()
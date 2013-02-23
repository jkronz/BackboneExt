class BackboneExt.View extends Backbone.View

  onClose: =>
    @undelegateEvents()
    @remove()
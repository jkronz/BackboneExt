class BackboneExt.Router extends Backbone.Router
  showView: (view) =>
    if @currentView? and @currentView.onClose
      @currentView.onClose()
    @currentView = view
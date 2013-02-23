class Demo.Main
  constructor: ->
    router = new Demo.Router()
    @router = router
    $(document).on 'click', 'a:not([data-bypass])', (evt) ->
      href = $(this).attr('href')
      protocol = this.protocol + '//'

      if href.slice(protocol.length) != protocol
        evt.preventDefault()
        router.navigate(href, true)

    Backbone.history.start({pushState: true})

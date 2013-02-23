class Demo.Views.Users.Main extends BackboneExt.View
  template: JST['templates/users/main']

  initialize: (options) =>
    @usersTable = new Demo.Views.Users.Table(options)
    @render()

  render: =>
    @$el.html(@template())
    $(".application-container").html(@el)
    @$('.user-table').html(@usersTable.render().el)

  onClose: =>
    @usersTable.onClose()

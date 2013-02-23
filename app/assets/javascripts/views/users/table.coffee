class Demo.Views.Users.Table extends BackboneExt.Views.TableView
  template: JST['templates/users/table']

  initialize: (options) =>
    @collection = options.collection
    super()

  render: =>
    @$el.html(@template())
    @

  renderItem: (user) =>
    rowView = new Demo.Views.Users.TableRow({model: user})
    @tableRows.push(rowView)
    @$("tbody").append(rowView.render().el)


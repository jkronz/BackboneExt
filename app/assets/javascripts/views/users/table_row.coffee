class Demo.Views.Users.TableRow extends BackboneExt.View
  tagName: "tr"
  template: JST['templates/users/table_row']

  initialize: (options) =>
    @model = options.model
    super()

  render: =>
    @$el.html(@template(@model.toJSON()))
    @


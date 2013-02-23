class Demo.Models.User extends Backbone.Model
  url: ->
    if @isNew()
      "/users"
    else
      "/users/#{@get('id')}"

  filterTest: (query) =>
    pattern = new RegExp(query, "i")
    pattern.test(@get('first_name')) or
      pattern.test(@get('last_name')) or
      pattern.test(@get('company')) or
      pattern.test(@get('email')) or
      pattern.test(@get('title'))
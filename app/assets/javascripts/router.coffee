class Demo.Router extends BackboneExt.Router

  routes:
    "users": "users"
    "": "users" #root to users.

  users: =>
    usersCollection = new Demo.Collections.Users()
    usersView = new Demo.Views.Users.Main({collection: usersCollection})
    @showView(usersView)
    usersCollection.fetch()


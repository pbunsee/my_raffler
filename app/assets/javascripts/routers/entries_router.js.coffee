class Raffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new Raffler.Collections.Entries()
    @collection.fetch()
    console.log("@collection in router for entries initialize")
    console.dir(@collection)

  index: ->
    #alert "home page"
    console.log("@collection in router for entries index")
    console.dir(@collection)
    view = new Raffler.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"


class Raffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new Raffler.Collections.Entries()
    @collection.fetch({reset: true})
    # @collection.fetch()
    console.log("@collection in router for entries initialize")
    console.dir(@collection)

    # 'add' - this gets triggered for EACH NEW model (not already in collection)
    # 'change' - this gets triggered for EACH EXISTING model (already in the collection)
    # 'remove' - this gets triggered for EACH model thats no longer in the collection after the fetch()

  index: ->
    #alert "home page"
    console.log("@collection in router for entries index")
    console.dir(@collection)
    view = new Raffler.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"


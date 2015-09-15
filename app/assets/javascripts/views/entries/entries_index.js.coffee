class Raffler.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_entry': 'createEntry'

  initialize: ->
    console.log("@collection in view for entries initialize")
    console.dir(@collection)
    # @collection.on('reset', @render, this)
    # @collection.on('sync', @render, this)
    @collection.on('reset', @render, this)
    @collection.on('add', @appendEntry, this)

  render: ->
    #$(@el).html(@template(entries: @collection))
    $(@el).html(@template())
    @collection.each(@appendEntry)
    this

  createEntry: (event) ->
    event.preventDefault()
    @collection.create name: $('#new_entry_name').val()
    $('#new_entry')[0].reset()

  appendEntry: (entry) ->
    view = new Raffler.Views.Entry(model: entry)
    $('#entries').append(view.render().el)



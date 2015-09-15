class Raffler.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_entry': 'createEntry'

  initialize: ->
    console.log("@collection in view for entries initialize")
    console.dir(@collection)
    # @collection.on('reset', @render, this)
    @collection.on('sync', @render, this)

  render: ->
    console.log("@collection in view for entries render")
    console.dir(@collection)
    $(@el).html(@template(entries: @collection))
    this

  createEntry: (event) ->
    event.preventDefault()
    @collection.create name: $('#new_entry_name').val()


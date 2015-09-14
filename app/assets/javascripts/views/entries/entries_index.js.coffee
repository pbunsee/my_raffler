class Raffler.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

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


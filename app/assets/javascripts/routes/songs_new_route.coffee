Studiovasco.SongsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('song')

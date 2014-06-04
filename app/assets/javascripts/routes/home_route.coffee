Studiovasco.HomeRoute = Ember.Route.extend
  model: ->
    @store.find('song')

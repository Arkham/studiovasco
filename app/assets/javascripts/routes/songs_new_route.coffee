Studiovasco.SongsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('song')

  setupController: (controller, model) ->
    currentPosition = controller.get('songs').get('length')
    model.set('position', currentPosition)
    controller.set('model', model)

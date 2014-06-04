Studiovasco.SongsRoute = Ember.Route.extend
  model: ->
    @store.find('song')

  afterModel: (songs) ->
    if songs.get('length') > 0
      @transitionTo('song', songs.get('firstObject'))

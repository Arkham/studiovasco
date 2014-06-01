Studiovasco.SongsController = Ember.ArrayController.extend
  songsCount: (->
    @get('length')
  ).property('length')


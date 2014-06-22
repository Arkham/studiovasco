Studiovasco.HomeController = Ember.ArrayController.extend
  filteredSongs: (->
    @get('model').filterBy('title')
  ).property('@each.title')

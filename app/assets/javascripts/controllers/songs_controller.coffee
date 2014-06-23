Studiovasco.SongsController = Ember.ArrayController.extend
  filteredSongs: (->
    @get('model').filterBy('title')
  ).property('@each.title')

  updateSortOrder: (indexes) ->
    @beginPropertyChanges()

    @get('filteredSongs').forEach (item) ->
      index = indexes[item.get('id')]
      item.set('position', index)
      item.save()

    @endPropertyChanges()

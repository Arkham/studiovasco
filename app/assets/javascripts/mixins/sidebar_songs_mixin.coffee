Studiovasco.SidebarSongsMixin = Ember.Mixin.create
  filteredSongs: (->
    @get('model').filterBy('title').sortBy('position')
  ).property('@each.title')

  updateSortOrder: (indexes) ->
    @beginPropertyChanges()

    @get('filteredSongs').forEach (item) ->
      index = indexes[item.get('id')]
      item.set('position', index)
      item.save()

    @endPropertyChanges()

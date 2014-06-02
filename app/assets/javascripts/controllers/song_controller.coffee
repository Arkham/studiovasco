Studiovasco.SongController = Ember.ObjectController.extend
  actions:
    editTitle: ->
      @set('isEditing', true)

  isEditing: false

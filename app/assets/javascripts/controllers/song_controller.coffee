Studiovasco.SongController = Ember.ObjectController.extend
  actions:
    editTitle: ->
      @set('isEditing', true)

    save: ->
      @set('isEditing', false)
      @get('model').save()

  isEditing: false

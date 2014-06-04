Studiovasco.SongController = Ember.ObjectController.extend
  actions:
    editTitle: ->
      @set('isEditingTitle', true)

    editText: ->
      @set('isEditingText', true)

    save: ->
      @set('isEditingTitle', false)
      @set('isEditingText', false)
      @get('model').save()

  isEditingTitle: false
  isEditingText: false

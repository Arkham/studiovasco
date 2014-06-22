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

    delete: ->
      if window.confirm("Are you sure you want to delete this song?")
        @get('model').deleteRecord()
        @get('model').save().then =>
          @transitionToRoute('home')

  isEditingTitle: false
  isEditingText: false

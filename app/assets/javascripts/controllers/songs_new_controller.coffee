Studiovasco.SongsNewController = Ember.ObjectController.extend
  needs: "songs"
  songs: Ember.computed.alias("controllers.songs")

  actions:
    create: ->
      song = @get('model')

      onSuccess = (song) =>
        @transitionToRoute('song', song)

      onFailure = (song) ->
        console.log "onFailure"

      song.save().then(onSuccess, onFailure)

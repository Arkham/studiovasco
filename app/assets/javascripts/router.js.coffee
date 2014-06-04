Studiovasco.Router.map ->
  @route('home', { path: '/' })

  @resource('songs', ->
    @route('new')
    @resource('song', { path: '/:song_id' })
  )

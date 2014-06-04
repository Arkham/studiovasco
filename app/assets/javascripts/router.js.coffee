Studiovasco.Router.map ->
  @resource('songs', { path: '/' }, ->
    @resource('song', { path: '/:song_id' })
  )

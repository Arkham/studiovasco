Studiovasco.SidebarSongsView = Ember.View.extend
  templateName: 'sidebar_songs'

  didInsertElement: ->
    controller = @get('controller')

    @.$('.sortable').sortable
      update: (event, ui) ->
        indexes = {}

        $(@).find('.item').each (index) ->
          indexes[$(@).data('id')] = index + 1

        controller.updateSortOrder(indexes)

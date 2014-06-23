Studiovasco.SongsView = Ember.View.extend
  didInsertElement: ->
    controller = @get('controller')

    @.$('.sortable').sortable
      update: (event, ui) ->
        indexes = {}

        $(@).find('.item').each (index) ->
          indexes[$(@).data('id')] = index + 1

        controller.updateSortOrder(indexes)

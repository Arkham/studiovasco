Studiovasco.EditTitleView = Ember.TextField.extend
  didInsertElement: ->
    @$().focus()

Ember.Handlebars.helper('edit-title', Studiovasco.EditTitleView)

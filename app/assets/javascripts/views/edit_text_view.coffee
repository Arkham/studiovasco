Studiovasco.EditTextView = Ember.TextArea.extend
  didInsertElement: ->
    @$().focus()

Ember.Handlebars.helper('edit-text', Studiovasco.EditTextView)


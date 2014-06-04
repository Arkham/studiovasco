Studiovasco.HomeView = Ember.View.extend
  didInsertElement: ->
    Ember.run.next ->
      Holder.run()

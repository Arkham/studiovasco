#= require jquery
#= require bootstrap
#= require handlebars
#= require ember
#= require ember-data
#= require showdown
#= require holderjs
#= require_self
#= require studiovasco

window.Studiovasco = Ember.Application.create
  LOG_TRANSITIONS: true

$ ->
  token = $('meta[name="csrf-token"]').attr('content')
  $.ajaxPrefilter (options, originalOptions, xhr) ->
    xhr.setRequestHeader('X-CSRF-Token', token)

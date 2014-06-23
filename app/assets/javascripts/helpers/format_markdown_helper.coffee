showdown = new Showdown.converter()

Ember.Handlebars.helper('format-markdown', (input) ->
  sanitized = []

  for token in input.split("\n")
    token += "<br>" if token.match(/^[a-z]/i)
    sanitized.push token

  return new Handlebars.SafeString(showdown.makeHtml(sanitized.join("\n")))
)

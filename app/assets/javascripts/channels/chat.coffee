App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    #action1
  disconnected: ->
    #action2
  recieved: (data) ->
    @('#comments').append("- #{data.add_comment}</br>")

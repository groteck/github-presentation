$ ->
  wsUri = "ws://langc-socket.herokuapp.com/"

  realConnection = (wsUri) ->
    window.socket = new WebSocket(wsUri)
    socket.onmessage = (evt) -> 
      if evt.data == 'left'
        Reveal.left()
      else if evt.data == 'right'
        Reveal.right()
      else if evt.data == 'up'
        Reveal.up()
      else if evt.data == 'down'
        Reveal.down()
    socket.onclose = -> setTimeout (-> realConnection wsUri), 5000

  realConnection wsUri

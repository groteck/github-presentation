#= require jquery.min

$ ->
  wsUri = "ws://langc-socket.herokuapp.com/"

  controllersConnection = (wsUri) ->
    window.socket = new WebSocket(wsUri)
    socket.onclose = -> setTimeout (-> controllersConnection wsUri), 5000

  controllersConnection wsUri
  
  $('#btn-left').click ->
    socket.send("left")

  $('#btn-right').click ->
    socket.send("right")

  $('#btn-up').click ->
    socket.send("up")

  $('#btn-down').click ->
    socket.send("down")

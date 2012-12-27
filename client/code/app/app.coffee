# Listen out for blink:button events coming from the server
ss.event.on "blink:button", (message) ->
  switch message
    when '+1' then $('#btn1').css('backgroundColor', 'green')
    when '-1' then $('#btn1').css('backgroundColor', 'white')
    when '+2' then $('#btn2').css('backgroundColor', 'red')
    when '-2' then $('#btn2').css('backgroundColor', 'white')

# Handle clicks on the LED buttons

$("#led1").on "click", (event) ->
  send(if event.target.checked then 'A' else 'a')

$("#led2").on "click", (event) ->
  send(if event.target.checked then 'B' else 'b')

# Private method
send = (command, cb) ->
  if command
    ss.rpc "serial.sendCommand", command, () -> # ignore status

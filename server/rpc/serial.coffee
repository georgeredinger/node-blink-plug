serialport = require 'serialport'
serial = null

# Export the serial setup code, to be started from the main app.js
exports.startSerial = (ss) ->
  
  serial = new serialport.SerialPort '/dev/tty.usbserial-A40119DX'
    baudrate: 57600
    parser: serialport.parsers.readline '\r\n'

  serial.on 'data', (data) ->
    ss.api.publish.all 'blink:button', data  if data

exports.actions = (req, res, ss) ->
    
  # can be called from the client as: ss.rpc('serial.sendCommand', message)
  sendCommand: (message) ->
    serial.write message  if message
    res true

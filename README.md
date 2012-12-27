# Node-blink-plug

Demo project for controlling a [Blink Plug](http://jeelabs.org/bp) using
[Node.js](http://nodejs.org/) and [SocketStream](http://www.socketstream.org).

See <http://jeelabs.org/2012/12/23/connecting-a-blink-plug-to-a-web-browser/>.

## Installation

See <http://jeelabs.org/2012/12/24/setting-up-a-socketstream-app/> on how to
set up Node and NPM, then clone this repository and prepare it for use with:

    $ git clone https://github.com/jcw/node-blink-plug
    $ cd node-blink-plug
    $ npm install
        
## Usage

You'll need to adjust the name of the serial port to match your setup in the
file `server/rpc/serial.coffee`, then start the server using either of these:

    $ coffee app.coffee
    $ nodemon app.coffee
    
Then point your browser at <http://localhost:3000/>.

## About

This project was created using "`socketstream new`" so that's probably the best
place to start looking for more information. The serial interface to talk to a
JeeNode uses the [serialport](https://npmjs.org/package/serialport) package.

## License

MIT
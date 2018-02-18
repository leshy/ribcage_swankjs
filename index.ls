require! {
  leshdash
  backbone4000: backbone
}
  
exports.lego = backbone.Model.extend4000 do
  after: 'logger'
  init: (callback) ->
    @env.swankjs = require("swank-js/client/node").setupNodeJSClient({})
    global.i = require('sys').inspect
    global.env = @env
    global.leshdash = leshdash
    global <<< @env
    global <<< leshdash
    callback()

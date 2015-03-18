os = require 'os'
networkInterfaces = os.networkInterfaces()

module.exports = ->
  for _, inter  of networkInterfaces
    for item in inter
      if item.family is 'IPv4' and not item.internal
        return item.address

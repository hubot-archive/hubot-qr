# Description:
#   Turn a URL into a QR Code
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot: qr me <url> - turn a URL into a QR Code
#
# Notes:
#   Makes use of Google's ChartAPI
#
# Author:
#  John Hamelink <john@farmer.io>


module.exports = (robot) ->
  robot.hear /qr me (.+)/i, (msg) ->
    url = msg.match[1]
    msg.send "https://chart.googleapis.com/chart?chs=178x178&cht=qr&chl=" + encodeURIComponent(url)

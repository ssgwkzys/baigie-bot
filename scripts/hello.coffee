module.exports = (robot) ->
  robot.hear /まき/, (msg) ->
    msg.send "何の用ですか"

  robot.hear /(sushi|すし|スシ|寿司)/i, (msg) ->
    msg.send "スシが食べたい。"

module.exports = (robot) ->
  robot.hear /@mr.bg/, (msg) ->
    msg.send msg.random [
        "こんにちは",
        "Hello",
        ":grinning:",
        "なんでしょうか？"        
    ]

  robot.hear /(sushi|すし|スシ|寿司)/i, (msg) ->
    msg.send "私はマグロが好きです。"
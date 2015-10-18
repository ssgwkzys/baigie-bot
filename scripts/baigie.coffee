module.exports = (robot) ->
  robot.hear /@baigie-bot/, (msg) ->
    msg.send msg.random [
        "こんにちは",
        "Hello",
        ":grinning:",
        "なんでしょうか？"        
    ]

  robot.hear /(sushi|すし|スシ|寿司)/i, (msg) ->
    msg.send "私はマグロが好きですよ"

  robot.hear /(承知|了解)/i, (msg) ->
    msg.send "承知いたしました。"
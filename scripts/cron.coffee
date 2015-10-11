cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '*/5 * * * * 1-5', () =>
    robot.send {room: "#baigie-bottest"}, "時間ですyo!"
    # console.log "時かん"
  	, null, true, "Asia/Tokyo"
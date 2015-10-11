cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 30 6 * * 1-5', () =>
    robot.send {room: "#baigie-bottest"}, "時間ですyo!"
  	, null, true, "Asia/Tokyo"
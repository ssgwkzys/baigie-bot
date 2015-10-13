cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 30 21 * * 1-5', () =>
    robot.send {room: "#baigie-all"}, ":clap:そろそろ終業のお時間です:clap:"
  	, null, true, "Asia/Tokyo"

  new cron '0 30 18 * * 3', () =>
    robot.send {room: "#baigie-all"}, ":clap:本日ノー残業デーです:grinning:"
  	, null, true, "Asia/Tokyo"
# CronJob = require('cron').CronJob
# job = new CronJob('00 30 11 * * 1-5', (->

#   ###
#   # Runs every weekday (Monday through Friday)
#   # at 11:30:00 AM. It does not run on Saturday
#   # or Sunday.
#   ###

#   return
# ), (->

#   ### This function is executed when the job stops ###

#   return
# ), true, timeZone)

cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 50 19 * * 1-7', () =>
    robot.send {room: "#baigie-bottest"}, "時間ですね"
  , null, true, "Asia/Tokyo"
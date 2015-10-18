# cron = require('cron').CronJob

# module.exports = (robot) ->
#   new cron '*/4 * * * * 0', () =>
#     robot.send {room: "#baigie-bottest"}, ":clap:そろそろ終業のお時間です:clap:"
#   	, null, true, "Asia/Tokyo"

CronJob = require("cron").CronJob

module.exports = (robot) ->

	job = new CronJob(
		cronTime: "30 41 14 * * 0-5"
		onTick: ->
			robot.send {room: "#baigie-bottest"}, ":clap:そろそろ終業のお時間です:clap:"
			, null, true, "Asia/Tokyo"
			return
		start: false
	)

	job02 = new CronJob(
		cronTime: "0 41 14 * * 0"
		onTick: ->
		    robot.send {room: "#baigie-bottest"}, ":clap:ぱん:clap:"
	   		, null, true, "Asia/Tokyo"
		    return
		start: false
		)

	job.start()
	job02.start()
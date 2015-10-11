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



# cron = require('cron').CronJob

# module.exports = (robot) ->
#   new cron '*/5 * * * * 1-5', () =>
#     robot.send {room: "#baigie-bottest"}, "時間ですyo!"
#     # console.log "時かん"
#   	, null, true, "Asia/Tokyo"




# cronJob = require('cron').CronJob
# # 毎秒実行
# cronTime = '*/5 * * * * *'
# # 一度だけ実行したい場合、Dateオブジェクトで指定も可能
# # var cronTime = new Date();
# module.exports = (robot) ->
# 	job = new cronJob(
# 	  cronTime: cronTime
# 	  onTick: ->
# 	    robot.send {room: "#baigie-bottest"}, "時間ですyo!"
# 	    return
# 	  onComplete: ->
# 	    console.log 'onComplete!'
# 	    return
# 	  start: false
# 	  timeZone: 'Japan/Tokyo')
# 	#ジョブ開始
# 	job.start()
# 	#ジョブ停止
# 	#job.stop();



CronJob = require('cron').CronJob

module.exports = (robot) ->
	job = new CronJob('*/5 * * * * *', (->

	  robot.send {room: "#baigie-bottest"}, "yo!ze"

	  return
	), (->

	  ### This function is executed when the job stops ###

	  return
	), true, "Asia/Tokyo")




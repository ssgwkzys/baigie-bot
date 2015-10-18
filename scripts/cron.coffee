# cron = require('cron').CronJob

# module.exports = (robot) ->
#   new cron '*/4 * * * * 0', () =>
#     robot.send {room: "#baigie-bottest"}, ":clap:そろそろ終業のお時間です:clap:"
#   	, null, true, "Asia/Tokyo"

CronJob = require("cron").CronJob

# d = new Date;
# module.exports = (robot) ->
# 	workTimeCall = new CronJob(
# 		# cronTime: "0 0 10 * * 1,2,4,5"
# 		cronTime: "*/5 0-59 9-22 * * 0,1,2,3,4,5,6"
# 		onTick: ->
# 			# if d.getMinutes() == 59
# 				robot.send {room: "#baigie-bottest"}, ""+d.getSeconds()
# 				, null, true, "Asia/Tokyo"
# 				return

# 		start: false
# 	)


module.exports = (robot) ->

	# 朝のコール -------------------- #
	startWork = new CronJob(
		# cronTime: "0 0 10 * * 1,2,4,5"
		cronTime: "0 34 * * * 0,1,2,3,4,5,6"
		onTick: ->
			robot.send {room: "#baigie-bottest"}, "おはようございます。タイムカードは忘れていないですか？今日も一日がんばりましょう！:grinning:"
			, null, true, "Asia/Tokyo"
			return
		start: false
	)


	# お昼のコール -------------------- #
	lunchCall = new CronJob(
		# cronTime: "0 0 12 * * 1-5"
		cronTime: "0 34 * * * 0,1,2,3,4,5,6"
		onTick: ->
			robot.send {room: "#baigie-bottest"}, "12時になりました。キリのいいところで、お昼にしましょう！:hamburger:"
			, null, true, "Asia/Tokyo"
			return
		start: false
	)


	# 夕方のコール -------------------- #
	eveningCall = new CronJob(
		# cronTime: "0 0 18 * * 1,2,4,5"
		cronTime: "0 34 * * * 0,1,2,3,4,5,6"
		onTick: ->
			robot.send {room: "#baigie-bottest"}, ":muscle:18時になりました。ラストスパートがんばりましょう。帰れる人は早く帰りましょう！"
			, null, true, "Asia/Tokyo"
			return
		start: false
	)


	# 終業コール -------------------- #
	endWork = new CronJob(
		# cronTime: "0 30 21 * * 1,2,4,5"
		cronTime: "0 34 * * * 0,1,2,3,4,5,6"
		onTick: ->
			robot.send {room: "#baigie-bottest"}, ":clap:まもなく退社の時間です。日報の用意をはじめましょう。タイムカードも忘れずに！:clap:"
			, null, true, "Asia/Tokyo"
			return
		start: false
	)

	# ノー残業デー（01:朝, 02:夕）-------------------- #
	noOvertime01 = new CronJob(
		# cronTime: "0 0 10 * * 3"
		cronTime: "0 34 * * * 0,1,2,3,4,5,6"
		onTick: ->
		    robot.send {room: "#baigie-bottest"}, "本日は19時退社デーです。19時にちゃんとあがれるように仕事を調整しましょう！:grinning:"
	   		, null, true, "Asia/Tokyo"
		    return
		start: false
	)

	noOvertime02 = new CronJob(
		# cronTime: "0 0 18 * * 3"
		cronTime: "0 34 * * * 0,1,2,3,4,5,6"
		onTick: ->
		    robot.send {room: "#baigie-bottest"}, ":clap:本日は19時退社デーです。あと1時間で退社時間になります。仕事が残っている方は少し急ぎましょう！:clap:"
	   		, null, true, "Asia/Tokyo"
		    return
		start: false
	)


	# 掃除（01:月, 02:木）-------------------- #
	cleanUp01 = new CronJob(
		# cronTime: "0 55 9 * * 1"
		cronTime: "0 34 * * * 0,1,2,3,4,5,6"
		onTick: ->
		    robot.send {room: "#baigie-bottest"}, "まもなく掃除の時間です。PCの立ち上げが終わった人から、早めに取り掛かりましょう！:clap:"
	   		, null, true, "Asia/Tokyo"
		    return
		start: false
	)

	cleanUp02 = new CronJob(
		# cronTime: "0 55 9 * * 4"
		cronTime: "0 34 * * * 0,1,2,3,4,5,6"
		onTick: ->
		    robot.send {room: "#baigie-bottest"}, "まもなく木曜日の掃除の時間です。動ける人から早めに取り掛かりましょう！:clap:"
	   		, null, true, "Asia/Tokyo"
		    return
		start: false
	)

	# MTG -------------------- #
	projectMtg = new CronJob(
		# cronTime: "0 55 15 * * 5"
		cronTime: "0 34 * * * 0,1,2,3,4,5,6"
		onTick: ->
		    robot.send {room: "#baigie-bottest"}, ":clap:まもなくプロジェクトMTGの時間です。PCやディスプレイの準備は早めに行い、16:00から始められるようにしましょう！:clap:"
	   		, null, true, "Asia/Tokyo"
		    return
		start: false
	)

	weeklyMtg = new CronJob(
		# cronTime: "0 25 13 * * 1"
		cronTime: "0 34 * * * 0,1,2,3,4,5,6"
		onTick: ->
		    robot.send {room: "#baigie-bottest"}, ":clap:まもなく週間MTGの時間です。PCやディスプレイの準備は早めに行い、13:30から始められるようにしましょう！:clap:"
	   		, null, true, "Asia/Tokyo"
		    return
		start: false
	)

	studyMtg = new CronJob(
		# cronTime: "0 55 9 * * 2"
		cronTime: "0 34 * * * 0,1,2,3,4,5,6"
		onTick: ->
		    robot.send {room: "#baigie-bottest"}, ":clap:まもなく勉強会の時間です。PCやディスプレイの準備は早めに行い、10:00から始められるようにしましょう！:clap:"
	   		, null, true, "Asia/Tokyo"
		    return
		start: false
	)

	# # 月について -------------------- #
	# monthStart = new CronJob(
	# 	# cronTime: "0 0 10 1 * 1-5"
	#	cronTime: "0 8 * * * 0,1,2,3,4,5,6"
	# 	onTick: ->
	# 	    robot.send {room: "#baigie-bottest"}, ":今日から●月です。新し月に、新しい目標をもってがんばりましょう！:clap:"
	#    		, null, true, "Asia/Tokyo"
	# 	    return
	# 	start: false
	# )




	startWork.start()
	lunchCall.start()
	eveningCall.start()
	endWork.start()

	noOvertime01.start()
	noOvertime02.start()

	cleanUp01.start()
	cleanUp02.start()

	projectMtg.start()
	weeklyMtg.start()
	studyMtg.start()

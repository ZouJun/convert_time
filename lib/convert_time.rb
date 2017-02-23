require 'date'

class ConvertTime

	class << self
		def convert(date)
			type = date.class
			if date && type != Date && (type == DateTime || type == Time)
				weeks = date.to_date
			elsif type == Date
				weeks = date
			else
				return '参数非法'
			end
			ConvertTime.convert_to_week(weeks)
		end

		def convert_to_week(weeks)
			week = weeks.strftime("%A")
			case week
			when 'Monday'
				return '星期一'
			when 'Tuesday'
				return '星期二'
			when 'Wednesday'
				return '星期三'
			when 'Thursday'
				return '星期四'
			when 'Friday'
				return '星期五'
			when 'Saturday'
				return '星期六'
			when 'Sunday'
				return '星期天'
			else
				return '参数非法'
			end
		end
	end
end
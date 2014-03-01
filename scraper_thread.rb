require 'open-uri'
require 'json'
require 'benchmark'

  def coursera_scraper
    coursera_feed = JSON.parse(open("https://www.coursera.org/maestro/api/topic/list?full=1").read)
    coursera_feed.each do |course|
    	#course["courses"].each do |course_instance|
    		#some courses are in the future and don't have any dates
    		#if !course_instance["start_day"].blank? || !course_instance["start_date"].blank?
    		#	start_date = Date.new(course_instance["start_year"], course_instance["start_month"], course_instance["start_day"])
    		#	end_date = start_date + (ChronicDuration.parse(course_instance["duration_string"])/60/60/24)
    		#end
    	#end
      #puts course["name"], course["short_description"],"Beginner", 0.0, course["large_icon"]
    end
  end

  def multi_thread(number_of_thread,array)
  end

Benchmark.bm do |x|
#urls is the same array of site names used before
  #run sequential read method
  x.report("Seq:") { coursera_scraper }
  #run sequential read method
  #x.report("Seq:") { seqRead(urls) }
end


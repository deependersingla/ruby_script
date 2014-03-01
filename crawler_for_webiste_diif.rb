require 'mechanize'
#require 'debugger'
require 'open-uri'
require 'json'
load 'sendemail.rb'

agent = Mechanize.new

def check_validation(name,description,price,image_href,course_url)
  if name.split("").count < 2 
	return 0,"name"
  end 
  if description.split("").count < 3
	return 0,"description"
  end
  if price == 0.0
	return 0,"price"
  end
  uri = URI.parse(image_href)  ## search for htt
  if !(%w(http https).include?(uri.scheme)) and !(%w(png jpg).include?(uri.to_s.split(".").last))
    return 0,"image_link"
  end
  uri = URI.parse(course_url)
  if !(%w(http https).include?(uri.scheme))
    return 0,"course_url"
  end
  return 1,"everything fine"
end


### Check Udemy_scraper
page          = "https://www.udemy.com/courses/Technology/?view=list"
course_page   = agent.get(page)
course        = course_page.search("li.course-card-wide")[0]
name          = course.css('span.title').text
description   = course.css('span.desc').text
price         = course.css('span.price').text.gsub(/[^0-9]/, '').to_f
image_href    = course.css('span.thumb img').first['src']
course_url    = course.css('a').first["href"]
status,string = check_validation(name,description,price,image_href,course_url)
if status == 0
	SendEmail.send_email("udemy",string)
end

#######check edx crawler
page          = "https://www.edx.org/course-list/allschools/social-sciences/allcourses"
course_page   = agent.get(page)
course        = course_page.search("div.course-tile")[0]
name          = course.css('h2.course-title strong').text
description   = course.css('div.course-subtitle').text
price         = 0.0
image_href    = course.css('div.col-right-courses div.image img').first['src']
course_url    = course.css('h2.course-title strong a').first['href']
status,string = check_validation(name,description,price,image_href,course_url)
if status == 0
	SendEmail.send_email("edx",string)
end

########check coursera crawler
coursera_feed = JSON.parse(open("https://www.coursera.org/maestro/api/topic/list?full=1").read)
course        = coursera_feed[0]
name          = course["name"]
description   = course["short_description"]
price         = 0.0
image_href    = course["large_icon"]
course_url    = course["courses"][0]["home_link"]
status,string = check_validation(name,description,price,image_href,course_url)
if status == 0
	SendEmail.send_email("coursera",string)
end

#########check udacity crawler
raw_udacity_feed    = open("https://www.udacity.com/api/nodes?depth=2&fresh=false&keys%5B%5D=course_catalog&projection=catalog").read
#udacity has some weird characters at start of feed
raw_udacity_feed[0] = ''
raw_udacity_feed[0] = ''
raw_udacity_feed[0] = ''
raw_udacity_feed[0] = ''
udacity_feed = JSON.parse(raw_udacity_feed)
udacity_feed.first.second.first.second.each do |course|
  course = course.second
  if course.has_key?("catalog_entry") && !course["catalog_entry"].nil? && course["catalog_entry"].length > 0
    if course["catalog_entry"]["_image"] != nil
    	puts course["title"], course["catalog_entry"]["short_summary"],course["key"], course["catalog_entry"]["level"].capitalize,"https:" + course["catalog_entry"]["_image"]["serving_url"],"https://www.udacity.com/course/" + course["key"]
    	break
    end
  end  	


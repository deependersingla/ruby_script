require "mechanize"
page = "https://www.udemy.com/courses/Social-Sciences/?view=list&lang=en"
agent = Mechanize.new
mec_page  = agent.get(page)
courses = mec_page.search("li.course-card-wide")
courses.each do |course|
	puts "Name", course.css('span.title').text
	puts "Description", course.css('span.desc').text
	puts "Price", course.css('span.price').text
	puts "Image href", course.css('span.thumb img').first['src']
end
require 'mechanize'
require 'benchmark'

subject_pages = [
            { url: "https://www.edx.org/course-list/allschools/biology-life-sciences/allcourses", name: "Biology & Life Sciences"},
            { url: "https://www.edx.org/course-list/allschools/business-management/allcourses", name: "Business & Management"},
            { url: "https://www.edx.org/course-list/allschools/chemistry/allcourses", name: "Chemistry"},
            { url: "https://www.edx.org/course-list/allschools/communication/allcourses", name: "Communication"},
            { url: "https://www.edx.org/course-list/allschools/computer-science/allcourses", name: "Computer Science"},
            { url: "https://www.edx.org/course-list/allschools/economics-finance/allcourses", name: "Economics & Finance"},
            { url: "https://www.edx.org/course-list/allschools/electronics/allcourses", name: "Electronics"},
            { url: "https://www.edx.org/course-list/allschools/energy-earth-sciences/allcourses", name: "Energy & Earth Sciences"},
            { url: "https://www.edx.org/course-list/allschools/engineering/allcourses", name: "Engineering"},
            { url: "https://www.edx.org/course-list/allschools/environmental-studies/allcourses", name: "Environmental Studies"},
            { url: "https://www.edx.org/course-list/allschools/ethics/allcourses", name: "Ethics"},
            { url: "https://www.edx.org/course-list/allschools/food-nutrition/allcourses", name: "Food & Nutrition"},
            { url: "https://www.edx.org/course-list/allschools/health-safety/allcourses", name: "Health & Safety"},
            { url: "https://www.edx.org/course-list/allschools/history/allcourses", name: "History"},
            { url: "https://www.edx.org/course-list/allschools/humanities/allcourses", name: "Humanities"},
            { url: "https://www.edx.org/course-list/allschools/law/allcourses", name: "Law"},
            { url: "https://www.edx.org/course-list/allschools/literature/allcourses", name: "Literature"},
            { url: "https://www.edx.org/course-list/allschools/math/allcourses", name: "Math"},
            { url: "https://www.edx.org/course-list/allschools/medicine/allcourses", name: "Medicine"},
            { url: "https://www.edx.org/course-list/allschools/music/allcourses", name: "Music"},
            { url: "https://www.edx.org/course-list/allschools/philosophy/allcourses", name: "Philosophy"},
            { url: "https://www.edx.org/course-list/allschools/physics/allcourses", name: "Physics"},
            { url: "https://www.edx.org/course-list/allschools/science/allcourses", name: "Science"},
            { url: "https://www.edx.org/course-list/allschools/social-sciences/allcourses", name: "Social Sciences"},
            { url: "https://www.edx.org/course-list/allschools/statistics-data-analysis/allcourses", name: "Statistics & Data Analysis"}
        ]
def sequential_scraping(subject_pages)
  agent = Mechanize.new
  subject_pages.each do |subject_page|
    page = agent.get(subject_page[:url])
    courses = page.search("div.course-tile")
    courses.each do |course|
      #puts course
    end
  end
end

def paralled_scraping(subject_pages)
	agent = Mechanize.new
	thread_list = []
	subject_pages.each do |subject_page| 
    thread_list  << Thread.new { 	#add a new thread to
							#download each subject_page
		page = agent.get(subject_page[:url])
    courses = page.search("div.course-tile")
    courses.each do |course|
      #puts course
    end
    }
  end
  thread_list.each {|x| x.join}
end

Benchmark.bm do |x|
#urls is the same array of site names used before
  #run sequential read method
  x.report("Seq:") { sequential_scraping(subject_pages) }
  #run sequential read method
  x.report("parallel:") { paralled_scraping(subject_pages) }
end



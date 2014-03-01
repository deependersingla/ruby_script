require 'open-uri' #for open
require 'benchmark'
def conRead(urls) 	#urls is an array of string 
				#containing website urls
  thread_list = [] #keep track of our threads
  urls.each do |f| 
    thread_list  << Thread.new { 	#add a new thread to
							#download each site
      open(f) do |x|
         x.read 
      end
      puts "read: " + f  #show what we’ve done
    }
  end
  thread_list.each {|x| x.join} #wait for each thread 
						  #to complete
end
urls = [] #set up an array of urls
urls << "http://google.com"
urls << "http://slashdot.com"
urls << "http://dreamincode.net"
urls << "http://xkcd.com"
urls << "http://engadget.com"
urls << "http://lifehacker.com"

#conRead(urls) #read them concurrently
def seqRead(urls) 
  urls.each do |f|
    open(f) do |x|
      x.read
    end
    puts "read: " + f
  end
end
#seqRead(urls)
Benchmark.bm do |x|
#urls is the same array of site names used before
  #run concurrent read method
  x.report("Thr:") { conRead(urls) }
  #run sequential read method
  x.report("Seq:") { seqRead(urls) }
end


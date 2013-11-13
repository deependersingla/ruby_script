require 'rubygems'
require 'cgi'
require 'httparty'
require 'json'
require 'addressable/uri'


d=ARGV
API_KEY = "AIzaSyDjbxLFqYyROvk_IPJlqepiXk3NNuZdoNA"
url = Addressable::URI.parse('https://www.googleapis.com/freebase/v1/search')
url.query_values = {
        'query' => ARGV,
        #'lang'  => "hi",
        'key'=> API_KEY
}
response = HTTParty.get(url, :format => :json)
p url
response['result'].each { |topic|
  puts topic['name']
} 
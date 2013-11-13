require 'rubygems'
require 'cgi'
require 'httparty'
require 'json'
require 'addressable/uri'

API_KEY = "AIzaSyDjbxLFqYyROvk_IPJlqepiXk3NNuZdoNA"
query = [{'id' => nil, 'name' => nil, 'type' => '/astronomy/planet'}]
url = Addressable::URI.parse('https://www.googleapis.com/freebase/v1/mqlread')
url.query_values = {
        'query' => query.to_json,
        'key'=> API_KEY
}
response = HTTParty.get(url, :format => :json)
response['result'].each { |topic|
  puts topic['name']
} 
require 'rubygems'
require 'cgi'
require 'httparty'
require 'json'
require 'addressable/uri'


API_KEY = "AIzaSyDjbxLFqYyROvk_IPJlqepiXk3NNuZdoNA"
topic_id = '/m/0kbs3bj'
url = Addressable::URI.parse('https://www.googleapis.com/freebase/v1/topic' + topic_id)
url.query_values = {
        'key'=> API_KEY
}
topic = HTTParty.get(url, :format => :json)
puts topic['property']['/type/object/name']['values'][0]['value']

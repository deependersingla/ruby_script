require "rubygems"
require "JSON"
require "net/https"

api_key = '1dMvohQt.GMgPSsefi0uO0BOwPsDMobl'
workspace_id = 4304452366627
assignee = 'deepender281190@gmail.com'

p api_key
puts assignee
# set up HTTPS connection
uri = URI.parse("https://app.asana.com/api/1.0/tasks")
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER
p uri.host
p uri.port

# set up the request
header = {
  "Content-Type" => "application/json"
}

# above set up the content type of request to application/json


req = Net::HTTP::Post.new(uri.path, header)
req.basic_auth(api_key, '')
req.body = {
  "data" => {
    "workspace" => workspace_id,
    "name" => "Hello World!",
    "assignee" => assignee
  }
}.to_json()

# issue the request
res = http.start { |http| http.request(req) }

# output
body = JSON.parse(res.body)
if body['errors'] then
  puts "Server returned an error: #{body['errors'][0]['message']}"
else
  puts "Created task with id: #{body['data']['id']}"
end
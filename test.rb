require 'json'

# file.json には [1, 2, 3, {"foo" : "bar"}] と書かれているとき
open("test.json") do |io|
	puts JSON.load(io)
	#=> [1, 2, 3, {"foo"=>"bar"}]
end

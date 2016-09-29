require 'json'

org_text = File.read('text-json.js')
json = JSON.parse(org_text)
new_hash = Hash.new 

keys = ['module', 'exports','Id', 'Title', 'Text', 'Info', 'For', 'Against']
new_words = ['lorem', 'ipsum']

json.each do |item|
    item.each do |key, value|
        puts 'key, value : ' , key , value
        if value.is_a? Integer
            new_hash[key] = value
        else
            new_hash[key] = new_words[rand(0..2)]
        end
    end
end

puts JSON.generate(new_hash)
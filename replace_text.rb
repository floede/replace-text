org_text = File.read('text-short.js')
word_list = Array.new
new_file = String.new 

exceptions = ['module', 'exports','Id', 'Title', 'Text', 'Info', 'For', 'Against']
new_words = ['lorem', 'ipsum']


org_text.scan(/\b[^\d\W]+\b/) do |word|
    unless exceptions.include? word
        word_list << word    
    end  
end

def replace_words(word_list, org_text, new_words)
    word_list.each do |word|
        puts 'word: ', word
        org_text.sub! word, new_words[0]
    end
end

replace_words(word_list, org_text, new_words)

/org_text.sub! 'blevet', 'test'/
puts org_text
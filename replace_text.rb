# encoding: UTF-8

org_text= File.read('text-short.js', :encoding => 'utf-8')
word_list = Array.new
new_file = String.new 

exceptions = ['module', 'exports','Id', 'Title', 'Text', 'Info', 'For', 'Against']
new_words = [
    'Lorem', 'ipsum', 'dolor', 'sit', 'amet,', 'consectetur', 'adipiscing', 'elit.', 'Integer', 'ullamcorper', 'sem', 'non', 'diam', 'imperdiet', 'porttitor.', 'Morbi', 'egestas', 'mauris', 'lorem,', 'a', 'dictum', 'felis', 'commodo', 'ac.', 'Vestibulum', 'tincidunt,', 'mauris', 'non', 'euismod', 'hendrerit,', 'sem', 'libero', 'facilisis', 'sapien,', 'ac', 'finibus', 'dolor', 'odio', 'ut', 'odio.', 'Nulla', 'tempus', 'justo', 'in', 'mauris', 'vehicula', 'semper.', 'Nunc', 'pharetra', 'justo', 'in', 'erat', 'convallis,', 'eu', 'luctus', 'sapien', 'auctor.', 'Sed', 'sit', 'amet', 'condimentum', 'neque,', 'in', 'imperdiet', 'metus.', 'Nulla', 'vestibulum', 'tellus', 'ac', 'posuere', 'tristique.', 'Etiam', 'interdum', 'elementum', 'ante', 'id', 'aliquet.', 'Nulla', 'non', 'mi', 'sapien.', 'Sed', 'sed', 'enim', 'diam.', 'Nulla', 'eu', 'lacus', 'est.', 'Phasellus', 'eu', 'mi', 'metus.', 'In', 'hac', 'habitasse', 'platea', 'dictumst.', 'Sed', 'ut', 'ultricies', 'libero.'
]


org_text.scan(/\b[^\d\W]+\b/) do |word|
    unless exceptions.include? word
        word_list << word    
    end  
end

def replace_words(word_list, org_text, new_words)
    word_list.each do |word|
        puts 'word: ', word
        unless word.length <= 1
            org_text.sub! word, new_words[rand(new_words.length)]
        end
    end
end

replace_words(word_list, org_text, new_words)

/org_text.sub! 'blevet', 'test'/
puts org_text
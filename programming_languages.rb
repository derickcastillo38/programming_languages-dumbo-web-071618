#require 'pry'
def reformat_languages(languages)
  new_hash = {} 
  languages.each do |style_type, language_hash|
    lang_hash.each do |language, type_hash|
      type_hash.each do |type_symbol, type_string|
      unless new_hash.key?(language)
      new_hash[language] = {type: type_hash[type_symbol], style: [style_type]}
      else
        new_hash[lang] = {type: type_hash[type_symbol], style: style_arr}
        style_arr << style unless style_arr.include?(style)
      end
    end 
  end

  new_hash    
end

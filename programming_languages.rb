#require 'pry'
def reformat_languages(languages)
  new_hash = {} 
  style_arr = []
  languages.each do |style, lang_hash|
    lang_hash.each do |lang, type_hash|
      if new_hash[lang][:style]
        new_hash[lang][:style] << style unless style_arr.include?(style)
      else
        new_hash[lang] = {type: type_hash[:type], style: style_arr}
        style_arr << style unless style_arr.include?(style)
      end
    end 
  end

  new_hash    
end

# require modules here
require "yaml"
require 'pry'
def load_library(file)
  emoticons = YAML.load_file(file)
  new_hash = {}
  emoticons.each do |key, value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
end 
new_hash
end

def get_japanese_emoticon(file, emoticon)
  new_file = load_library(file)
  japanese_icon = ""
  
end

def get_english_meaning(file, emoticon)
  new_file = load_library(file)
  english_meaning = ""
  
  new_file.each do |meaning, values|
    sorry_message = "Sorry, that emoticon was not found"
    japanese_icon = values[:japanese]
    
    if japanese_icon == emoticon
     return meaning 
   end 
  end 
  sorry_message
end
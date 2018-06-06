require "yaml"
require "pry"

def load_library(path)
  emoticons = YAML.load_file(path)
  library = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  
  emoticons.each do |meaning, value_arr|
    library[:get_meaning][value_arr[1]] = meaning
    library[:get_emoticon][value_arr[0]] = value_arr[1]
  end
  
  library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
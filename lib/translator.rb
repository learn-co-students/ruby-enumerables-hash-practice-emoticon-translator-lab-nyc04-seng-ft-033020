# require modules here
require "yaml"

def load_library(yaml_path)
  # code goes here
  emojis = YAML.load_file(yaml_path)
  translator = {
    'get_meaning' => {},
    'get_emoticon' => {}
    
  }
  emojis.each do |k, v|
    translator['get_meaning'][v[1]] = k
    translator['get_emoticon'][v[0]] = v[1]
  end 
  
  translator
  
end

def get_japanese_emoticon(yaml_path, emoticon)
  # code goes here
  japanese_emoticon = load_library(yaml_path)['get_emoticon'][emoticon]
  if japanese_emoticon
    return japanese_emoticon
  else 
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(yaml_path, emoticon)
  english_meaning = load_library(yaml_path)['get_meaning'][emoticon]
  if english_meaning
    return english_meaning
  else 
    return "Sorry, that emoticon was not found"
  end
  
end


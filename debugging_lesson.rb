

#    # * To avoid bugs, design and plan in advance
#    #    * write in pseudo code
#    #    * start at high level, and expand until you’re satisfied with the 

# function parseStory(filename)
	


# 	let line be the next line in the file
# 		if line starts with ~
# 			if there is a 'c'

# 			otherwise

# 		otherwise    

#ADVENTURE DEBUGGING
# Classes and Objects
## Code Along
 
require 'pry' # Require pry to use binding.pry
 
story_hash = {
  "question" => "Welcome to the haunted hotel. What room would you like to go into?",
  "room 1" => "you're dead",
  "room 2" => { "question" => "You picked a good room. What would like to do?",
                "sleep" => "You're rested for the morning",
                "stay up all night" => "You might have anxiety issues"
}
}
 
 
class Adventure
 
  def initialize(story_hash)
    @story_hash = story_hash
  end
 
 
  def prompt(question, options)
    puts "#{question}"
    puts "#{options}"
    response = gets.chomp!
  end
 
  def prompt_n_chomp(question, options)
    res = prompt(question, options)
    until options.include?(res)
      puts "Sorry that was not a valid response"
      res = prompt(question,options)
    end
    res
  end
 
  def get_options(story_hash)
    options = story_hash.keys.select { |x| x != "question"}
  end
 
  def start
    full_story = ""
    story_hash = @story_hash
    question = @story_hash['question']
        full_story << "You began with: #{question}.\n"
    options = get_options(story_hash)
    until options.nil?
      res = prompt_n_chomp(question, options)
      
      if story_hash[res].is_a?(Hash)
        story_hash = story_hash[res]
        question = story_hash['question']
        full_story << "Then you got: #{question}.\n"
        options = get_options(story_hash)
      else
        full_story << "Then you chose: #{res}.\n"
        full_story << "Then you got: #{@story_hash[res]}.\n"
    	binding.pry  		# stops the program and allows you to make changes at the Pause
        puts story_hash[res]
        options = nil
      end
    end
 
    puts "END OF ADVENTURE"
    
    puts full_story
   
  end
end
 
 
adv = Adventure.new(story_hash)
adv.start()
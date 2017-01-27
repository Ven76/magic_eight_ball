#add answers


@answers = [ "Ask again later", "Like I'm gonna tell you", "Figure it out", "Most Definitely",
"Let me put it this way, nothing's going to work for you",
"You got it", "Sure, why not?", "Forget about it", "Maybe...?",
"All signs point to yes", "Think about it...nah, I'll just tell you: No", "They say there's no such thing as a dumb question, but...",
"Yea", 'No', "You're on the right track", "Not likely", "YES!", "NO!","MAYBE!!",
"Does Batman fly?", "Does Superman have ice breath?", "May it be", "I wasn't sure at first, but I think so",
"Did she sell sea shells by the sea shore?", "Reach Nirvana. I'll tell you then", "HA!"]

@answers2 = []

puts ''
puts "Check it out. 8 Ball.You gotta question? You ask the 8 ball! -Putty"

def main_menu
  puts ""
  puts "1) Ask a question"
  puts "2) Make your own answer"
  puts "3) Delete custom answers"
  puts "4) Print answers"
  puts "5) To get out"
  puts ">>"
  user_input = gets.chomp.to_i

  if user_input == 1
   eight_ball
  elsif user_input == 2
    maker
  elsif user_input == 3
    delete_answers
  elsif user_input == 4
    options
  elsif user_input == 5
    puts "Later"
     exit(0)
  else
    puts ''
    puts "You gotta do 1 - 5!"
  end
end

def eight_ball
  puts ''
  puts "What do you want to know?"
  puts "Type 'quit' to go back to main menu."
  puts ">>"
  question = gets.chomp
  if question == 'quit'
    main_menu
  end
    puts "#{[@answers, @answers2].flatten.uniq.sample}"
    puts ""
end

def maker
  puts ""
  puts "Write a response for 8 Ball"
  puts ">>"
  thing = gets.chomp
      @answers2 << thing
end

def delete_answers
  @answers2.clear
  puts ''
  puts "Custom Cleared"
  puts ''
end

def options
  [@answers, @answers2].flatten.uniq.shuffle.each_with_index do |op, i|
    puts "#{i + 1}> #{op}"
  end
end

while true do
  main_menu
end

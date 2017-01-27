

@answers = [ "Ask again later", "Like I'm gonna tell you", "Figure it out", "Most Definitely",
"Let me put it this way, nothing's going to work for you",
"", "Sure, why not?", "Forget about it", "Maybe...?",
"All signs point to yes", "Think about it...nah, I'll just tell you: No", "They say there's no such thing as a dumb question, but...",
"Yea", "No", "You're on the right track", "Not likely", "YES!", "NO!",]

@answers2 = []

def main_menu
  puts "Check it out. 8 Ball."
  puts "You gotta question?"
  puts "You ask the 8 ball!"

  puts "1) Ask a question"
  puts "2) To get out"
  puts ""
  user_input = gets.chomp.to_i

  if user_input == 1
   eight_ball
 elsif user_input == 2
   puts "Later"
    exit(0)
  else
    puts "You gotta do 1 or 2!"
    puts ""
  end
end

def eight_ball
  puts "What do you want to know?"
  puts "Type 'quit' to go back to main menu."
  puts ""
  question = gets.chomp
  if question == 'quit'
    main_menu
  end
    puts "#{@answers.sample}"
    puts "Another question? Insert yes or no"
    input = gets.chomp
    if input == "yes"
      puts ''
      eight_ball
    else
      puts ''
      main_menu
    end
end


while true do
  main_menu
end

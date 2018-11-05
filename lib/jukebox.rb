songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |value, index|
    puts "#{index+1}. #{value}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  selectedsong = gets.chomp
  songs.each_with_index do |value, index|
    if selectedsong.is_a?(Integer)
      if selectedsong-1==index
        puts "Playing #{value}"
      else
        puts "Invalid input, please try again"
      end
    else
      if value.include?(selectedsong)
        puts "Playing #{value}"
      else
        puts "Invalid input, please try again"
      end
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help()
  exitbool=false
  while exitbool==false
    puts "Please enter a command:"
    command=gets.chomp
    case command
    when "help"
      help()
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox()
      exitbool=true
    end
  end
end

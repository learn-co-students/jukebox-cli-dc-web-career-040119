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
  puts" I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  enter = gets.chomp
  songs.each_with_index do |a, i|
    if enter.to_i == (i+1) || enter == a
      puts "Playing #{a}"
      break
    else
      puts "Invalid input, please try again"
      break
    end
  end
end

def list(songs)
  songs.each_with_index do |a,i|
    puts("#{i+1}. #{a}")
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
 
    case input
    when "play"
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    when "exit"
      exit_jukebox
    else
      "Invalid Command"
    end
  
end
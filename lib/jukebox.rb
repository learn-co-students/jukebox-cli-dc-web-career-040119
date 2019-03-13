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


def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |item, index|
    puts song
  end
end


def play(songs)
puts "Please enter a song name or number:"
response = gets.chomp
  songs.each do |song_title|
    if response == song_title
      puts "Playing #{song_title}"
        return
    end
  end
  if response.to_i > 0 && response.to_i < songs.length + 1
    puts "Playing #{songs[response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song_title, index|
    puts "#{index + 1}. #{song_title}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = ""
  if input != exit
  puts  "Please enter song name or number."
  input = gets.chomp
  case input
  when "play"
    play(song)
  when "list"
    list(songs)
  when "help"
    help
  when "exit"
    exit_jukebox
  else
    puts "invalid input, please try again."
  end
end
end

    

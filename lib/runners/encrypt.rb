require"./lib/Enigma.rb"

@enigma = Enigma.new
@file = File.open("message.txt", "r")

encryption_hash = @enigma.encrypt(@file.read.chomp)

file_new = File.open("encrypted.txt", "w")
file_new.write(encryption_hash[:encryption])

puts "Created 'encrypted.txt' with the key #{encryption_hash[:key]} and date #{encryption_hash[:date]}"
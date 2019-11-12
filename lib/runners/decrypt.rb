require"./lib/Enigma.rb"

@enigma = Enigma.new
@file = File.open("encrypted.txt", "r")
# not sure how to gain access to ARGV, it keeps returning an empty array.
require "pry"; binding.pry
encryption_hash = @enigma.decrypt(@file.read.chomp)
file_new = File.open("decrypted.txt", "w")
file_new.write(encryption_hash[:encryption])

puts "Created 'decrypted.txt' with the key #{encryption_hash[:key]} and date #{encryption_hash[:date]}"
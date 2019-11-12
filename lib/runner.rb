require 'date'
require 'time'
require_relative "./Enigma.rb"

enigma = Enigma.new

enigma.encrypt("hello world", "02715", "040895")
enigma.decrypt("keder ohulw", "02715", "040895")

encrypted = enigma.encrypt("hello world", "02715")
enigma.decrypt(encrypted[:encryption], "02715")

enigma.encrypt("hello world")

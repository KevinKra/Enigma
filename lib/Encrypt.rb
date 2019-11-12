require_relative "./Generator.rb"

class Encrypt < Generator
  ALPHABET = ("a".."z").to_a + [" "]

  def handle_encryption(encrypt = true, message, key, date)
    shift = gen_shift(key, date)
    # [17, 32, 40, 46]
      message.downcase.split("").map do |letter|
        # ["h", "e", "l", "l", "o", " ", "A", "a"]
        if encrypt
          letter_code = (letter.ord - 97 + shift[0]) % 27
          letter_code = (26 + shift[0]) % 27 if letter == " "
        else
          letter_code = (letter.ord - 97 - shift[0]) % 27
          letter_code = (26 - shift[0]) % 27 if letter == " "
        end
        shift.rotate(2)
        ALPHABET[letter_code]
      end.join
  end
end
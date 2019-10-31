module Helpers
  def key_gen
    gen_array = []
    while (gen_array.length != 5)
      # generate a random number between 0,9
      # push number into array
      gen_array << 1
    end
    output = gen_array.join.to_s
    print output
    # convert array of numbers to string
    # return string
  end
end
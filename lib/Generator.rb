class Generator
  def self.gen_key(key)
    key.chars.each_cons(2).reduce([]) do |accum, block| 
      accum << block
    end.map { |block| block.join.to_i }
  end

  def self.gen_date_offset(date)
    date_squared = (date.to_i) ** 2
    date_squared.to_s[-4..-1].chars.map { |elem| elem.to_i }
  end

  def self.gen_shift(key, date)
    # generate a shift from the combined array output, convert to integer
    combine_key_date(key, date).reduce([]) do |accum, array|
     accum << array.sum
    end.join.to_i
  end

  def self.combine_key_date(key, date)
    # combine the generated key and generated offset arrays
    key = gen_key(key)
    offset = gen_date_offset(date)
    key.zip(offset)
  end
end
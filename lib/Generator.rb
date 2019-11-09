class Generator
  def self.gen_key(key)
    key.chars.each_cons(2).reduce([]) do |accum, block| 
      accum << block
    end.map { |block| block.join.to_i }
  end

  def self.gen_offset(date)
    # generate offset here
  end
end
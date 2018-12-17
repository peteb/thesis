create_pair = lambda do |a, b|
  lambda do |f|
    f.call(a, b)
  end
end

first = lambda do |c|
  c.call(lambda { |a, b| a })
end

second = lambda do |c|
  c.call(lambda { |a, b| b })
end

5.times do
  started_at = Time.now
  5_000_000.times do |i|
		y = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 100;
		y = y * 2;
		y = y / 4;
		y = y * 2;
		y = y - 1 - 2 - 3 - 4 - 5 - 6 - 7 - 8 - 9 - 10;
  end
  ended_at = Time.now
  puts ((ended_at - started_at) * 1000).to_i
end

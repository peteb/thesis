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
  500_000.times do |i|
    a = create_pair.call(i, i + 1)
    first.call(a)
    second.call(a)
  end
  ended_at = Time.now
  puts ((ended_at - started_at) * 1000).to_i
end

def fib(n)
  a = 0
  b = 1
  x = 0
  i = 0

  while i < n
    x = b
    b = a + b
    a = x
    i = i + 1
  end

  x
end


5.times do
  started_at = Time.now
  1_000_000.times do
    fib(50)
  end
  ended_at = Time.now
  puts ((ended_at - started_at) * 1000).to_i
end

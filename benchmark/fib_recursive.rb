def fib(n)
  if (n > 1)
    fib(n - 1) + fib(n - 2);
  else
    n
  end
end


5.times do
  started_at = Time.now
  fib(35)
  ended_at = Time.now
  puts ((ended_at - started_at) * 1000).to_i
end

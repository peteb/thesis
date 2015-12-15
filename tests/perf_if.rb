
def main
	x = 0
	y = 0

	while (x < 20000000)
		foo = lambda {x % 2}

		y = y + foo.call()
		x = x + 1
	end

	print x.to_s;
	print y.to_s;
end

main

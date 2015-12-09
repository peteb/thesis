
def main
	x = 0

	while (x < 10000000)
		foo = lambda {|x| x + 1}
		x = foo.call(x)
	end

	print x.to_s;
end

main

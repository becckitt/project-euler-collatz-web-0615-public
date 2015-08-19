def even_next(n)
	n/2
end

def odd_next(n)
	3*n + 1
end

def next_value(n)
	if n % 2 == 0
		even_next(n)
	else
		odd_next(n)
	end
end

def collatz(n)
	sequence = [n]
	until n == 1
		next_val = next_value(n)
		sequence << next_val
		n = next_val
	end
	sequence
end

def longest_collatz
	range = {}
	(1000000..1).each do |num|
		range[collatz(n).length] = collatz(n)
	end
	range #.sort.last
end
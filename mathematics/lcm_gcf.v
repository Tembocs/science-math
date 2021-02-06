module mathematics


// get_max return the greatested number in a given array.
fn get_maximum(number []int) int {
	mut maximum := 0

	for item in number {
		if item > maximum {
			maximum = item
		}
	}

	return maximum
}

// is_divisible_by_all checks if a number is divisible by all number in a array.
fn is_divisible_by_all(numbers []int, divisor int) bool {
	for item in numbers {
		if item % divisor != 0 {
			return false
		}
	}

	return true
}

// get_prime_factors(number)
fn get_prime_factors(number int) []int {
	mut prime_factors := []int{}

	for item in 1..(number+1) {
		if is_prime(item) {
			prime_factors << item
		}
	}

	return prime_factors
}

// Mathematically the Highest Common Factor (HCF) or Greatest Common Factor (GCF)
// or the Greatest Common Divisior (GCD) is the largest number in a given set of
// of numbers that can divide a set of numbers without a remainder.
// gcf find the Greatest Common Factor, GCF, of a given set of numbers.
pub fn gcf(numbers []int) int {

	// max := get_maximum(numbers)
	// println('Max: $max')
	mut common_prime_factors := []int{}
	mut prime_factors := [][]int{}

	for number in numbers {
		prime_factors << get_prime_factors(number)
	}

	for factor in prime_factors { println(factor)}

	for list in prime_factors {
		for item in list {
			if item in list {
				common_prime_factors << item
			}
		}
	}

	return get_maximum(common_prime_factors)
}


// lcm returns the lowest common mutliple (LCM) of a given set of number.
// Mathmatically the LCM is the smallest number which can be divided by all the
// the numbers in a given set without a remainder.
pub fn lcm(numbers []int) int {
	mut max := get_maximum(numbers)
	println('max: $max')

	for {
		for number in numbers {
			if max % number != 0 {
				max++
				continue
			}
		}
		return max
	}

	return max
}
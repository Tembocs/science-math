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

// Divisible by all
// is_divisible_by_all checks if a number is divisible by all number in a array.
fn is_divisible_by_all(numbers []int, divisor int) bool {
	for item in numbers {
		if item % divisor != 0 {
			return false
		}
	}

	return true
}


// TODO This function does not do what is suppose to do.
// gcf find the Greatest Common Factor, GCF, of a given set of numbers.
pub fn gcf(numbers []int) int {
	max := get_maximum(numbers)
	mut common_prime_factors := []int{}

	for item in numbers {
		if is_divisible_by_all(numbers, item) && is_prime(item) {
			common_prime_factors << item
		}
	}

	mut results := 1
	mut index := 0

	for index < common_prime_factors {
		results *= common_prime_factors[0]
		index += 1
	}

	return results
}


pub fn _gcf(number_set []int) int {
	mut sorted := number_set.clone()
	sorted.sort()
	max := get_maximum(sorted)
	mut set := []int{}

	for item in 1..(max + 1) {
		for number in sorted {
			if number % item != 0 {
				continue
			} else {
				set << item
			}
		}
	}

	the_gcf := get_maximum(set)
	return the_gcf
}
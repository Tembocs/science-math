module mathematics

import math

// get_factors return the factors of a given number as an array.
pub fn factors(number int) []int {
	mut factors := []int{}

	for item in 0..(number + 1) {
		if math.fmod(number, item) == 0 {
			factors << item
		}
	}

	return factors
}
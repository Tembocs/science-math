module mathematics

import math

// get_factors return the factors of a given number as an array.
fn get_factors(number int) []int {
	mut factors := []int{}

	for item in 0..(number + 1) {
		if math.fmod(number, item) == 0 {
			factors << item
		}
	}

	return factors
}

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

// TODO This function does not do what is suppose to do.
// gcf find the Greatest Common Factor, GCF, of a given set of numbers.
pub fn gcf(number_set []int) int {
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
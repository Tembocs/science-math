module mathematics

// is_prime return true if a number is prime.
// A prime number is the one which can't be divided by any other except itself.
pub fn is_prime(number int) bool {
	// Number 1 is not prime.
	if number == 1 { return false }

	// To calculate a prime number we take all numbers belows it and divide by it.
	for item in 2..number {
		if number % item == 0 {
			return false
		}
	}

	return true
}

// is_even return tru if a number is even.
// An even number is the one that can be divided by exactly 2.
pub fn is_even(number int) bool {
	if number % 2 == 0 {
		return true
	} else {
		return false
	}
}

// is_odd return true if a number is odd.
// An odd number is the one that can't be divided by 2.
pub fn is_odd(number int) bool {
	if number % 2 == 0 {
		return false
	} else {
		return true
	}
}
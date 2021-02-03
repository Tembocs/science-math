module mathematics

// is_prime return true if a number is prime.
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
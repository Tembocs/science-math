module mathematics

pub struct Fraction {
pub:
	// The top number
	numerator int

	// The bottom number
	denominator int
}

pub fn (f Fraction) decimal() f64 {
	return f.numerator / f.denominator
}
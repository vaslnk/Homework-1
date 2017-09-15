pragma solidity ^0.4.16;


contract Fibonacci {
	function calculate(uint position) returns (uint result) {
		uint x = 0;
		uint y = 1;
		if (position == 0)
			return x;
		for (uint i = 2; i <= position; i++) {
			uint z = x + y;
			x = y;
			y = z;
		}
		return y;
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function () {}
}

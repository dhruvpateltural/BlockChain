// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CompoundInterestCalculator {

    function calculateCompoundInterest(
        uint256 _principal,
        uint256 _rate,
        uint256 _time,
        uint256 _n
    ) public pure returns (uint256) {
        require(_principal > 0, "Principal must be greater than 0");
        require(_rate > 0, "Rate must be greater than 0");
        require(_time > 0, "Time must be greater than 0");
        require(_n > 0, "Number of times interest applied must be greater than 0");

        uint256 base = (1e18 + (_rate * 1e18 / (100 * _n))); 
        uint256 exponent = _n * _time;

        uint256 amount = (_principal * power(base, exponent)) / 1e18;
        uint256 compoundInterest = amount - _principal;

        return compoundInterest;
    }

    function power(uint256 base, uint256 exponent) public pure returns (uint256) {
        uint256 result = 1e18; // Start with 1 (in 18 decimal precision)

        while (exponent > 0) {
            if (exponent % 2 == 1) {
                result = (result * base) / 1e18; // Multiply and maintain precision
            }
            base = (base * base) / 1e18; // Square the base and maintain precision
            exponent /= 2; // Divide exponent by 2
        }

        return result;
    }
}
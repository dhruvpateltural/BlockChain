//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract PrimeNumberCheck{
    function isPrime(uint256 _number) public pure returns (bool) {
        if (_number <= 1) {
            return false;
        }
        for (uint256 i = 2; i * i <= _number; i++) {
            if (_number % i == 0) {
                return false;
            }
        }
        return true;
    }

     
}
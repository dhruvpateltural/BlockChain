//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract Calculator{
    function add(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a + _b;
    }

   
    function subtract(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a - _b;
    }

   
    function multiply(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a * _b;
    }

   
    function divide(uint256 _a, uint256 _b) public pure returns (uint256) {
        require(_b != 0, "Division by zero is not allowed");
        return _a / _b;
    }

   
    function modulus(uint256 _a, uint256 _b) public pure returns (uint256) {
        require(_b != 0, "Modulus by zero is not allowed");
        return _a % _b;
    }

   
    function exponentiate(uint256 _a, uint256 _b) public pure returns (uint256) {
        uint256 result = 1;
        for (uint256 i = 0; i < _b; i++) {
            result *= _a;
        }
        return result;
    }
}
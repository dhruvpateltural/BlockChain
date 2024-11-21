//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract Palindrome{
    function isPalindrome(uint256 _number) public pure returns (bool) {
        uint256 reversed = 0;
        uint256 original = _number;

        while (_number != 0) {
            uint256 remainder = _number % 10;
            reversed = reversed * 10 + remainder;
            _number /= 10;
        }
        return original == reversed;
    }

   function checkPalindrome(uint256 _number) public pure returns (string memory) {
        if (isPalindrome(_number)) {
            return ("The number is a palindrome.");
        } else {
            return "The number is not a palindrome.";
        }
    }
}
// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract Factorial{
    function factorial (uint256 _number) public pure returns (uint256){
        if (_number == 0){
            return 1;
        }
        return (_number * factorial (_number - 1));
    }
}
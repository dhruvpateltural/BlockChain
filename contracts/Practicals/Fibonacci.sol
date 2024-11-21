//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract Fibonacci {
    function fibonacci(uint n) public pure returns (uint){
        if (n == 0){
            return 0;
        }else if (n == 1){
            return 1;
        }else{
            return fibonacci(n -1) +fibonacci(n -2);
        }
    }
}
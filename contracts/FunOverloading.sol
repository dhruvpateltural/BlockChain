//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;
contract FunOverloading{
    function getSum(uint a, uint b) public pure returns(uint){
        return (a+b);
    }
    function getSum(uint a, uint b, uint c) public pure returns(uint){
        return (a+b+c);
    }

    function callOverloading() public pure returns(uint sum1, uint sum2){
        sum1 = getSum(10, 15);
        sum2 = getSum(10, 15, 20);
    }
}
//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;

contract MathFunction{
    function callMod() public pure returns (uint){
        return addmod(4,6,1);
    }

    function callMulMod() public pure returns(uint){
        return mulmod(4, 6, 1);
    }
}
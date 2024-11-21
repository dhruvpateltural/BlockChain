//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;

contract EventHandling{

    uint256 public data = 0;

    event Increment(address owner);
    
    function getValue(uint a, uint b) public returns(uint256){
        emit Increment(msg.sender);
        data  = a+b;
        return  data;
    }
}
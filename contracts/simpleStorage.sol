//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;

contract SimpleStorage{
    uint storedData; //stored Data

    function set(uint x) public{
        storedData = x;
    }

    function get() public view returns(uint){
        return storedData;
    }
}
//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract GetterSetter{
    uint256 private  number;

    constructor(uint256 _number){
        number =_number;
    }

    function setValue(uint256 _number) public {
        number = _number;
    }

    function getValue() public view returns (uint256 ){
        return number;
    }

  
}
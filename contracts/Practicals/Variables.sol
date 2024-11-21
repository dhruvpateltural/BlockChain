//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract Variables{

    //number state Variable
    uint256 number;
    

    function setNumber(uint256 _number) public {
        //tempNumber localVariable
        uint256 tempNumber = _number;
       number = tempNumber;
    }

    function getAddress() public view returns (address){
       return msg.sender;
    }

}
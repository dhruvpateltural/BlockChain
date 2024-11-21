
// SPDX-License-Identifier: MIT
pragma solidity  >=0.5.0<0.8.27;
//vairables
contract VariableTypes{
    uint storedData;
    constructor(){
        storedData =10;
    }
    function getResult() public view returns (uint, uint){
        uint a =10;
        uint b=20;
        uint result = a+b;
        return(result,storedData);
    }

    function getDetails() public payable returns (address, uint, uint256, uint256){
        return (msg.sender, msg.value, gasleft(), tx.gasprice);
    }
}
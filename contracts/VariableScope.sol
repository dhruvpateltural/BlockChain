//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;

contract VariableScope{
    uint public publicNumber = 10;
    uint internal internalNumber = 20;
    uint private privateNumber = 30;

    function accessVariable() public view returns(uint, uint, uint){
        return (publicNumber,internalNumber,privateNumber);
    }
}
contract Derived is VariableScope{

    function accessInternalFromDerived() public view returns (uint, uint ){
        return (internalNumber,publicNumber);
    }
}
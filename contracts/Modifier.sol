//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;

contract Owner {
    address owner;
    uint price;

    constructor(){
        owner = msg.sender;
    }
    //if function becomes true then and then only it correct then it executes 
    modifier onlyOwner{
        require(msg.sender == owner,"Only owner is allowed to modify the price");
        _;
    }

    function change_price(uint _price) public onlyOwner{
        price = _price;
    }

    function viewPrice() public  view returns (uint){
        return price;
    }
}
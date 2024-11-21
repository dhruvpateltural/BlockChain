// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundContract {
    address public owner;
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can withdraw funds");
        _;
    }

    function deposit() external payable {
        require(msg.value > 0, "Must send some ether to deposit");
    }

    function withdraw(uint256 amount) external onlyOwner {
        require(amount <= address(this).balance, "Insufficient balance in contract");
        payable(owner).transfer(amount);
    }
    
    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
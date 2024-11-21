// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;
contract SimpleBank { 
    // State variable to store the balance 
    uint256 private balance; 
    // Constructor to ini alize balance 
    constructor public() { 
        balance = 0; 
    } 
    // Func on to add (deposit) amount to the balance 
    function addAmount(uint256 amount) public { 
        balance += amount; 
    } 
    // Func on to withdraw amount from the balance 
    function withdrawAmount(uint256 amount) public { 
        require(amount <= balance, "Insufficient balance"); 
        balance -= amount; 
    } 
    // Func on to check the remaining balance 
    function checkBalance() public view returns (uint256) { 
        return balance; 
    } 
} 
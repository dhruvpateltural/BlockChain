//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;

contract HelloWord {

    string message = "Hello World";
    function get()public view returns (string memory) {
        return message;
    }
}
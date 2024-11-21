//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;

contract Revert{
    function checkOverFlow(uint _num1, uint _num2) public pure returns (string memory, uint  ) {
        uint sum = _num1+_num2;
        if(sum < 0|| sum >256){
            revert("Overflow");
        }
        else {
            return("No Overflow", sum);
        }
    }
}
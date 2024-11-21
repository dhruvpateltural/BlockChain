//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract AssertRevert {
    function checkEven(uint256 _number) public pure {
        assert(_number%2==0);
        if (_number % 2 == 0) {
            revert("Number is Even");
        }
    }
}
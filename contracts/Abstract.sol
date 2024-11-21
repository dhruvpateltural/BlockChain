//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

abstract contract Calculator {
    function getResult() public virtual returns (uint256);
    function getMessage() public virtual pure returns(string memory){
        return "Calculator is called";
    }
}

contract Test is Calculator {
    function getResult() public pure override returns (uint256) {
        uint256 a = 10;
        uint256 b = 20;
        uint256 result = a + b;
         return result;
    }
    function getMessage() public override pure returns(string memory){
        return  "Test is called";
    }
}

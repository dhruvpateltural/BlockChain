//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

interface ICalculator {
    function getResult() external view returns (uint256);
}

contract Test is ICalculator {
    constructor() {}

    function getResult() external pure override returns (uint256) {
        uint256 a = 10;
        uint256 b = 20;
        uint256 result = a + b;
        return result;
    }
}

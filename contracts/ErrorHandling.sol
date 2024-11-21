//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract ErrorHandling {
    uint256 public count;

    function increment() public returns (uint256) {
        count += 1;
        return count;
    }

    function decrement() public returns (uint256) {
        require(count > 0, "Count should be greater than 0");
        count -= 1;
        return count;
    }

    function checkCountInVariate() public view {
        assert(count >= 1);
    }
}

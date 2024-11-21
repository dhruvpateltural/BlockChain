//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;

contract Enumerations{
    //created enumeration
    enum Levels{
        High,
        Medium,
        Low
    }
    
    function getEnum() public pure returns(string memory) {
        Levels level = Levels.High;
        return getString(level);
    }

    function getString(Levels level) internal  pure returns (string memory){
        if (level == Levels.High) {
            return "High";
        } else if (level == Levels.Medium) {
            return "Medium";
        } else {
            return "Low";
        }
    }
}
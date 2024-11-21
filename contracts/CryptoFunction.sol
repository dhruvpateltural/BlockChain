//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;

contract CryptoFunction{
    function callKeccak56() public pure returns (bytes32 reesult){
        return keccak256(
            "ABC"
        );
    }

    function callSHA256() public pure returns (bytes32 result){
        return sha256(
            "ABC"
        );
    }

    function callRPIEMD() public pure returns (bytes32 result){
        return ripemd160("ABC");
    }
}
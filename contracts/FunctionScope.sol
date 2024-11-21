//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract FunctionScope {
    function publicFuntion() public pure returns (string memory) {
        return "I'm a Public function";
    }

    function privateFunction() private pure returns (string memory) {
        return "I'm a Private function";
    }

    function internalFunction() internal pure returns (string memory) {
        return "I'm a Internal function";
    }

    function externalFunction() external pure returns (string memory) {
        return "I'm a External function";
    }

    function callFunctions()
        public
        pure
        returns (
            string memory,
            string memory,
            string memory
        )
    {
        string memory publicMsg = publicFuntion();
        string memory privateMsg = privateFunction();
        string memory internalMsg = internalFunction();

        return (publicMsg, privateMsg, internalMsg);
    }
}

contract ExternalCaller {
    function callExternalFunction(address _contractAddress)
        public
        pure
        returns (string memory)
    {
        FunctionScope demo = FunctionScope(_contractAddress);
        return demo.externalFunction();
    }
}

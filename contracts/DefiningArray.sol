
// SPDX-License-Identifier: MIT
pragma solidity  >=0.5.0<0.8.27;

contract DefiningArray{
    uint[6] data1;
    function array() pure public returns (int[5] memory data, uint[6] memory data1){
            int[5] memory data =[int(50),-63,77,-28,90];
            data1 =[uint(10),20,30,40,50,60];
            return (data,data1);
    }
}
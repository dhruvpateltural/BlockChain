//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;

contract DynamicArray{
    uint[] data =[10,20,30,40,50];
    int[] data1;
    function dynamic_array() public returns(uint[] memory, int[] memory){
        data1= [int(-60), 70,-80,90,-100,-120,140];
        return(data,data1);
    } 
}

// SPDX-License-Identifier: MIT
pragma solidity  >=0.5.0<0.8.27;

contract ViewPureFunDemo{

    uint num1=25;
    uint num2 = 75;

    function multiplication() public returns (uint){
        num1=5;
        num2=10;
        return (num1* num2);
    }

    function addition() public view returns (uint sum){
   
        sum=num1+num2;
    }

    function substraction ()public pure returns(uint sub){
        uint num1 = 50;
        uint num2 =20;
        sub = num1-num2;
        return  sub;
    }

    function add() public pure returns (uint){
        uint num1 = 10;
        uint num2 =20;
        uint sum = num1+num2;
        return square(sum);

    }

    function square(uint num) public pure returns (uint ){
        num= num*num;
        return num;
    }

     



}
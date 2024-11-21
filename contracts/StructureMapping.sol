// SPDX-License-Identifier: MIT
pragma solidity  >=0.5.0<0.8.27;

contract StructureMapping{
   struct student{
    uint8 rollno;
    string name;
    string subject;
    uint8 marks;
   }
    student s1;
   //creating mapping 
   mapping(address => student) public result;
    

   //function adding values to the mapping 
   function addDetails(address addr, uint8 rn, string memory nm, string memory sub, uint8 m) public{
    s1.rollno =rn;
    s1.name = nm;
    s1.subject = sub;
    s1.marks = m;

    result[addr] = s1;
   }

   //function to retrive values from the mapping
    function getDetails(address addr) public view returns (student memory){
        return result[addr];
    }

   function remove(address addr) public {
        //resets the value to the default value
        delete  result[addr];
   }



}
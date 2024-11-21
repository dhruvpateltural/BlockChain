//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;

contract StudentStruct{

    struct Student{
        uint id;
        string name;
        string add;
    }

    Student s1;
    function setStudent() public {
        s1 =  Student(1,"Devyani","Ratnagiri");
    }

    function enterStudent(uint id,string memory name,string memory add) public {
        s1 = Student(id,name,add);
    }

    function getStudentDetails() public view returns (uint,string memory, string memory){
        return (s1.id,s1.name,s1.add);
    }
}
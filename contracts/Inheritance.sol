//SPDX-License-Identifier: MIT

pragma solidity  >=0.5.0<0.8.27;

//base contract
contract Employee{
    string public name;
    uint public age;
    uint public salary;

    constructor(string memory _name,uint  _age,uint  _salary) {
        name = _name;
        age = _age;
        salary = _salary;
    }

    function updateSalary(uint _newSalary) public {
        salary = _newSalary;
    }

    function getEmployeeDetails() public view returns (string memory, uint, uint){
        return (name,age,salary);
    }
}

contract Derived is Employee {

    string public department;

    constructor (string memory _name,uint _age,uint _salary,string memory _department) 
        Employee(_name,_age,_salary){
        department = _department;
    }

    function getManagerDetails()  public view returns (string memory,uint,uint,string memory) {
        return (name,age,salary,department);
    }




}

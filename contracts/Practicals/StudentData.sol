// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract StudentDatabase {
    // Define a struct to represent a student
    struct Student {
        uint256 rollNo;
        string name;
        string class_;
        string department;
        string courseEnrolled;
    }

    // Create a mapping to store students by roll number
    mapping(uint256 => Student) public students;

    // Function to add a student
    function addStudent(uint256 _rollNo, string memory _name, string memory _class, string memory _department, string memory _courseEnrolled) public {
        // Check if the student already exists
        require(students[_rollNo].rollNo == 0, "Student already exists");

        // Create a new student and add it to the mapping
        students[_rollNo] = Student(_rollNo, _name, _class, _department, _courseEnrolled);
    }

    // Function to search for a student by roll number
    function searchStudent(uint256 _rollNo) public view returns (string memory, string memory, string memory, string memory) {
        // Check if the student exists
        require(students[_rollNo].rollNo != 0, "Student not found");

        // Return the student's information
        return (students[_rollNo].name, students[_rollNo].class_, students[_rollNo].department, students[_rollNo].courseEnrolled);
    }

    // Function to display all students
    function displayStudents() public view returns (uint256[] memory, string[] memory, string[] memory, string[] memory, string[] memory) {
        // Create arrays to store the student information
        uint256[] memory rollNos = new uint256[](5);
        string[] memory names = new string[](5);
        string[] memory classes = new string[](5);
        string[] memory departments = new string[](5);
        string[] memory coursesEnrolled = new string[](5);

        // Iterate over the students and add their information to the arrays
        uint256 count = 0;
        for (uint256 i = 1; i <= 5; i++) {
            if (students[i].rollNo != 0) {
                rollNos[count] = students[i].rollNo;
                names[count] = students[i].name;
                classes[count] = students[i].class_;
                departments[count] = students[i].department;
                coursesEnrolled[count] = students[i].courseEnrolled;
                count++;
            }
        }

        // Return the student information
        return (rollNos, names, classes, departments, coursesEnrolled);
    }
}
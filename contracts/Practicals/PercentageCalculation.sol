//SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.8.27;

contract StudentMarks {
    // Define a struct to store student information
    struct Student {
        string name;
        uint256 rollNumber;
        uint256[] marks;
    }

    // Mapping to store student data
    mapping(uint256 => Student) public students;

    // Function to add a new student
    function addStudent(uint256 _rollNumber, string memory _name, uint256[] memory _marks) public {
        // Check if the student already exists
        require(students[_rollNumber].rollNumber == 0, "Student already exists");

        // Validate the marks array length
        require(_marks.length == 6, "Invalid number of subjects");

        // Add the student to the mapping
        students[_rollNumber] = Student(_name, _rollNumber, _marks);
    }

    // Function to calculate the percentage of marks for a student
    function calculatePercentage(uint256 _rollNumber) public view returns (uint256) {
        // Get the student's marks
        uint256[] memory marks = students[_rollNumber].marks;

        // Calculate the total marks
        uint256 totalMarks = 0;
        for (uint256 i = 0; i < marks.length; i++) {
            totalMarks += marks[i];
        }

        // Calculate the percentage
        uint256 percentage = (totalMarks / marks.length);

        return percentage;
    }

    // Function to get the student's marks
    function getStudentMarks(uint256 _rollNumber) public view returns (uint256[] memory) {
        return students[_rollNumber].marks;
    }
}